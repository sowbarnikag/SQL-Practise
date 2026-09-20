create schema bank;
create database bank;
use bank;
create table bankaccount(
serialno int,
name varchar(50),
birthday date,
address varchar(20),
savings int,
withdraw int);
select*from bankaccount;
insert into bankaccount(serialno,name,birthday,address,savings,withdraw)
values
(1,'reo','2007-12-7','madurai',300000,2000),
(2,'priya','2005-3-16','trichy',50000,2500),
(3,'raj','2009-5-19','theni',3500000,20000);
select*from bankaccount;
SET SQL_SAFE_UPDATES=0;
update bankaccount
set address='chennai'
where serialno=2;
select*from bankaccount;
alter table bankaccount add column balance int;
update bankaccount 
set balance=savings-withdraw 
where serialno=3;
select*from bankaccount;

delete from bankaccount
where serialno=3;
select*from bankaccount;



