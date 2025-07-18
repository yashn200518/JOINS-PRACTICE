show databases;
create database codtech;
use codtech; 
CREATE TABLE IT_Sector (
    Sector_ID INT PRIMARY KEY,
    Sector_Name VARCHAR(50),
    Head_Office VARCHAR(50)
);
INSERT INTO IT_Sector (Sector_ID, Sector_Name, Head_Office) VALUES
(1, 'Software Development', 'Bengaluru'),
(2, 'Cybersecurity', 'Hyderabad'),
(3, 'Data Analytics', 'Pune'),
(4, 'AI & Machine Learning', 'Bengaluru'),
(5, 'Cloud Computing', 'Mumbai'),
(6, 'IT Consulting', 'Delhi'),
(7, 'Web Development', 'Chennai'),
(8, 'DevOps', 'Noida'),
(9, 'Database Administration', 'Kolkata'),
(10, 'Networking', 'Gurgaon'),
(11, 'Blockchain', 'Bengaluru'),
(12, 'IoT Solutions', 'Ahmedabad'),
(13, 'AR/VR', 'Hyderabad'),
(14, 'UI/UX Design', 'Chennai'),
(15, 'Mobile Development', 'Pune'),
(16, 'Game Development', 'Mumbai'),
(17, 'IT Support', 'Nagpur'),
(18, 'ERP Solutions', 'Indore'),
(19, 'Digital Marketing', 'Kolkata'),
(20, 'QA & Testing', 'Jaipur');


CREATE TABLE Sector_Projects (
    Project_ID INT PRIMARY KEY,
    Sector_ID INT, -- sector id is PK --
    Project_Name VARCHAR(100),
    Status VARCHAR(20),
    FOREIGN KEY (Sector_ID) REFERENCES IT_Sector(Sector_ID)
);
INSERT INTO Sector_Projects (Project_ID, Sector_ID, Project_Name, Status) VALUES
(101, 1, 'Payroll Management System', 'Completed'),
(102, 2, 'Advanced Threat Monitor', 'Ongoing'),
(103, 3, 'Customer Behavior Analytics', 'Completed'),
(104, 4, 'Chatbot for Banking', 'Ongoing'),
(105, 5, 'Hybrid Cloud Architecture', 'Completed'),
(106, 6, 'Tech Strategy Audit', 'Pending'),
(107, 7, 'Online Grocery Platform', 'Completed'),
(108, 8, 'Kubernetes Setup', 'Ongoing'),
(109, 9, 'Real-time DB Sync', 'Completed'),
(110, 10, 'Enterprise Network Overhaul', 'Completed'),
(111, 11, 'Crypto Wallet App', 'Ongoing'),
(112, 12, 'Smart Factory Sensors', 'Completed'),
(113, 13, 'VR Training Simulator', 'Pending'),
(114, 14, 'UI Revamp for App', 'Completed'),
(115, 15, 'Cross-platform Travel App', 'Ongoing'),
(116, 16, '3D Game Engine', 'Completed'),
(117, 17, 'Remote Desktop Manager', 'Completed'),
(118, 18, 'SAP Integration Project', 'Ongoing'),
(119, 19, 'SEO Optimization Suite', 'Pending'),
(120, 20, 'Test Automation Suite', 'Completed');

select * from IT_Sector;
select * from Sector_Projects;

----------------------------------------------------------------------------------------------


-- Inner join -- (returns only the matching rows from both tables based on the join condition)
SELECT IT_Sector.Sector_Name, Sector_Projects.Project_Name, Sector_Projects.Status
FROM IT_Sector
INNER JOIN Sector_Projects ON IT_Sector.Sector_ID = Sector_Projects.Sector_ID;

SELECT s.Sector_Name, p.Project_Name
FROM IT_Sector s
INNER JOIN Sector_Projects p ON s.Sector_ID = p.Sector_ID;

SELECT s.Sector_Name, p.Project_Name
FROM IT_Sector s
INNER JOIN Sector_Projects p ON s.Sector_ID = p.Sector_ID
WHERE p.Status = 'Completed'; -- only completed projects




-- Left join -- (Returns all records from the left table and matching records from the right table)
SELECT IT_Sector.Sector_Name, Sector_Projects.Project_Name, Sector_Projects.Status
FROM IT_Sector
LEFT JOIN Sector_Projects ON IT_Sector.Sector_ID = Sector_Projects.Sector_ID;

SELECT s.Sector_Name, p.Project_Name
FROM IT_Sector s
LEFT JOIN Sector_Projects p ON s.Sector_ID = p.Sector_ID;

SELECT s.Sector_Name
FROM IT_Sector s
LEFT JOIN Sector_Projects p ON s.Sector_ID = p.Sector_ID
WHERE p.Project_ID IS NULL; -- NULL




-- Right join -- (Returns all records from the right table and matching records from the left table)
SELECT IT_Sector.Sector_Name, Sector_Projects.Project_Name, Sector_Projects.Status
FROM IT_Sector
RIGHT JOIN Sector_Projects ON IT_Sector.Sector_ID = Sector_Projects.Sector_ID;

SELECT p.Project_Name, s.Sector_Name
FROM IT_Sector s
RIGHT JOIN Sector_Projects p ON s.Sector_ID = p.Sector_ID;



-- FUll JOINS --(returns all records from both tables, with NULLs in place where there is no match)
SELECT Sector_Name, Project_Name, Status FROM IT_Sector
LEFT JOIN Sector_Projects ON IT_Sector.Sector_ID = Sector_Projects.Sector_ID
UNION
SELECT Sector_Name, Project_Name, Status FROM IT_Sector
RIGHT JOIN Sector_Projects ON IT_Sector.Sector_ID = Sector_Projects.Sector_ID;


-- Simulating FULL OUTER JOIN with UNION
SELECT s.Sector_Name, p.Project_Name, p.Status
FROM IT_Sector s
LEFT JOIN Sector_Projects p ON s.Sector_ID = p.Sector_ID
WHERE p.Status = 'Completed' OR p.Status IS NULL

UNION

SELECT s.Sector_Name, p.Project_Name, p.Status
FROM IT_Sector s
RIGHT JOIN Sector_Projects p ON s.Sector_ID = p.Sector_ID
WHERE p.Status = 'Completed' OR s.Sector_ID IS NULL; -- Completed or  NULL




