-- Create the main database
CREATE DATABASE hospital_system;

USE hospital_system;

-- Create Insurance table
CREATE TABLE insurance (
    P_insuransnum VARCHAR(20) PRIMARY KEY,  -- Insurance Number (Primary Key)
    Provider_name VARCHAR(100) NOT NULL     -- Insurance provider name
);

-- Insert sample insurance data
INSERT INTO insurance (P_insuransnum, Provider_name) VALUES 
('INS001', 'HealthCare Insurance'),
('INS002', 'MedCare Insurance'),
('INS003', 'Wellness Insurance');

-- Create Patient table
CREATE TABLE patient (
    P_id INT AUTO_INCREMENT PRIMARY KEY,  -- Patient ID (Primary Key)
    P_name VARCHAR(100) NOT NULL,         -- Patient Name
    P_age INT NOT NULL,                   -- Patient Age
    P_gender ENUM('Male', 'Female', 'Other') NOT NULL,  -- Gender (ENUM for limited options)
    P_appointment TEXT,                   -- Patient appointment details
    P_contactnum VARCHAR(15) NOT NULL,    -- Contact number
    P_insuransnum VARCHAR(20),            -- Foreign Key to insurance table
    FOREIGN KEY (P_insuransnum) REFERENCES insurance(P_insuransnum)  -- Foreign Key reference
);

-- Insert sample patient data
INSERT INTO patient (P_name, P_age, P_gender, P_appointment, P_contactnum, P_insuransnum) VALUES 
('Alice Johnson', 30, 'Female', 'Tuesday, 10:00 AM - 11:00 AM', '555-1234', 'INS001'),
('Bob Williams', 45, 'Male', 'Wednesday, 1:00 PM - 2:00 PM', '555-5678', 'INS002'),
('Charlie Brown', 50, 'Male', 'Monday, 9:00 AM - 10:00 AM', '555-9876', 'INS003'),
('Diana Smith', 28, 'Female', 'Friday, 3:00 PM - 4:00 PM', '555-1122', 'INS001');
