-- Create the main database
CREATE DATABASE hospital_shifts;

USE hospital_shifts;

-- Create Shift Assignment table
CREATE TABLE shift_assignment (
    Shift_id INT AUTO_INCREMENT PRIMARY KEY,    -- Shift ID (Primary Key)
    Nurse_id INT,                               -- Nurse ID (Foreign Key)
    D_id INT,                                   -- Doctor ID (Foreign Key)
    Shift_time VARCHAR(100),                    -- Shift Time (e.g., 8:00 AM - 4:00 PM)
    FOREIGN KEY (Nurse_id) REFERENCES nurse(Nurse_id),    -- Foreign Key to nurse table
    FOREIGN KEY (D_id) REFERENCES doctor(D_id)           -- Foreign Key to doctor table
);

-- Sample insert data for Shift Assignments
INSERT INTO shift_assignment (Nurse_id, D_id, Shift_time) VALUES 
(1, 1, '8:00 AM - 4:00 PM'),  -- Nurse 1 works with Doctor 1 during Morning shift
(2, 2, '4:00 PM - 12:00 AM'), -- Nurse 2 works with Doctor 2 during Evening shift
(3, 3, '12:00 AM - 8:00 AM'), -- Nurse 3 works with Doctor 3 during Night shift
(4, 4, '8:00 AM - 4:00 PM');  -- Nurse 4 works with Doctor 4 during Morning shift
