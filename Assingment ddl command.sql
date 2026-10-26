/*1.Table Creation (CREATE): Write the SQL statements to create a database named
“employee” and the following tables based on the provided schema:
⦿ Departments
⦿ Location
⦿ Employees*/
create database Employee;
create table Employee.departments(department_id int primary key,department_name varchar(100));
create table Employee.location(location_id int primary key,location varchar(30));
create table Employee.employees(employee_id int primary key,employee_name varchar(50),
gender enum('M','F'),age int,hire_date date,designation varchar(100),
department_id int references departments(department_id),location_id int references location(location_id),salary decimal(10,2));
insert into Employee.departments values(101,'CS'),(102,'EC');
insert into employee.location values(2001,'KTM'),(2002,'TVM');
insert into employee.employees values(11,'ANNI','F',25,'2026-05-22','Teacher',101,2001,25000);
/*Table Alteration (ALTER): Consider the following scenarios and write the SQL
statements to alter the structure of the tables accordingly*/

/*Add a new column named "email" to the Employees table to store
employee email addresses*/
alter table employee.employees ADD column email varchar(25);
Select * from employee.employees;
/*Modify the data type of the "designation" column in the Employees
table to support a wider range of values*/

alter table employee.employees modify designation varchar(255);

/*Drop the “age” column from the Employees table*/

alter table employee.employees drop age;
select * from employee.employees;
/*Rename the “hire_date” column to “date_of_joining”.*/
alter table employee.employees rename column hire_date to date_of_joining;
select * from employee.employees;
/*Table Renaming (RENAME): Rewrite the SQL statements to rename the
following tables:
*/

rename table employee.Departments to employee.Departments_info;
select * from employee.Departments_info;
rename table employee.Location to employee.Locations;
select * from employee.Locations;
/*Table Truncation (TRUNCATE): Write an SQL statement to truncate the
Employees table.*/
truncate table employee.employees;
select * from employee.employees;
/*
Database & Table Dropping (DROP): Write the SQL statements to drop the
Employees table and then the “employee” database.*/
DROP TABLE employee.employees;
DROP DATABASE employee;
select * from employee.employees;
/* 1. Database Recreation:
⦿ Drop the 'employee' database if it exists and recreate it using the
provided schema, ensuring that all tables are created with the
appropriate constraints as instructed.*/
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
/* Department table*/
-- 1. Prevent null entries
ALTER TABLE Employee.departments 
MODIFY COLUMN department_name VARCHAR(100) NOT NULL;

-- 2. Prevent duplicate entries
ALTER TABLE Employee.departments 
ADD UNIQUE (department_name);
INSERT INTO employee.departments (department_id, department_name) 
VALUES (101, 'Computer Science');
INSERT INTO employee.departments (department_id, department_name) 
VALUES (101,'CS');
INSERT INTO employee.departments (department_id, department_name) 
VALUES (102,'Computer Science');
/*
Location Table:
⦿ Establish a mechanism to automatically generate unique identifiers for
each location, ensuring that they are incremented sequentially.
⦿ Implement constraints to prevent the insertion of null and duplicate
locations
*/
-- 1. Ensure location_id is AUTO_INCREMENT and a Primary Key
ALTER TABLE employee.location 
MODIFY COLUMN location_id INT AUTO_INCREMENT;

-- 2. Prevent null entries for the location name
ALTER TABLE employee.location 
MODIFY COLUMN location VARCHAR(100) NOT NULL;

-- 3. Prevent duplicate entries for the location name
ALTER TABLE employee.location 
ADD UNIQUE (location);

INSERT INTO employee.location (location) 
VALUES ('KTM');
select * from location;
-- unique contraint check
INSERT INTO employee.location (location) 
VALUES ('Kochi');
/*--Employees Table*/
create table employees(employee_id int primary key,employee_name varchar(50) not null,
gender enum('M','F'),age int check(age>=18),hire_date date default(current_date),designation varchar(100),
department_id int references departments(department_id),location_id int references location(location_id),salary decimal(10,2));
INSERT INTO employee.employees (employee_id, employee_name, gender, age, designation, department_id, location_id, salary) 
VALUES (1, 'Rahul', 'M', 25, 'Developer', 101, 2001, 45000.00);
select * from employees;
INSERT INTO employee.employees (employee_id, employee_name, gender, age, designation, department_id, location_id, salary) 
VALUES (4, 'Arun', 'M', 17, 'Intern', 101, 2001, 20000.00);
INSERT INTO employee.employees (employee_id, employee_name, gender, age, designation, department_id, location_id, salary) 
VALUES (3, 'Priya', 'X', 26, 'HR', 101, 2001, 38000.00);