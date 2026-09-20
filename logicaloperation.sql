create database employe;
use employe;

create table employee(
employeid int,
employename varchar(50),
employecity varchar(50),
employecountry varchar(30));

insert into employee(employeid,employename,employecity,employecountry)values
(101,'arun','trichy','india'),
(102,'priya','madurai','india'),
(103,'janu','swedan','us');
select*from employee;

select*from employee
where employecity='madurai' and
employecountry='india';

select*from employee
where employecity='madurai' or
employecountry='india';

select*from employee
where not employecountry='india';

create table employeeus(
empid int,
empname varchar(50));

insert into employeeus(empid,empname)values
(101,'lia'),
(102,'noah');


select empname from employeeus union
select employename from employee;

select empname from employeeus union all
select employename from employee;

select empname from employeeus intersect
select employename from employee;

select empname from employeeus except
select employename from employee;