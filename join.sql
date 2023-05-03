select * from manager; 
-- finding out the second largest salary from manager table

select name_,salary from manager order by salary desc limit 1,1;

-- finding the third largest and in the below 1 is limiting the number of values to display

select name_,salary from manager order by salary desc limit 2,1;

-- finding the first largest element
select name_,salary from manager order by salary desc limit 0,1;

-- to find the common data we use join 

create table package(
id int,orderdate date,customerid int);
create table customer4(
customerid int,cust_name varchar(30),conatct_name varchar(30));

insert into package values(23,'2023-04-19',209),(45,'2022-03-21',256),
(32,'2020-02-23',278),(67,'2023-05-08',210);

insert into customer4 values(209,"ram","sisu"),(45,"hari","vish"),
(278,"soumya","sree"),(290,"thar","ayan");
insert into customer4 values (296,"ramya","rekkha"),(90,"keer","keerthi");
select * from package;

-- joining package and customer table by considering on custid

select package.id ,customer4.cust_name,package.orderdate from package
inner join customer4 on package.customerid=customer4.customerid;

create table staff(
id int,name_ varchar(30),age int,package int);
create table payment(
payid int,paydate date,staffid int,amount int);

insert into staff values(56,"keer",78,78000),(34,"kerthi",56,98000),
(67,"ram",21,90000);
insert into payment values(789,'2023-09-23',56,89765),(678,'2023-04-21',34,8796543),
(908,'2021-07-09',789,456789),(783,'2022-09-07',34,5678);
select * from staff;
select * from payment;

select s.id,name_,age,amount from staff s ,payment p where s.id = p.staffid;
alter table package add shipping_id int;
select * from package ;
update package set shipping_id =1234 where id=23;
update package set shipping_id =1235 where id=45;
update package set shipping_id =1236 where id=32;
update package set shipping_id =1237 where id=67;

create table shipping(
shipping_id int,name_ varchar(30));

insert into shipping values(1234,"keer"),(1235,"keerthi"),
(1236,"ram"),(1237,"express");
select * from customer4;

-- joining 3 tables customer4,package,shipping
select  package.id,customer4.cust_name,shipping.name_ 
from((package inner join customer4 on package.id=customer4.customerid)
inner join shipping on package.shipping_id=shipping.shipping_id);

-- left join using packkage and customer4 table
-- it returns matched value and the left table returns values if it is matched and if not returns null

select * from customer4;
select customer4.cust_name,package.id from customer4
left join package on customer4.customerid=package.customerid;
alter table customer4 add country varchar(30);
update customer4 set country='india' where customerid=209;
update customer4 set country='uk' where customerid=45;
update customer4 set country='us' where customerid=278;
update customer4 set country='iran' where customerid=290;
update customer4 set country='pakistan' where customerid=296;
update customer4 set country='china' where customerid=90;

-- right join
-- it returns the details of right table i.e package and common details
select cust_name,country,orderdate from customer4 right join
package on customer4.customerid=package.customerid;
-- order and left join


select customer4.cust_name,package.id from customer4
left join package on customer4.customerid=package.customerid order by customer4.cust_name;

select customer4.cust_name,package.id from customer4
left join package on customer4.customerid=package.customerid 
where customer4.cust_name like 's%' order by customer4.cust_name;

select customer4.cust_name ,package.id from customer4
full join package on customer4.customerid=package.customerid;


select customer4.cust_name ,package.id from customer4
left join package on customer4.customerid=package.customerid
union 
select customer4.cust_name ,package.id from customer4
right join package on customer4.customerid=package.customerid;

-- full join
select cust_name,package.id from customer4
full join package on customerid=package.customerid;


-- while creating table columnname,datatype,other than these are called as constraints

create table test (
id int primary key not null auto_increment,
c2 varchar(30) not null,
c3 varchar(30) default 'softwaredeveloper'
); -- values autoincremented
-- autoincrement works with integer and by default it starts with 0 alter
-- alter table test AUTO_INCREMENT = 100;if we have increment from 100
-- in insert if we donot specify the c3 value then default value will be softwaredeveloper
-- autoincrement used with only primary keyss



