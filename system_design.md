1. System overview
    This somple system is useful for patients who may forget to take medicines on time , and this syetm makes alarms for each schedules and send notification alarms for regarding patients, when the
   patients' status is critical, the system sends emegerncy notifications for patients'  relations.

2. Layered Architecture
     we use  monolithic architecture here.
  (i) Presentation Layer
        Mobile UI / Web UI
        Displays medicines, reminders, alerts
 (ii) Application Layer
        Handles logic
        Scheduling reminders
        Sending alerts
        Recording adherence
        Processing SOS
(iii) Data Layer
        Database tables
        User
        Emergency_contact
        edicine_schedule
        Reminder
        Adherence_record
        mergency_alert
        Alert_contact

3.  componenetrs used here
      User Service
      Authentication Service
      Medicine Scheduler
      Reminder Engine
      Notification Sender
      SOS Emergency Module
      Adherence Tracker
      Report Generator
      Database Access Layer

4.  Technologies
      Frontend: Flutter / React Native
      Backend: Node.js / Spring Boot / Django
      Database: MySQL / PostgreSQL
      Notifications: Firebase Cloud Messaging
      Auth: JWT / OAuth
      Cloud: AWS

5.  Non-Functional Requirements
      Reliability
      Scalability
      Security
      Performance
      Maintainability
      Usability
    
