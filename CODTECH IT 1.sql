create database codtechitsolutions;
use codtechitsolutions;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'Software Development'),
(2, 'Quality Assurance'),
(3, 'Human Resources'),
(4, 'IT Support'),
(5, 'UI/UX Design'),
(6, 'Cloud Services'),
(7, 'Cybersecurity'),
(8, 'Data Analytics'),
(9, 'DevOps'),
(10, 'AI & ML'),
(11, 'Business Analysis'),
(12, 'Mobile Development'),
(13, 'Networking'),
(14, 'Database Administration'),
(15, 'Project Management'),
(16, 'Technical Writing'),
(17, 'Salesforce Development'),
(18, 'Web Development'),
(19, 'Product Management'),
(20, 'Customer Support');

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    designation VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Employees VALUES
(101, 'Raj Kumar', 1, 'Backend Developer'),
(102, 'Priya Sharma', 2, 'QA Analyst'),
(103, 'Anil Mehta', 1, 'Software Engineer'),
(104, 'Meena Iyer', 3, 'HR Executive'),
(105, 'Ravi Singh', 4, 'IT Support Engineer'),
(106, 'Karan Patel', 5, 'UI Designer'),
(107, 'Sneha Reddy', 6, 'Cloud Engineer'),
(108, 'Amit Joshi', 7, 'Security Analyst'),
(109, 'Neha Verma', 8, 'Data Scientist'),
(110, 'Dinesh Rao', 9, 'DevOps Engineer'),
(111, 'Ritika Jain', 10, 'ML Engineer'),
(112, 'Arjun Desai', 11, 'Business Analyst'),
(113, 'Ishita Paul', 12, 'Mobile Developer'),
(114, 'Soham Banerjee', 13, 'Network Administrator'),
(115, 'Zoya Khan', 14, 'DBA'),
(116, 'Vivek Rathi', 15, 'Project Manager'),
(117, 'Harshita Gupta', 16, 'Technical Writer'),
(118, 'Manoj Nair', 17, 'Salesforce Developer'),
(119, 'Kavita Rao', 18, 'Web Developer'),
(120, 'Deepak Goyal', 19, 'Product Owner');


CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    department_id INT,
    client_name VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Projects VALUES
(201, 'E-commerce Platform', 1, 'Flipkart'),
(202, 'Mobile App Testing', 2, 'Paytm'),
(203, 'Employee Portal', 3, 'Infosys'),
(204, 'Internal IT Audit', 4, 'Wipro'),
(205, 'Website Redesign', 5, 'Zomato'),
(206, 'Cloud Migration', 6, 'Amazon'),
(207, 'Firewall Security', 7, 'CRED'),
(208, 'Data Warehouse', 8, 'Meesho'),
(209, 'CI/CD Pipeline', 9, 'Byju\'s'),
(210, 'Chatbot Integration', 10, 'Airtel'),
(211, 'Client Dashboard', 11, 'HDFC'),
(212, 'Food Delivery App', 12, 'Swiggy'),
(213, 'Network Upgrade', 13, 'IBM'),
(214, 'DB Optimization', 14, 'ICICI Bank'),
(215, 'Agile Management', 15, 'TCS'),
(216, 'Technical Docs', 16, 'Google'),
(217, 'CRM Setup', 17, 'Salesforce'),
(218, 'Portfolio Website', 18, 'Freelancer'),
(219, 'Product Launch', 19, 'Ola'),
(220, 'Support Ticketing', 20, 'Freshdesk');


CREATE TABLE Employee_Project_Assignments (
    assignment_id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    role VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

INSERT INTO Employee_Project_Assignments VALUES
(1, 101, 201, 'Lead Developer'),
(2, 102, 202, 'QA Analyst'),
(3, 103, 201, 'Developer'),
(4, 104, 203, 'HR Coordinator'),
(5, 105, 204, 'Support'),
(6, 106, 205, 'UI Designer'),
(7, 107, 206, 'Cloud Admin'),
(8, 108, 207, 'Security Analyst'),
(9, 109, 208, 'Data Analyst'),
(10, 110, 209, 'DevOps Lead'),
(11, 111, 210, 'ML Engineer'),
(12, 112, 211, 'Business Analyst'),
(13, 113, 212, 'Mobile Dev'),
(14, 114, 213, 'Network Lead'),
(15, 115, 214, 'DB Admin'),
(16, 116, 215, 'Scrum Master'),
(17, 117, 216, 'Writer'),
(18, 118, 217, 'CRM Developer'),
(19, 119, 218, 'Web Dev'),
(20, 120, 219, 'Product Manager');




-- Inner join -- (returns only the matching rows from both tables based on the join condition)
-- 1. Get employee names and their department names (only if both exist)
SELECT e.employee_name, d.department_name
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.department_id;

-- 2. List all employees working on a project with their roles
SELECT e.employee_name, p.project_name, a.role
FROM Employees e
INNER JOIN Employee_Project_Assignments a ON e.employee_id = a.employee_id
INNER JOIN Projects p ON a.project_id = p.project_id;

-- 3. Show project names and client names where project and department both exist
SELECT p.project_name, p.client_name, d.department_name
FROM Projects p
INNER JOIN Departments d ON p.department_id = d.department_id;




-- Left join -- (Returns all records from the left table and matching records from the right table)
-- 1. List all employees and their departments (show NULL if not assigned)
SELECT e.employee_name, d.department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.department_id;

-- 2. Show all projects and the employees working on them (if any)
SELECT p.project_name, e.employee_name, a.role
FROM Projects p
LEFT JOIN Employee_Project_Assignments a ON p.project_id = a.project_id
LEFT JOIN Employees e ON a.employee_id = e.employee_id;

-- 3. Display all departments and assigned projects (if any)
SELECT d.department_name, p.project_name
FROM Departments d
LEFT JOIN Projects p ON d.department_id = p.department_id;



-- Right join -- (Returns all records from the right table and matching records from the left table)
-- 1. Show all departments and employees (even if no employees are assigned)
SELECT e.employee_name, d.department_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.department_id;

-- 2. Show all projects and assigned employees (even if no employee is assigned)
SELECT p.project_name, e.employee_name, a.role
FROM Employees e
RIGHT JOIN Employee_Project_Assignments a ON e.employee_id = a.employee_id
RIGHT JOIN Projects p ON a.project_id = p.project_id;

-- 3. Show all departments and their projects (even if no project is linked)
SELECT d.department_name, p.project_name
FROM Projects p
RIGHT JOIN Departments d ON p.department_id = d.department_id;



-- FUll JOINS --(returns all records from both tables, with NULLs in place where there is no match)
-- 1. All employees and departments, show NULLs if unmatched
SELECT e.employee_name, d.department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.department_id

UNION

SELECT e.employee_name, d.department_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.department_id;

-- 2. All projects and employees assigned (or not)
SELECT e.employee_name, p.project_name
FROM Employees e
LEFT JOIN Employee_Project_Assignments a ON e.employee_id = a.employee_id
LEFT JOIN Projects p ON a.project_id = p.project_id

UNION

SELECT e.employee_name, p.project_name
FROM Employees e
RIGHT JOIN Employee_Project_Assignments a ON e.employee_id = a.employee_id
RIGHT JOIN Projects p ON a.project_id = p.project_id;

-- 3. All departments and projects (matched or not)
SELECT d.department_name, p.project_name
FROM Departments d
LEFT JOIN Projects p ON d.department_id = p.department_id

UNION

SELECT d.department_name, p.project_name
FROM Departments d
RIGHT JOIN Projects p ON d.department_id = p.department_id;







