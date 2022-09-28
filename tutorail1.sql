create database example1;
use example1;

# Numeric functions
select abs(-22);
select mod(11, 3) as remainder;
select power(4,2);
select sqrt(144);
select greatest(2,5,10,7,12,11);
select least(2,1,4,0,5,1) as 'smallest number';
select truncate(22.897, 1) as "truncate";
select round(22.8976);
select round(22.897, 2);

# Student Table
create table Students
(id int primary key, 
name varchar(25),
age int,
gender char(1),
doa date,
city varchar(20));

# insert all in once
insert into Students values
(101, "aniket", 22, "M", "2016-10-12", "ajmer"),
(102, "chirag", 21, "M", "2016-10-05", "jaipur"),
(103, "chinmay", 22, "M", "2016-10-10", "kota");
select * from students;

# insert data one by one
insert into Students
values(104, "ayush", 24, "M", "2016-09-30", "ajmer");
select * from students;

# Where 
select * from students where age>20 and age<=22;
select * from students where city="ajmer";
select id,age,name,city from students where city="ajmer";
select * from students where not city="ajmer";
select * from students where city!="ajmer";

# Group by
select city,count(gender) as total_students 
from students group by city;

# Update
update students set gender=null where id=104;

select * from students;