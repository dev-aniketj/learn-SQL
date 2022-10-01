create database example2;
use example2;

drop database example2;		# for delete the database

create table Employee(
e_id int auto_increment,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(30),
primary key(e_id)
);

insert into employee values
(1,'Sam', 95000, 45, 'Male', 'Manager'),
(2,'Bob', 72000, 34, 'Male', 'Assistant'),
(3,'Aniket', 85000, 40, 'Male', 'Support'),
(4, 'Anjali', 60000, 23, 'Female', 'Assistant'),
(5, 'Anna', 82000, 28, 'Female', 'HR'),
(6, 'Ayush', 120000, 31, 'Male', 'Senior Developer');

select * from employee;
select e_name, e_age, e_id from employee;

# distinct - it is used where we have to get different different elements or not similar elements.
select distinct e_gender from employee;

# where - it is use to apply condition or filter the data.alter
select * from employee where e_gender='Female';
select e_name from employee where e_age <= 35;
select * from employee where e_salary > 100000;

