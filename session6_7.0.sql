use Online_Bookstore

select * from Customers_Table
select * from Orders_Table

select distinct c.Customer_Name
from Customers_Table c
inner join Orders_Table o
on c.Customer_ID = o.Customer_ID
where o.Price > 100;

select distinct o.Product
from Orders_Table o
inner join Customers_Table c
on c.Customer_ID = o.Customer_ID
where c.City = (select City from Customers_Table where Customer_Name = 'John Smith');

select Order_ID, sum(Quantity * Price) as Total_Order_Amount
from Orders_Table
where Order_ID in(
select distinct Order_ID
from Orders_Table
where QUantity > 2
)
group by Order_ID;










