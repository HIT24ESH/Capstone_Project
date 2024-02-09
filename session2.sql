create database AbleJobs
use AbleJobs

create table Sales1 
(
salesman_id int primary key,
name varchar(100),
city varchar(100),
commission decimal(10, 2)
);
insert into Sales1(salesman_id, name, city, commission)
values(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);


select * from sales1

create table Sales2
(
customer_id int primary key,
cust_name varchar(100),
city varchar(100),
grade int,
salesman_id int,
foreign key (salesman_id) references Sales1(salesman_id)
);
insert into Sales2(customer_id, cust_name, city, grade, salesman_id)
values(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'jozy Altidor', 'Moscow', 200, 5007);

select * from Sales2

