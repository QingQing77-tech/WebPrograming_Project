-- Create the main database
CREATE DATABASE hospital_departments;

USE hospital_departments;

-- Create Department table
CREATE TABLE department (
    Dept_id INT AUTO_INCREMENT PRIMARY KEY,  -- Department ID (Primary Key)
    H_id INT,                               -- Hospital ID (Foreign Key)
    Dept_name VARCHAR(100) NOT NULL,        -- Department Name (e.g., Cardiology, Neurology)
    Test_type VARCHAR(100),                 -- Type of test related to this department (e.g., Blood Test, X-Ray)
    HeadOfDept VARCHAR(100),                -- Name of the Head of Department
    FOREIGN KEY (H_id) REFERENCES hospital(H_id)  -- Foreign Key to hospital table
);

-- Sample insert data for Departments
INSERT INTO department (H_id, Dept_name, Test_type, HeadOfDept) VALUES 
(1, 'Cardiology', 'ECG, Blood Test', 'Dr. John Doe'),
(1, 'Neurology', 'CT Scan, MRI', 'Dr. Jane Smith'),
(2, 'Orthopedics', 'X-Ray, MRI', 'Dr. Michael Lee'),
(3, 'Pediatrics', 'Blood Test, Ultrasound', 'Dr. Susan Brown');
