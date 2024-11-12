-- Create the main database
CREATE DATABASE hospital_records;

USE hospital_records;

-- Create Billing table (assuming you have a Billing table)
CREATE TABLE billing (
    Billing_id INT AUTO_INCREMENT PRIMARY KEY,  -- Billing ID (Primary Key)
    Amount DECIMAL(10, 2) NOT NULL,             -- Billing Amount
    Billing_date DATETIME NOT NULL              -- Billing Date and Time
);

-- Insert sample billing data
INSERT INTO billing (Amount, Billing_date) VALUES 
(150.00, '2024-11-13 10:30:00'),
(200.00, '2024-11-14 14:30:00'),
(250.00, '2024-11-15 09:00:00'),
(100.00, '2024-11-16 16:00:00');

-- Create Medical Record table
CREATE TABLE medical_records (
    Record_id INT AUTO_INCREMENT PRIMARY KEY,  -- Medical Record ID (Primary Key)
    D_id INT,                                 -- Doctor ID (Foreign Key)
    P_id INT,                                 -- Patient ID (Foreign Key)
    Billing_id INT,                           -- Billing ID (Foreign Key)
    Diagnosis TEXT,                           -- Diagnosis details
    Treatment TEXT,                           -- Treatment details
    FOREIGN KEY (D_id) REFERENCES doctor(D_id),       -- Foreign Key to doctor table
    FOREIGN KEY (P_id) REFERENCES patient(P_id),     -- Foreign Key to patient table
    FOREIGN KEY (Billing_id) REFERENCES billing(Billing_id)  -- Foreign Key to billing table
);

-- Sample insert data for Medical Records
INSERT INTO medical_records (D_id, P_id, Billing_id, Diagnosis, Treatment) VALUES 
(1, 1, 1, 'Hypertension', 'Prescribed medication and advised diet changes'),
(2, 2, 2, 'Migraine', 'Prescribed pain relievers and rest'),
(3, 3, 3, 'Fracture', 'Plaster cast and follow-up appointment'),
(4, 4, 4, 'Viral infection', 'Antibiotics and hydration therapy');
