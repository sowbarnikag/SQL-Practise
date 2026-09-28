create database companytv;
use companytv;

create table employee(
empid int primary key,
empname varchar(50),
department varchar(50),
salary int,
city varchar(50));

insert into employee values
(101,'arun','it',500000,'chennai'),
(102,'sneha','cs',65362200,'selam'),
(103,'sowbar','finanace',80000000,'trichy'),
(104,'uma','hr',4500000,'coimbatore'),
(015,'nika','hr',5000000,'chennai');

select empname,salary from employee where salary>(select avg(salary) from employee);

select empname,salary from employee where salary=(select max(salary) from employee);

select empname,salary from employee where salary>(select salary from employee where empname='arun');

select empname,department from employee where department=(select department from employee where empname='arun');

select empname,department from employee where department in(select department from employee group by department having count(*)>1);

