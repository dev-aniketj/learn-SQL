create database example2;
use example2;

drop database example2;		# for delete the database

create table Employee(
e_id int,
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
select distinct e_name from employee;

# where - it is use to apply condition or filter the data.alter
select * from employee where e_gender='Female';
select e_name from employee where e_age <= 35;
select * from employee where e_salary > 80000;
select * from employee where e_salary>80000 and e_gender='Female';
select * from employee where e_salary>80000 and e_gender='male';

# like - it is use to select the similar kind of answers.
select * from employee where e_age like '3_';

# between - it is use to select the range of the condition.
select * from employee where e_age between 25 and 35;
select * from employee where e_salary between 80000 and 100000;

# MATH FUNCTIONS
# min func.
select min(e_age) as 'Minimum age of employee' from employee;
# max func.
select max(e_salary) as 'Highest Salary' from employee;
# count func.
select count(*) from employee where e_gender='male';
select count(*) from employee where e_gender='female';
# sum func.
select sum(e_salary) as 'Total salary of all Employees' from employee;
# avg func.
select avg(e_age) as 'Average Age of Employees' from employee;

# STRING FUNCTIONS
# ltrim func
select ltrim('     hello') as 'LTRIM()';
# lower func
select lower('HEllO WORLD') AS 'lower()'; 
# upper func
select upper('hello world') AS 'upper()'; 
# reverse func
select reverse('hello') as 'reverse()';
# substring func
select substring('my name is aniket', 12, 6);

# Order by -  it is use to arrange the data in some order(either it is ascending or descending)
select * from employee order by e_salary;
select * from employee order by e_salary desc;
select * from employee order by e_age desc;

# LIMIT N - it is use to get/fetch only top N items/enteries from the entire table.
select * from employee limit 3;

# GROUP BY - it is used to get aggregate result with respect to group.
select avg(e_salary), e_gender from employee group by e_gender;
select avg(e_age), e_gender from employee group by e_gender;
select avg(e_age), e_dept from employee group by e_dept order by avg(e_age) desc;

# HAVING 
select e_dept, avg(e_salary) as avg_salary from employee group by e_dept having avg(e_salary) > 85000;

# UPDATE
select * from employee;
update employee set e_age=25 where e_id=6;


