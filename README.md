# JOINS-PRACTICE
COMPANY - CODTECH IT SOLUTION

NAME - YASH NAWALE

INTERN ID - CT12DL363

DOMAIN - SQL 

DURATION - 8 WEEKS

MENTOR - NEELA SANTOSH


#description

 I worked on performing different types of SQL JOIN operations—INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN—on a simulated IT company database that includes four interrelated tables: Departments, Employees, Projects, and Employee_Project_Assignments. Each table contains 20 realistic entries to reflect real-world data from an Indian IT company structure.

🔹 Database Design
The Departments table holds information about various functional teams such as Software Development, QA, HR, Cloud Services, and more. The Employees table stores employee details including their names, designations, and department associations. The Projects table includes project names, client names, and which department handles each project. Finally, the Employee_Project_Assignments table represents a many-to-many relationship between employees and projects, capturing the role of each employee in a project.

🔹 INNER JOIN
I first performed INNER JOINs, which retrieve only the records where data matches in both tables. For example, I fetched employee names and their corresponding department names by joining Employees and Departments on the department ID. I also used INNER JOIN to get a list of employees who are assigned to projects, including their roles and the project names. This helped identify actively engaged employees and their responsibilities. Another INNER JOIN query related projects to their departments to analyze client distribution across departments.

🔹 LEFT JOIN
Next, I applied LEFT JOINs to retrieve all records from the left table even if there is no matching data in the right table. I used this to list all employees along with their departments, showing NULL for employees not currently assigned to any department. Another LEFT JOIN query displayed all projects and the employees working on them, allowing me to detect unassigned projects. Similarly, I listed all departments and the projects linked to them, which helped identify departments not actively managing projects.

🔹 RIGHT JOIN
I then used RIGHT JOINs to reverse the perspective—returning all rows from the right table even if no match exists in the left. For instance, I retrieved all departments and their employees, ensuring that even departments without any employees were included. I also checked projects and employee assignments using RIGHT JOIN to ensure every project is represented, even if unassigned. Lastly, I confirmed that each department appears in the output whether or not it's linked to a project.

🔹 FULL JOIN (Simulated)
Since MySQL doesn’t support FULL OUTER JOIN directly, I simulated it using UNION of LEFT and RIGHT JOIN queries. These queries allowed me to gather comprehensive datasets, such as all employee-department pairs (whether matched or not), all project-employee assignments, and all departments with their projects, even when some values were NULL.

🔹 Conclusion
Through this exercise, I gained hands-on experience using different JOIN types to connect and analyze data across multiple related tables. This simulated IT company database reflects real-world structures and challenges, and performing meaningful JOIN queries helped me understand the power of relational databases in representing complex organizational data relationships.

## OUTPUT
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/3a518413-1033-4735-9aa7-ac866e1c4b5e" />
