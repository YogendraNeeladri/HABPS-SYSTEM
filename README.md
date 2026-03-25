# HABPS-SYSTEM
A Salesforce-based hospital management system that automates appointments, billing, and patient support using Flows and Apex, improving efficiency and patient experience.

# 🏥 Hospital Appointment, Billing & Patient Support System (HAPSMS)

A Salesforce-based hospital management system designed to automate appointment scheduling, billing, and patient support workflows to improve operational efficiency and patient experience.

---

## 🚀 Project Overview

This project solves common hospital management challenges such as:
- Double booking of doctors
- Long patient waiting times
- Billing errors
- Poor complaint handling

The system centralizes all hospital operations using Salesforce automation and Apex.

---

## 🎯 Features

- 📅 Appointment Booking System  
- ❌ Double Booking Prevention  
- 👨‍⚕️ Auto Doctor Assignment  
- 🔔 Appointment Reminders  
- 💰 Automated Billing Generation  
- 📊 Payment Status Tracking  
- 📞 Complaint Management & Escalation  
- 🧾 Medical Request Handling  
- 📊 Reports & Management Dashboard  

---

## 🛠️ Tech Stack

- **Platform:** Salesforce CRM  
- **Programming:** Apex  
- **Automation:** Salesforce Flow  
- **Database:** Salesforce Cloud Database  
- **Analytics:** Reports & Dashboards  
- **Tools:** VS Code, Salesforce CLI, GitHub  

---

## 🧱 Data Model

### 🔹 Standard Objects
- Account → Hospital / Department  
- Contact → Patient  
- Case → Patient Complaints  

### 🔹 Custom Objects
- Doctor__c  
- Appointment__c  
- Billing_Record__c  
- Medical_Request__c  

---

## 🔗 Relationships

- Contact → Appointment (Master-Detail)  
- Doctor → Appointment (Lookup)  
- Appointment → Billing Record (1:1)  
- Contact → Case (Lookup)  

---

## 🔄 Automation (Flows)

- Prevent_Double_Booking_Flow  
- Auto_Assign_Doctor_Flow  
- Appointment_Reminder_Flow  
- Auto_Create_Billing_Record_Flow  
- Complaint_Escalation_Flow  

---

## ⚙️ Apex Implementation

- **Trigger:** AppointmentTrigger  
- **Class:** AppointmentService  
- **Test Class:** AppointmentTriggerTest  

### 🔹 Functionality
- Prevents doctor overload  
- Validates maximum appointments per day  
- Ensures balanced workload  

---

## 🔐 Security

- Organization-Wide Defaults → Private  
- Permission Sets:
  - Doctor  
  - Billing  
  - Admin  
- Field-Level Security for sensitive data  

---

## 📊 Reports

- Appointments by Doctor  
- Revenue by Department  
- Open Complaints  

---

## 📈 Dashboard

- Hospital Management Dashboard  
- Real-time insights into:
  - Doctor workload  
  - Department revenue  
  - Pending complaints  

---


---

## 🧠 Development Workflow

1. Requirement Analysis  
2. Data Modeling  
3. Object Creation  
4. Relationship Setup  
5. Flow Automation  
6. Apex Implementation  
7. Security Configuration  
8. Reports & Dashboard  
9. Testing  

---

## 🔮 Future Enhancements

The following features can be implemented in future to enhance the system:

- 📱 Mobile App Integration  
  Develop a mobile application for patients and doctors for easy access and real-time updates.

- 🤖 AI-Based Doctor Recommendation  
  Use AI to recommend doctors based on patient history, symptoms, and availability.

- 💳 Online Payment Integration  
  Integrate payment gateways like UPI, cards, and net banking for seamless billing.

- 📡 Real-Time Notifications  
  Implement SMS/WhatsApp notifications for appointment reminders and updates.

- 📊 Advanced Analytics  
  Use AI dashboards and predictive analytics for hospital performance insights.

- 🧾 Electronic Medical Records (EMR)  
  Store complete patient medical history for better diagnosis and treatment.

- 🌐 Multi-Hospital Support  
  Extend the system to support multiple hospital branches with centralized management.

- 🔐 Enhanced Security & Compliance  
  Implement healthcare standards like HIPAA for better data security.

- 🧠 Chatbot Integration  
  Add AI chatbot for patient queries, appointment booking, and support.

- 🔄 Integration with External Systems  
  Connect with lab systems, pharmacy systems, and insurance providers.

---

## 🏢 Company Context

Developed as part of **Salesforce Developer role preparation for HCLTech**, focusing on real-world enterprise healthcare solutions.

---

## 📌 Conclusion

This project demonstrates how Salesforce can be used to build scalable, secure, and automated healthcare systems that improve efficiency and patient satisfaction.

---

## 👨‍💻 Author

**Neeladri Yogendra (Yogi)**  
Salesforce Developer | Full Stack Developer  

---


