# JOINS-PRACTICE
COMPANY - CODTECH IT SOLUTION
NAME - YASH NAWALE
INTERN ID - CT12DL363
DOMAIN - SQL 
DURATION - 8 WEEKS
MENTOR - NEELA SANTOSH

## The objective of this task was to demonstrate the creation, population, and utilization of a relational database using MySQL. The process began with initializing a new database named codtech using the CREATE DATABASE and USE commands. This created a dedicated environment to manage all related data entities efficiently.

The first step involved the creation of a foundational table, IT_Sector, representing various domains in the IT industry. This table included three fields: Sector_ID (an integer and primary key), Sector_Name, and Head_Office (both as variable character strings). Once the structure was defined, 20 sample entries were inserted into this table to represent diverse sectors such as Software Development, Cybersecurity, AI & ML, Cloud Computing, UI/UX Design, and more, each linked to their respective city-based head offices.

Following this, a second table, Sector_Projects, was created to store project-level information. This table included fields for Project_ID (primary key), Sector_ID (foreign key referencing IT_Sector), Project_Name, and Status. This established a one-to-many relationship between sectors and their projects, ensuring data integrity. Twenty project entries were added, aligned with the appropriate sectors and labeled with statuses such as "Completed", "Ongoing", or "Pending".

After table creation and population, several SELECT statements were executed to view the inserted records and verify data accuracy.

The core of the task was performing SQL joins to demonstrate how relational databases link and extract meaningful information across tables. Various types of joins were executed:

Inner Join: This join fetched only those records where matching Sector_ID existed in both IT_Sector and Sector_Projects. It was used to retrieve paired data like sector names with project names and status, especially filtering for completed projects using a WHERE clause.

Left Join: This displayed all records from the IT_Sector table along with any matching project records. Sectors without projects appeared with NULLs, which is helpful for identifying gaps in project allocation.

Right Join: Conversely, this showed all records from the Sector_Projects table, including unmatched sectors, which might occur in some data migration or planning scenarios.

Full Join Simulation: Since MySQL doesn’t support full outer joins directly, a combination of LEFT JOIN and RIGHT JOIN with UNION was employed. This technique displayed all sectors and projects, even those without a corresponding match in the other table.

This process demonstrated not only relational data modeling but also real-world SQL querying skills. The use of conditional joins (e.g., filtering only completed projects or identifying unmatched sectors) highlighted advanced querying techniques. Overall, the project emphasized efficient data organization, normalization, referential integrity via foreign keys, and powerful querying through different joins. It is a good foundational example of how to work with structured data in MySQL and apply it to practical scenarios involving interrelated entities.
