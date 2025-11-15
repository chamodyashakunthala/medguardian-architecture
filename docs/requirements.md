 Medicine Reminder & Emergency Assist System – Requirements Document

 1. Introduction
The Medicine Reminder & Emergency Assist System (MedGuardian) is a digital solution designed to help individuals manage their medication schedules effectively while providing a quick-response mechanism during health emergencies. This system especially benefits elderly individuals, busy professionals, and patients with chronic conditions who need structured medication reminders.

 2. Purpose of the System
The system ensures:
- Users never forget their scheduled medicines.
- Family members/caregivers receive alerts when medications are missed.
- Quick emergency communication with a registered family member or hospital.

This project focuses on the **software architecture**, not implementation.

 3. Stakeholders
- Primary User – Individual taking the medicine.
- Caregiver/Family Member – Receives alerts or emergencies.
- System Administrator – Manages user configurations.
- Healthcare Consultant (Optional) – Provides guidance on medication plans.

 4. Functional Requirements

 4.1 User Management
- Register a new user with details (name, age, conditions).
- Add emergency contact information.
- User login/authentication.

 4.2 Medicine Scheduling
- Add medicine name, dosage, frequency.
- Set notifications/reminders (daily/weekly/interval-based).
- Edit or delete medicine schedules.
- View daily/weekly medicine schedule.

 4.3 Reminder Notifications
- Send reminder notifications (push/sms/email).
- Alert user when medicine is missed.
- Notify caregiver if a dose is skipped multiple times.

 4.4 Emergency Assist
- User can tap **SOS** button.
- System auto-alerts emergency contacts with user location.
- Store emergency event logs.

 4.5 Reports
- Track medicine adherence rate.
- Provide summary reports for doctor appointments.

 5. Non-Functional Requirements (NFRs)

 5.1 Reliability
- Reminders must be delivered 99% of the time.

 5.2 Security
- Store user data securely.
- Encrypt emergency contact details.

 5.3 Usability
- Simple UI suitable for elderly people.
- Clear icons and colour-coded alerts.

 5.4 Performance
- Notification system should not delay more than 5 seconds.

 5.5 Scalability
- Support multiple users without performance drop.

 5.6 Availability
- Should operate 24/7 for emergency features.



 6. Constraints
- Mobile device required for notifications.
- Internet required for emergency communication.
- Cloud storage required for user data.


 7. Assumptions
- Users understand basic mobile usage.
- Network availability is consistent.



 8. Conclusion
This document outlines the foundation for building the architecture of the Medicine Reminder & Emergency Assist System. The next step is creating the Use Case Diagram.
