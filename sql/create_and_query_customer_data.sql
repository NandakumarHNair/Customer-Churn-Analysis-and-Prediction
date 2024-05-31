-- Create table for customer data
CREATE TABLE customer_data (
    CustomerID INT PRIMARY KEY,
    CreditScore INT,
    Geography VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Tenure INT,
    Balance FLOAT,
    NumOfProducts INT,
    HasCrCard INT,
    IsActiveMember INT,
    EstimatedSalary FLOAT,
    Exited INT
);

-- Insert data into customer_data table
-- Replace with your actual data insertions
INSERT INTO customer_data (CustomerID, CreditScore, Geography, Gender, Age, Tenure, Balance, NumOfProducts, HasCrCard, IsActiveMember, EstimatedSalary, Exited) VALUES 
(1, 600, 'France', 'Female', 40, 3, 60000.00, 2, 1, 1, 50000.00, 1),
(2, 850, 'Spain', 'Male', 50, 5, 80000.00, 1, 1, 1, 70000.00, 0),
(3, 700, 'France', 'Female', 30, 2, 70000.00, 1, 0, 0, 60000.00, 0),
(4, 640, 'Germany', 'Male', 35, 3, 64000.00, 2, 1, 0, 52000.00, 1),
(5, 590, 'France', 'Female', 42, 6, 59000.00, 1, 0, 1, 59000.00, 1),
(6, 720, 'Spain', 'Male', 28, 1, 72000.00, 2, 1, 1, 58000.00, 0),
(7, 750, 'Germany', 'Female', 33, 4, 75000.00, 1, 0, 0, 60000.00, 0),
(8, 630, 'Germany', 'Female', 45, 5, 63000.00, 2, 1, 1, 61000.00, 1),
(9, 680, 'Spain', 'Male', 38, 2, 68000.00, 1, 1, 1, 57000.00, 0),
(10, 690, 'France', 'Male', 41, 4, 69000.00, 2, 1, 0, 55000.00, 1);

-- Query to select data for analysis
SELECT 
    CustomerID,
    CreditScore,
    Geography,
    Gender,
    Age,
    Tenure,
    Balance,
    NumOfProducts,
    HasCrCard,
    IsActiveMember,
    EstimatedSalary,
    Exited
FROM 
    customer_data;
