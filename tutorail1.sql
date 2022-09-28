create database example1;
use example1;

# Numeric functions
select abs(-22);
select mod(11, 3) as remairnder;
select power(4,2);
select sqrt(144);
select greatest(2,5,10,7,12,11);
select least(2,1,4,0,5,1) as 'smallest number';
select truncate(22.897, 1) as "truncate";
