trigger AppointmentOverloadTrigger on Appointment__c (before insert) {

  
    Set<Id> doctorIds = new Set<Id>();
    Set<Date> apptDates = new Set<Date>();

    for (Appointment__c appt : Trigger.new) {
        if (appt.Doctor__c != null && appt.Appointment_Date__c != null) {
            doctorIds.add(appt.Doctor__c);
            apptDates.add(appt.Appointment_Date__c);
        }
    }

   
    Map<Id, Doctor__c> doctorMap = new Map<Id, Doctor__c>(
        [SELECT Id, Max_Appointments_Per_Day__c
         FROM Doctor__c
         WHERE Id IN :doctorIds]
    );

   
    Map<String, Integer> apptCountMap = new Map<String, Integer>();

    for (AggregateResult ar : [
        SELECT Doctor__c docId, Appointment_Date__c apptDate, COUNT(Id) total
        FROM Appointment__c
        WHERE Doctor__c IN :doctorIds
        AND Appointment_Date__c IN :apptDates
        GROUP BY Doctor__c, Appointment_Date__c
    ]) {
        String key = ar.get('docId') + '-' + ar.get('apptDate');
        apptCountMap.put(key, (Integer) ar.get('total'));
    }

   
    for (Appointment__c appt : Trigger.new) {

        if (appt.Doctor__c == null || appt.Appointment_Date__c == null) {
            continue;
        }

        String key = appt.Doctor__c + '-' + appt.Appointment_Date__c;

        Integer existingCount = apptCountMap.containsKey(key)
            ? apptCountMap.get(key)
            : 0;

        Doctor__c doc = doctorMap.get(appt.Doctor__c);

        if (doc != null && doc.Max_Appointments_Per_Day__c != null) {

            if (existingCount >= doc.Max_Appointments_Per_Day__c) {
                appt.addError('Doctor overloaded for the selected day.');
            }
        }
    }
}
