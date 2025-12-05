
CREATE TABLE users (
  user_id VARCHAR(36) PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  age INT,
  phone VARCHAR(20),
  email VARCHAR(100) UNIQUE,
  address TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE emergency_contacts (
  contact_id VARCHAR(36) PRIMARY KEY,
  user_id VARCHAR(36) NOT NULL,
  name VARCHAR(100),
  relationship VARCHAR(50),
  phone VARCHAR(20),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE medicine_schedules (
  schedule_id VARCHAR(36) PRIMARY KEY,
  user_id VARCHAR(36) NOT NULL,
  medicine_name VARCHAR(200) NOT NULL,
  dosage VARCHAR(100),
  frequency VARCHAR(50),
  time_of_day JSON, 
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE reminders (
  reminder_id VARCHAR(36) PRIMARY KEY,
  schedule_id VARCHAR(36) NOT NULL,
  reminder_time TIMESTAMP NOT NULL,
  status VARCHAR(20) DEFAULT 'Pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (schedule_id) REFERENCES medicine_schedules(schedule_id) ON DELETE CASCADE
);


CREATE TABLE adherence_records (
  record_id VARCHAR(36) PRIMARY KEY,
  schedule_id VARCHAR(36) NOT NULL,
  reminder_id VARCHAR(36),
  taken_status VARCHAR(20), 
  timestamp TIMESTAMP,
  FOREIGN KEY (schedule_id) REFERENCES medicine_schedules(schedule_id) ON DELETE CASCADE,
  FOREIGN KEY (reminder_id) REFERENCES reminders(reminder_id) ON DELETE SET NULL
);


CREATE TABLE emergency_alerts (
  alert_id VARCHAR(36) PRIMARY KEY,
  user_id VARCHAR(36) NOT NULL,
  alert_type VARCHAR(50),
  severity_level VARCHAR(20),
  trigger_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) DEFAULT 'Active',
  location VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


CREATE TABLE alert_contacts (
  alert_contact_id VARCHAR(36) PRIMARY KEY,
  alert_id VARCHAR(36) NOT NULL,
  contact_id VARCHAR(36) NOT NULL,
  notification_time TIMESTAMP,
  delivery_status VARCHAR(20),
  FOREIGN KEY (alert_id) REFERENCES emergency_alerts(alert_id) ON DELETE CASCADE,
  FOREIGN KEY (contact_id) REFERENCES emergency_contacts(contact_id) ON DELETE CASCADE
);
