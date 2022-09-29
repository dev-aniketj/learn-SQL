# new table customer by nikhil
create table customer(
id int primary key auto_increment,
name varchar(50) ,
rollno varchar(10)
);
select * from customer;
delete from customer where id=103;

update customer set id=105 where id=102;
insert into customer(id,name,rollno) values(101,"Nikhil kumar","21mcan109"),(105,"Aniket Jain","21mcan072");

insert into customer(name,rollno) values("prerit","21mcan067"),("prakhar","21mcan105");
select * from customer where rollno="21mcan109";
insert into customer(name,rollno) values("Nikhil kumar","21mcan106"),("prerit","21mcan135");
select distinct name from customer ;
select count(rollno) from customer;
select count(*) from customer;
alter table customer add city varchar(20);
select * from customer;
update customer set city="delhi" where id=107;
delete from customer where id=null;
select * from customer where id  between 105 and 107;
select * from customer where id between 105 and 107 and city != ("jaipur"); 
select * from customer where rollno between "21mcan104" and "21mcan109" order by id desc;
select count(distinct rollno,id) as baccha,city from customer  group by city   order by city desc;
select count(distinct name),city from customer group by name ;