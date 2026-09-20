create database c;
use c;

create table employee(
empid int primary key,
empname varchar(30),
department varchar(30),
salary int);

insert into employee values
(101,'arun','hr',25000),
(102,'priya','finance',35000),
(103,'rahul','hr',28000),
(104,'sneha','marketing',40000),
(105,'kavin','finance',32000);


select count(*) as totalemployees from employee;

select sum(salary) as totalsalary from employee;

select avg(salary) as averagesalary from employee;

select max(salary) as highestsalary from employee;

select min(salary) as lowestsalary from employee;


select department,
count(*) as totalemployees,
avg(salary) as averagesalary from employee group by department;