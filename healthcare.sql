CREATE DATABASE HospitalManagementSystem;
USE HospitalManagementSystem;

-- Prescription Table
CREATE TABLE Prescription (
    Prescription_id INT PRIMARY KEY,
    P_id INT,  -- Foreign key to Patient table
    D_id INT,  -- Foreign key to Doctor table
    M_id INT,  -- Foreign key to Medicine table
    Dosage VARCHAR(50),
    Frequency VARCHAR(50),
    Duration VARCHAR(50),
    FOREIGN KEY (P_id) REFERENCES Patient(P_id),
    FOREIGN KEY (D_id) REFERENCES Doctor(D_id),
    FOREIGN KEY (M_id) REFERENCES Medicine(M_id)
);

-- Rooms Table
CREATE TABLE Rooms (
    Room_id INT PRIMARY KEY,
    H_id INT,  -- Foreign key to Hospital table
    Room_type VARCHAR(50),
    Room_capacity INT,
    Room_status VARCHAR(50),
    PV_id INT,  -- Foreign key to PatientVisit table
    FOREIGN KEY (H_id) REFERENCES Hospital(H_id),
    FOREIGN KEY (PV_id) REFERENCES PatientVisit(PV_id)
);

-- Feedback Table
CREATE TABLE Feedback (
    Feedback_id INT PRIMARY KEY,
    P_id INT,  -- Foreign key to Patient table
    D_id INT,  -- Foreign key to Doctor table
    Date DATE,
    Rating INT,
    Comment TEXT,
    FOREIGN KEY (P_id) REFERENCES Patient(P_id),
    FOREIGN KEY (D_id) REFERENCES Doctor(D_id)
);

-- PaymentMethod Table
CREATE TABLE PaymentMethod (
    PaymentMethod_id INT PRIMARY KEY,
    P_id INT,  -- Foreign key to Patient table
    Method VARCHAR(50),
    Card_number VARCHAR(16),
    Expiry_date DATE,
    FOREIGN KEY (P_id) REFERENCES Patient(P_id)
);

-- PatientInsurance Table
CREATE TABLE PatientInsurance (
    PatientInsurance_id INT PRIMARY KEY,
    InsurancePlan_id INT,  -- Foreign key to InsurancePlan table
    P_id INT,  -- Foreign key to Patient table
    Start_date DATE,
    End_date DATE,
    FOREIGN KEY (InsurancePlan_id) REFERENCES InsurancePlan(InsurancePlan_id),
    FOREIGN KEY (P_id) REFERENCES Patient(P_id)
);

-- Equipment Table
CREATE TABLE Equipment (
    Equipment_id INT PRIMARY KEY,
    H_id INT,  -- Foreign key to Hospital table
    Equipment_name VARCHAR(100),
    Department_id INT,  -- Foreign key to Department table
    Maintenance_status VARCHAR(50),
    FOREIGN KEY (H_id) REFERENCES Hospital(H_id),
    FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
);

-- EquipmentMaintenance Table
CREATE TABLE EquipmentMaintenance (
    Maintenance_id INT PRIMARY KEY,
    Equipment_id INT,  -- Foreign key to Equipment table
    Maintenance_date DATE,
    Maintenance_details TEXT,
    FOREIGN KEY (Equipment_id) REFERENCES Equipment(Equipment_id)
);

-- Staff Table
CREATE TABLE Staff (
    Staff_id INT PRIMARY KEY,
    Staff_name VARCHAR(100),
    Role VARCHAR(50),
    H_id INT,  -- Foreign key to Hospital table
    Dept_id INT,  -- Foreign key to Department table
    FOREIGN KEY (H_id) REFERENCES Hospital(H_id),
    FOREIGN KEY (Dept_id) REFERENCES Department(Department_id)
);

-- ShiftAssignments Table
CREATE TABLE ShiftAssignments (
    ShiftAssignment_id INT PRIMARY KEY,
    Staff_id INT,  -- Foreign key to Staff table
    Shift_date DATE,
    FOREIGN KEY (Staff_id) REFERENCES Staff(Staff_id)
);
