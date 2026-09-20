create database aiml1;
use aiml1;

create table department(
deptid int primary key,
deptname varchar(100) not null);

create table proffessor(
profid int primary key,
profname varchar(100) not null,
deptid int,
foreign key(deptid) references department(deptid));

create table couse(
courseid int primary key,
coursename varchar(50),
profid int,
deptid int,
foreign key(profid)references proffessor(profid),
foreign key(deptid)references department(deptid));

create table student(
studid int primary key,
studname varchar(50),
deptid int,
foreign key(deptid) references department(deptid));
