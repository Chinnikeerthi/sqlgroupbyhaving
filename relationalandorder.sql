create database college;
 create table student(
 std_id int primary key not null,
 std_name varchar(30) not null,
 std_marks int not null
 );
insert into student values(2,"keer",89);
insert into student values(3,"keerthi",98);
insert into student values(5,"jo",95);
insert into student values(6,"dhar",94);
insert into student values(7,"hema",95);
insert into student values(8,"bhar",90);
select * from student;
select * from student where std_marks > 91;
select * from student where std_marks <90;
select * from student where std_marks > 91;
select * from student where std_marks !=91;
select * from student where std_marks <> 95;
select * from student where std_marks between 78 and 93;
SELECT * FROM student order by std_name="keer" limit 1;
create table dob(
date_ date not null
);
insert into dob values('2002-03-23');
select * from dob;
select * from rgm;
select * from rgm where college ="rgm" order by RGMstdid limit 5;
select * from rgm where college ="rgm" order by RGMstdid desc limit 5;
create table salesman(
id int primary key not null,
name_ varchar(30) not null,
city varchar(30) not null,
coms float not null
);
insert into salesman values(5001,"jameshoog","newyork",0.15);
insert into salesman values(5002,"nailknite","paris",0.13);
insert into salesman values(5005,"pitalex","lomdon",0.11);
insert into salesman values(5006,"mclyon","paris",0.14);
insert into salesman values(5007,"pauladem","rome",0.13);
insert into salesman values(5008,"lausonhen","sanjose",0.12);
select * from salesman;
select name,coms from salesman;
