use AbleJobs

update Sales1
set commission = 0.22
where name = 'Pit Alex';
update Sales1
set city = 'Paris'
where salesman_id = 5003; 

select * from Sales1

update Sales2
set grade = 300
where cust_name = 'Graham Zusi';
update Sales2
set city = 'London'
where customer_id = 3009;

select * from Sales2

