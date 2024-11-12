-- Create the main database
CREATE DATABASE hospital_nurses;

USE hospital_nurses;

-- Create Nurse table
CREATE TABLE nurse (
    Nurse_id INT AUTO_INCREMENT PRIMARY KEY,  -- Nurse ID (Primary Key)
    Nurse_name VARCHAR(100) NOT NULL,         -- Nurse Name
    Dept_id INT,                              -- Department ID (Foreign Key)
    Shift_id INT,                             -- Shift ID (Foreign Key)
    FOREIGN KEY (Dept_id) REFERENCES department(Dept_id),   -- Foreign Key to department table
    FOREIGN KEY (Shift_id) REFERENCES shift(Shift_id)      -- Foreign Key to shift table
);

-- Create Shift table (assuming shift details exist)
CREATE TABLE shift (
    Shift_id INT AUTO_INCREMENT PRIMARY KEY,   -- Shift ID (Primary Key)
    Shift_name VARCHAR(100) NOT NULL,           -- Shift Name (e.g., Morning, Evening, Night)
    Shift_time VARCHAR(100) NOT NULL            -- Shift Time (e.g., 9:00 AM - 5:00 PM)
);

-- Sample insert data for Shifts
INSERT INTO shift (Shift_name, Shift_time) VALUES
('Morning', '8:00 AM - 4:00 PM'),
('Evening', '4:00 PM - 12:00 AM'),
('Night', '12:00 AM - 8:00 AM');

-- Sample insert data for Nurses
INSERT INTO nurse (Nurse_name, Dept_id, Shift_id) VALUES
('Alice Johnson', 1, 1),  -- Alice works in department 1 (Cardiology) on Morning shift
('Bob Williams', 2, 2),   -- Bob works in department 2 (Neurology) on Evening shift
('Charlie Brown', 3, 3),  -- Charlie works in department 3 (Orthopedics) on Night shift
('Diana Smith', 4, 1);    -- Diana works in department 4 (Pediatrics) on Morning shift
