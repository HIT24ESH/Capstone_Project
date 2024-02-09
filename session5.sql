use AbleJobs

select * from Nobel

select YEAR, SUBJECT, WINNER, CATEGORY
from Nobel
where YEAR = 1970 and SUBJECT = 'Physics'
union
select YEAR, SUBJECT, WINNER, CATEGORY
from Nobel
where YEAR = 1971 and SUBJECT = 'Economics';

select * from Sales1
select * from Sales2

select s.name as salesman, c.cust_name, s.city
from Sales1 s
join 
Sales2 c on s.city = c.city;

select s.name as salesman, c.cust_name, s.city
from Sales1 s
left join 
Sales2 c on s.city = c.city;

select c.cust_name as customer_name, c.city as customer_city, s.name as salesman, s.commission
from Sales1 s
join
Sales2 c on s.salesman_id = c.salesman_id;

select c.cust_name as customer_name, c.city as customer_city, s.name as salesman, s.commission
from Sales1 s
left join
Sales2 c on s.salesman_id = c.salesman_id;


select * from Sales1
where commission > 0.12;

select c.cust_name as customer_name, c.city as customer_city, s.name as salesman, s.commission
from Sales1 s
join
Sales2 c on s.salesman_id = c.salesman_id
where s.city <> c.city and s.commission > 0.12;

select c.cust_name as customer_name, c.city as customer_city, s.name as salesman, s.commission
from Sales1 s
left join
Sales2 c on s.salesman_id = c.salesman_id
where s.city <> c.city and s.commission > 0.12;






