-- Create the main database
CREATE DATABASE hospital_tests;

USE hospital_tests;

-- Create Medical Test table
CREATE TABLE medical_tests (
    Test_id INT AUTO_INCREMENT PRIMARY KEY,    -- Test ID (Primary Key)
    D_id INT,                                 -- Doctor ID (Foreign Key)
    P_id INT,                                 -- Patient ID (Foreign Key)
    Test_type VARCHAR(100),                   -- Type of test (e.g., Blood Test, X-Ray, etc.)
    Test_date DATETIME NOT NULL,              -- Date and time of the test
    FOREIGN KEY (D_id) REFERENCES doctor(D_id),       -- Foreign Key to doctor table
    FOREIGN KEY (P_id) REFERENCES patient(P_id)        -- Foreign Key to patient table
);

-- Sample insert data for Medical Tests
INSERT INTO medical_tests (D_id, P_id, Test_type, Test_date) VALUES 
(1, 1, 'Blood Test', '2024-11-13 10:00:00'),
(2, 2, 'X-Ray', '2024-11-14 11:00:00'),
(3, 3, 'MRI Scan', '2024-11-15 14:00:00'),
(4, 4, 'Ultrasound', '2024-11-16 16:00:00');
