-- Create the main database
CREATE DATABASE hospital_info;

USE hospital_info;

-- Create Hospital table
CREATE TABLE hospital (
    H_id INT AUTO_INCREMENT PRIMARY KEY,   -- Hospital ID (Primary Key)
    H_name VARCHAR(100) NOT NULL,           -- Hospital Name
    H_address VARCHAR(255) NOT NULL,        -- Hospital Address
    H_contactinfo VARCHAR(100) NOT NULL     -- Hospital Contact Information (Phone/Email)
);

-- Sample insert data for Hospital
INSERT INTO hospital (H_name, H_address, H_contactinfo) VALUES 
('LifeCare Medical Center', '123 Health St, Medical City, HC 12345', '555-123-4567'),
('Healing Hands Hospital', '456 Wellness Rd, Caretown, HC 67890', '555-987-6543'),
('Sunnybrook Hospital', '789 Sunshine Blvd, Happyville, HC 24680', '555-321-0987');
