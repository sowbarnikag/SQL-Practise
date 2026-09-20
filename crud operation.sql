create schema dummy;
use dummy;
create table student(
name varchar(100),
age int,
mail varchar(50));

insert into student(name,age,mail)values
('priya',21,'priya@gmail.com'),
('suresh',24,'suresh@gmail.com');
select*from student;

update student
set age=24
where name='priya';

SET SQL_SAFE_UPDATES=0;
SELECT*FROM student 
