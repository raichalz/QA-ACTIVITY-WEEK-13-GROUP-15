-- QA ACTIVITY	QUESTION WEEK 13

-- 1. Write SQL queries to create the  table.

CREATE DATABASE employeeDB
USE employeeDB;

CREATE TABLE employee(
emp_id varchar(10) NOT NULL,
emp_name varchar(20)NOT NULL,
gender varchar(5)NOT NULL,
department varchar(20)NOT NULL,
salary int NOT NULL,
dob date NOT NULL,
dateofjoining date NOT NULL,
primary key (emp_id)
);
describe employee;
INSERT INTO employee VALUES
('CPO123','Ann Mery','F','HR',45000,'1989-10-10','2018-01-01'),
('CPO087','Felix M','M','Finance',48000,'1981-04-12','2000-12-10'),
('CPO197','Merlin','M','CEO',80000,'1990-03-01','2011-05-10'),
('CPO213','Philip','M','Retail',47000,'1991-04-01','2012-06-11'),
('CPO243','Michael','M','Retail',40000,'1992-12-01','2016-05-30'),
('CPO289','Susan','F','Retail',40000,'1991-01-01','2016-04-01'),
('CPO298','Abram','M','Relations',30000,'1994-04-17','2016-10-06'),
('CPO300','Alia','F','Relations',30000,'1995-10-17','2016-10-18'),
('CPO321','Raichal','F','Marketing',34000,'1990-10-09','2016-10-22'),
('CPO276','Thomas','M','Marketing',44000,'1983-11-19','2018-10-22')
;
select*from employee;

/*2. Write SQL queries to select employees from the following
departments
a. Marketing
b. Retail
c. HR*/
select *from employee where department='Marketing';
select *from employee where department='Retail';
select *from employee where department='HR';

-- 3. Write SQL queries to create a table only containing female employees.
create table new_table as(select * from employee where gender='F');
describe new_table;
select*from new_table;

-- 4. Write SQL queries to display the Maximum,Minimum and Average Salary.
select max(salary) from employee;
select min(salary) from employee;
select avg(salary) from employee;

/*5. Write SQL query to display the employee details based on the
following conditions.

a. Male employees having salary greater than 40000*/
select *from employee where gender='M' and salary>40000;

-- b. Female employees having salary less than 45000
Select *from employee where gender='F' and salary<45000;

-- c. Employee having salary between 30000 and 60000 and working in Marketing or Retail department
Select *from employee where (department='Marketing' or department='Retail')
                                      and (30000<salary<60000);
