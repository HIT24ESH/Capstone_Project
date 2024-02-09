create database Online_Bookstore
use Online_Bookstore
create table Customers_Table
(
Customer_ID int primary key,
Customer_Name varchar(100),
City varchar(100)
);

insert into Customers_Table(Customer_ID, Customer_Name, City)
values(1, 'John smith', 'New York'),
(2, 'Jane Doe', 'Los Angeles'),
(3, 'Bob Johnson', 'Chicago');

select * from Customers_Table

create table Orders_Table
(
Order_ID int primary key,
Customer_ID int,
Product varchar(100),
Quantity int,
Price int,
foreign key (Customer_ID) references Customers_Table(Customer_ID)
);
insert into Orders_Table(Order_ID, Customer_ID, Product, Quantity, Price)
values(1, 1, 'Laptop', 2, 340),
(2, 1, 'Printer', 1, 240),
(3, 2, 'Smartphone', 3, 70),
(4, 3, 'Tablet', 2, 80);

select * from Orders_Table







