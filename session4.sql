use AbleJobs

select salesman_id, name, city, commission
from Sales1
where city in('Paris', 'Rome');

select salesman_id, name, city, commission
from Sales1
where city not in('Paris', 'Rome');

select salesman_id, name, city, commission
from Sales1
where commission between 0.12 and 0.14;

select salesman_id, name, city, commission
from Sales1
where name between 'A' and 'k';

select customer_id, cust_name, city, grade, salesman_id
from Sales2
where cust_name like 'B%';

select customer_id, cust_name, city, grade, salesman_id
from Sales2
where cust_name like '%n';

select salesman_id, name, city, commission
from Sales1
where name like 'N_I%';

select * from Nobel
create table Nobel
(
YEAR int,
SUBJECT varchar(100),
WINNER varchar(100),
COUNTRY varchar(100),
CATEGORY varchar(100)
);
insert into Nobel(YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY)
values(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

select * from Orders
create table Orders
(
ord_no int primary key,
purch_amt decimal(10, 2),
ord_date date,
customer_id int,
salesman_id int,
foreign key (customer_id) references Sales2(customer_id),
foreign key (salesman_id) references Sales1(salesman_id)
);

insert into Orders(ord_no, purch_amt, ord_date, customer_id, salesman_id)
values(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3004, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);


























