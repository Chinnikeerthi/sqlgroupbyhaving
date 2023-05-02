-- extract 
-- alias
-- groupby
-- having
create table car(
carno int ,carname varchar(30),
carprice int,carquanttity int);
insert into car values(2333,"maruthi",67000,1),(1456,"suzuki",56789,2),
(123,"bmw",234567,5);
insert into car values(24567,"tata",67000,6),(456789,"tesla",56789,3);
select * from car;
select   count(carname),carprice from car group by carprice;  -- group by the carname having same price
select   count(carname) as countnumber,carprice from car group by carprice;  -- group by the carname having same price and aliasing using keyword as


-- having clause

select count(carname)  from car group by carprice having carprice >67000;  -- having price greater than
 
select   count(*) from car group by carprice having carprice>56789;  -- group by the carname having same price
 
 create table visit(
 date_ date,price int,duration int);
 insert into visit values('2023-04-19',56789,56),('2023-04-19',45678,67),
 ('2022-03-21',56678,78),('2021-08-23',678,90);
 select date_ ,count(*) from visit group by date_; -- group by having visit on the same date
 select * from visit;
 
 -- extract function
 select extract(year from date_) as year,
 extract(month from date_) as month,
 round(avg(price),2)from visit group by extract(year from date_),extract(month from date_);   -- doing average which will round to decimal value after 2 points it terminates and shows table of year,month,and average table
 
 select extract(year from date_) as year,
 extract(month from date_) as month,
 round(avg(price),2)from visit
 group by extract(year from date_),extract(month from date_) , -- order by year
 extract(month from date_) ,extract(month from date_);   -- doing average which will round to decimal value after 2 points it terminates and shows table of year,month,and average table
 
 select extract(year from date_) as year,
 extract(month from date_) as month,
 round(avg(price),2)from visit
 group by extract(year from date_),extract(month from date_)  -- order by year
 order by extract(month from date_) ,extract(year from date_);   -- doing average which will round to decimal value after 2 points it terminates and shows table of year,month,and average table
 
select extract(year from date_) as year,
 extract(month from date_) as month,
 extract(day from day) as day, -- order by date 
 round(avg(price),2)from visit
 group by extract(year from date_),extract(month from date_) ,
 -- order by year
 extract(day from date_)
 order by extract(month from date_) ,extract(month from date_);   -- doing average which will round to decimal value after 2 points it terminates and shows table of year,month,and average table
 select* from visit;
 
 -- group by entry date which is having count more than 3
 select date_,round(avg(price),2) as avgprice from visit group by date_ having count(*)>2 order by date_;
-- extract mainly used for date

 select date_,round(avg(price),2) as avgprice from visit  where duration >30 
 group by date_ having count(*)>=2 order by date_; -- group by entry date having count greater than 2 and duration greater than 30
 select * from customer;
 
 -- which is going to group by city and counting how many customers frpm that city
 select city,count(*)as customer_city from customer group by city; 
 
 
create table employee(
id int,name_ varchar(30),age int,country varchar(30)
);
insert into employee values(102,"keer",34,"india"),(110,"vish",19,"india"),
(112,"ram",60,"uk"),(122,"hari",50,"us"),(162,"manu",48,"us");
select * from employee;

-- group by country having count gretaer than 2 
select count(country) as countryno,country from employee group by country having count(country)>=2 ;
select country,count(country) from employee group by country 
having min(age)>30;

create table manager(
id int,name_ varchar(30),gender varchar(30) ,age int,salary int);
insert into manager values(9,"abd","m",67,89076),(78,"xyd","f",67,89656),
(98,"pqr","m",45,100000),(67,"tgh","f",53,90000);
select * from manager;
insert into manager values(69,"ram","f",45,90000);
select name_,sum(salary) as totalsalary from manager group by age 
having sum(salary)>90000 order by name_;
select age from manager group by age having count(age)>1;

select gender ,max(salary) as max_salary from manager group by gender having max(salary)<100000;