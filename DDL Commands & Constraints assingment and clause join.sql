create database Employee;

use Employee;


-- DEPARTMENTS table
create table DEPARTMENTS(
DEPARTMENT_ID int primary KEY,
DEPARTMENT_NAME varchar(50)
);




-- EPLOYEES table
 create table employees(
 employees_id int primary key,
 employee_name varchar(50),
 gender enum("M","F"),
 AGE INT,
HIRE_DATE DATE,
DESIGNATION varchar(100),
DEPARTMENT_ID INT,
LOCATION_ID INT,
SALARY decimal(10,2)
);





-- LOCATION table
create table Location(
LOCATION_ID INT primary key,
LOCATION varchar(30)
);

select * from employees;
select * from DEPARTMENTS_info;

-- 2.1
alter table employees add email varchar (50);

-- 2.2
alter table employees modify DESIGNATION varchar (50);
-- 2.3
alter table employees drop age;

-- 2.4
alter  table employees rename column hire_date to  date_of_joining;





-- 3.1
rename table DEPARTMENTS to DEPARTMENTS_info; 


-- 3.2
rename table LOCATION to LOCATIONS;




 
-- 4
truncate table employees;

-- 5
drop table employees;
drop database Employee;


-- Constraints :

-- 1
drop database if exists employee;

create database Employee;

use Employee;


-- DEPARTMENTS table
create table DEPARTMENTS(
DEPARTMENT_ID int primary KEY,
DEPARTMENT_NAME varchar(50) primary key unique
);




-- EPLOYEES table
 create table employees(
 employees_id int primary key,
 employee_name varchar(50),
 gender enum("M","F"),
 AGE INT,
HIRE_DATE DATE,
DESIGNATION varchar(100),
DEPARTMENT_ID INT,
LOCATION_ID INT,
SALARY decimal(10,2)
);





-- LOCATION table
create table Location(
LOCATION_ID INT primary key,
LOCATION varchar(30)
);

-- 2.1

alter table departments modify department_name varchar(50) unique; 
alter table departments modify department_name varchar(50) unique not null; 

-- 3.1
alter table location modify location_id int auto_increment;
alter table location modify location varchar(30) unique not null;


-- 4.2
alter table employees modify employee_name varchar(50)  not null;

-- 4.3
ALTER TABLE employees
ADD CONSTRAINT chk_gender
CHECK (gender IN ('M', 'F'));

-- 4.4
alter table employees add constraint check(age>=18);

-- 4.5
alter table employees modify HIRE_DATE date default ("current date");

-- 4.6
alter table employees add constraint fk_employees_department
foreign key (department_id) references departments(department_id);


-----------------------------------------------------------------
----------------------------------------------------------------
-- second assingment

use Employee;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

select * from location;

INSERT INTO employees (employees_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

--------------


-- 1
select distinct salary 
from employees;

-- 2 alias
select age as Employee_Age , salary as Employee_salary
from employees;

-- 3 
select * from employees
where Salary >50000 and 
 hire_date < 2016-01-01;
 
 ------------------
 
 select * from employees 
 where designation is null;
 

SELECT  *
FROM Employees
WHERE designation IS NULL;

UPDATE Employees
SET designation = 'Data Scientist'
WHERE Employees_ID = 5004;

select * from  employees
where employees_id = 5004;

 -- sorting and grouping data:
 
 -- 1
 select *  from employees
 order by Department_ID asc, Salary desc;
 
 -- 2

 select * from employees
 where year(hire_date) =2018;
 
 -- 3
 select sum(salary) 
 from employees e
 inner join departments d
 on e.Department_ID = d.Department_ID
 where Department_Name ='finance';
 
 
 select min(age) from employees;
 
 
 -- group by
-- 1
select l.location,
 max(e.salary)
from employees e
inner join location l
on e.location_id = l.location_id
group by l.location;


-- 2
select designation,
avg(salary)
from employees
where designation like '%Analyst%'
group by designation;

-- having
select 
d.department_name,
count(e.EmployeeS_ID)
from departments D
LEFT join employees E
on D.Department_ID = E.Department_ID
group by D.Department_ID , D.Department_name
having  count(e.EmployeeS_ID) < 3;

--------

select 
l.location,
avg(e.age)
from employees e
join location l
on e.location_id = l.location_id
where e.gender = 'f'
group by l.location 
having avg(e.age) < 30;


----------------


-- joins
-- 1 inter join
 
 select 
 e.employee_name,
 e.designation,
 d.department_name
 from employees e
 inner join departments d
 on e.Department_ID = d.Department_ID;
 
 -----------
 -- left join 
 
 select 
 d.department_name,
 count(e.employees_id)
 from departments d
 left join employees e
 on d.Department_ID = e.Department_ID
  GROUP BY d.department_id, d.department_name;
 
 
 ------------- 
 
 -- right 
 
 select 
 l.location,
 e.employee_name
 from  employees e 
 right join location l
 on l.location_id = e.location_id;

 



 