use AbleJobs

select * from Orders

select sum(purch_amt) as Total_purchase_amount
from Orders;

select avg(purch_amt) as average_purchase_amount
from Orders;

select count(Distinct salesman_id) as number_of_salespeople
from Orders;

select count(Distinct customer_id) as number_of_customers
from Orders;
