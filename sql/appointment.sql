-- Create the main database
CREATE DATABASE hospital_appointments;

USE hospital_appointments;

-- Create the Appointments table
CREATE TABLE appointments (
    A_id INT AUTO_INCREMENT PRIMARY KEY,  -- Appointment ID (Primary Key)
    D_id INT,                             -- Doctor ID (Foreign Key)
    P_id INT,                             -- Patient ID (Foreign Key)
    A_date DATETIME NOT NULL,             -- Appointment date and time
    A_reason TEXT,                        -- Reason for appointment
    FOREIGN KEY (D_id) REFERENCES doctor(D_id),  -- Foreign Key to doctor table
    FOREIGN KEY (P_id) REFERENCES patient(P_id)  -- Foreign Key to patient table
);

-- Sample insert data for Appointments
INSERT INTO appointments (D_id, P_id, A_date, A_reason) VALUES 
(1, 1, '2024-11-13 10:00:00', 'Routine checkup'),
(2, 2, '2024-11-14 13:00:00', 'Neurology consultation'),
(3, 3, '2024-11-15 09:00:00', 'Orthopedic consultation'),
(4, 4, '2024-11-16 15:00:00', 'Pediatric consultation');
