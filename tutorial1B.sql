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
(id int primary key auto_increment, 
name varchar(25),
age int,
gender char(1),
doa date,
city varchar(20));

# insert all data in once
insert into Students values
(1,"aniket", 22, "M", "2016-10-12", "ajmer"),
(2,"chirag", 21, "M", "2016-10-05", "jaipur"),
(3,"chinmay", 22, "M", "2016-10-10", "kota");
select * from students;

# insert data one by one
insert into Students
values(4, "ayush", 24, "M", "2016-09-30", "ajmer");
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

# Having
select city as "City", count(gender) as "Total Genders"
from students group by city 
having count(gender) >= 2;

# Order by
select * from students order by city;
select * from students order by city asc;	#both are same
select * from students order by city desc;

# String functions
select upper('India') as Uppercase;
select lower('India') as Lowercase;
select character_length('India') as 'Character Length';
select name, character_length(name) as 'Total Length'
from students;
select concat('India', ' is', ' in', ' ASIA') as 'Merged Text';
select id, name, age, concat(name, " ", age) as "Name with Age"
from students;
select reverse("India");
select reverse(name) from students;
select replace("Orange is a vegetable", "vegetable", "fruit") as "Sentence";
select length("     India     ");
select length(ltrim("     India     "));
select length(trim("     India     "));
select position("fruit" in "Orange is a fruit") as name;
select ascii('a');
select ascii('A');

# Update
update students set gender=null where id=104;
select * from students;

# Delete table
drop table students
