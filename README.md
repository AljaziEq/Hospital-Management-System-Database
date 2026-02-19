Hospital Management System
Database Project

## Project Overview

This project is a Hospital Management System designed to help healthcare centers manage essential operations such as managing appointments, patient records, staff, doctors, departments, and equipment. The system is designed using a Relational Database Management System (RDBMS), which supports essential features including data integrity, user access control, and efficient data storage.


## Key Features:

- Comprehensive Data Management
The system integrates multiple interconnected entities, including:

    •    Departments
    •    Sub-Departments
    •    Staff
    •    Doctors
    •    Patients
    •    Appointments
    •    Wardrooms
    •    Equipment

Each entity is implemented through a well-structured and normalized database schema.


- Data Access Control
Custom views and queries were developed to ensure that data access aligns with user roles and permissions.
This ensures that:

    •    Doctors access patient-related data.
    •    Nurses access assigned ward information.
    •    Administrators access system-wide reports.
    •    Sensitive data remains protected.


- Database Normalization
The database design follows normalization up to Third Normal Form (3NF) to:

    •    Reduce redundancy.
    •    Improve data consistency.
    •    Ensure logical data dependencies.
    •    Optimize storage efficiency.


- Advanced Query Support
The system supports:

    •    CRUD operations (Create, Read, Update, Delete).
    •    Join operations.
    •    Aggregation queries.
    •    Nested queries.
    •    Analytical data retrieval.



## System Architecture 

    •    One-to-Many relationships (e.g., Department → Doctors).
    •    Many-to-Many relationships (handled via associative tables where necessary).
    •    Strong referential integrity using foreign key constraints.


## Technologies Used

    •    SQL (DDL & DML).
    •    Relational Database Management System (MySQL / Oracle / SQL Server).
    •    ER Modeling Tools.

## Languages Used
- SQL
  

## How to Run the Project

1-Requirements
    •    MySQL / Oracle SQL / SQL Server
    •    SQL client (MySQL Workbench / SQL Developer / SSMS)


2-Setup Steps

   1.Create a new database:
	CREATE DATABASE Hospital_Management_System;


   2.Select the database:
	USE Hospital_Management_System;

   3.Execute the DDL script to create all tables.

   4.Execute the DML script to insert initial data.

   5.Run sample queries to test functionality:

	SELECT * FROM Patients;
	SELECT * FROM Doctors;
	SELECT * FROM Appointments;
-----------------------------------

## Key Contributions

    •    Database Design and Development: I played a significant role in designing the Entity-Relationship (ER) Model, establishing tables, and inserting initial data to ensure the database supported the business logic.
    •    Views & Queries Creation: I created views and queries that enabled the system to present customized data for different users, supporting roles like doctors, nurses, and administrators. This helped to streamline data access and improve system efficiency.
    •    Normalization: I was actively involved in the normalization process, ensuring that all tables adhered to 1NF, 2NF, and 3NF to ensure data consistency and reduce redundancy.
    •    User-Specific Data Access: I developed views and customized queries based on different user roles to support specific data visibility and access, ensuring that sensitive data was available only to authorized personnel.


## Collaborative Effort

This project was done as part of a team effort. My participation was extensive, especially in the database schema creation, data insertion, and query development phases. The teamwork in this project was critical for its success, and it involved coordinating different components and ensuring all parts integrated seamlessly. 

