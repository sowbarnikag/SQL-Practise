create database aiml;
use aiml;

create table department(
deptid int primary key,
deptname varchar(100)not null);

create table professor(
profid int primary key,
profname varchar(50) not null,
depid int,
foreign key(depid) references department(deptid));

create table course(
courseid int primary key,
coursename varchar(100) not null,
profid int,
deptid int,
foreign key(profid) references professor(profid),
foreign key(deptid) references department(deptid));

create table student(
studentid int primary key,
studentname varchar(100) not null,
deptid int,
foreign key(deptid) references department(deptid));




