create schema employee;
create database employedb;
use employedb;
create table employedetails(
employeeid int,
name varchar(50),
age int,
email varchar(100),
phonenumber int);
insert into employedetails(employeeid,name,age,email,phonenumber)
values
(101,'priya',22,'priya@gmail.com',1234567890),
(102,'suresh',44,'suresh@gmail.com',233345667),
(103,'rai',22,'rai@gmail.com',435467687);
select*from employedetails;
SET SQL_SAFE_UPDATES=0;
update student
set email='suresh33@gmail.com'
where employeeid=102;
select*from employedetails;
alter table employedetails add column salary int;
select*from employedetails;
update employedetails
set salary=2000000
where employeeid=101;
SET SQL_SAFE_UPDATES=0;
update employedetails
set salary=3000000
where employeeid=102;
alter table employedetails change phonenumber mobilenumber int;
select*from employedetails;
delete from employedetails
where salary=0;
select*from employedetails;



