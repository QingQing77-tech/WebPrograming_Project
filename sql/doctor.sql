-- Create the main database
CREATE DATABASE doctor_appointments;

USE doctor_appointments;

-- Create Department table
CREATE TABLE department (
    Dept_id INT AUTO_INCREMENT PRIMARY KEY,
    Dept_name VARCHAR(100) NOT NULL
);

-- Insert sample departments
INSERT INTO department (Dept_name) VALUES 
('Cardiology'),
('Neurology'),
('Orthopedics'),
('Pediatrics');

-- Create Doctor table
CREATE TABLE doctor (
    D_id INT AUTO_INCREMENT PRIMARY KEY,
    D_name VARCHAR(100) NOT NULL,
    D_specialization VARCHAR(100) NOT NULL,
    D_appointment TEXT,  -- Can store multiple appointments or details about appointment slots
    D_contactnum VARCHAR(15) NOT NULL,
    Dept_id INT,  -- Foreign key referencing department
    FOREIGN KEY (Dept_id) REFERENCES department(Dept_id)
);

-- Insert sample doctors
INSERT INTO doctor (D_name, D_specialization, D_appointment, D_contactnum, Dept_id) VALUES 
('Dr. John Doe', 'Cardiologist', 'Monday, Wednesday 9:00 AM - 12:00 PM', '123-456-7890', 1),
('Dr. Jane Smith', 'Neurologist', 'Tuesday, Thursday 10:00 AM - 1:00 PM', '987-654-3210', 2),
('Dr. Michael Lee', 'Orthopedic Surgeon', 'Monday, Thursday 2:00 PM - 5:00 PM', '555-123-9876', 3),
('Dr. Susan Brown', 'Pediatrician', 'Wednesday, Friday 9:00 AM - 12:00 PM', '555-789-1234', 4);
