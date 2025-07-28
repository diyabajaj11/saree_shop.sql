Create database saree;

USE saree;

create table customer(
	customer_id INT PRIMARY KEY,
    name varchar(100),
    email varchar(50),
    phone varchar(15),
    city varchar(20)
    );

create table product(
	product_id int primary key,
    type varchar(20),
    brand varchar(30),
    color varchar(30),
    price decimal(10,2),
    stock int,
    meters int
	);
    
create table orders(
	order_id int primary key,
    customer_id int,
    order_date date,
    amount decimal(10,2),
    foreign key (customer_id) references customer(customer_id)
	);

create table order_item(
	order_item_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    price decimal(10,2),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id)references product(product_id)
	);
    
create table payments(
	payment_id int primary key,
    order_id int,
    payment_method varchar(20),
    status varchar(30),
    foreign key(order_id)references orders(order_id)
	);

insert into customer
values
(1,"diya bajaj","diyabajaj@gamil.com",'4567899876',"pune"),
(2,"Ayush Jain","ayushjain@gamil.com",'456765876',"mumbai"),
(3,"Shreya Bajaj","shreyabajaj@gamil.com",'49879876',"delhi"),
(4,"Priti Bajaj","pritibajaj@gamil.com",'2189987',"banglore"),
(5,"Rutvika","rutvika@gamil.com",'456876876',"indore"),
(6,"chirag shah","chiragshah@gamil.com",'77999876',"nashik"),
(7,"Mayur Jain","mayur_jain@gamil.com",'778678996',"pune"),
(8,"Shreyash Sutar","shreyahssutar@gamil.com",'997645321',"delhi"),
(9,"Aditya Kulkarni","aditya@gamil.com",'997645321',"delhi"),
(10,"Ujjwal Ahire","ujjwal01@gamil.com",'997645321',"jaipur"),
(11,"Asmi jadhav","asmi123@gamil.com",'997645321',"lucknow"),
(12,"tanishka ","tanishkashah@gamil.com",'997645321',"bhopal"),
(13,"ayushi ranka ","ayushi09@gamil.com",'997645321',"udaipur"),
(14,"Khushi shah","khushishah12@gamil.com",'997645321',"banglore"),
(15,"anjali soni ","anjali1@gamil.com",'997645321',"indore");

insert into product
values
(1,"sinthetic saree","laxmipati","red",2500.00,15,6),
(2,"sinthetic saree","ambika","pink",7800.00,10,6),
(3,"sinthetic saree","vishal","orange",500.00,7,6),
(4,"sinthetic saree","laxmipati","yellow",1250.00,10,6),
(5,"sinthetic saree","vishal","green",4500.00,9,6),
(6,"silk saree","chennai silkl","blue",950.00,5,6),
(7,"silk saree","chennai silk","red",10000.00,10,6),
(8,"silk saree","chennai silk","maroon",3500.00,15,6),
(9,"silk saree","banarasi silk","white",800.00,12,6),
(10,"silk saree","banarasi silk","organge",9500.00,10,6),
(11,"silk saree","kashmiri silkl","pink",8050.00,4,6),
(12,"silk saree","kashmiri silk","violet",7900.00,13,6),
(13,"cotton saree","bela","brown",5000.00,12,6),
(14,"cotton saree","bela","green",1200.00,10,6),
(15,"cotton saree","bela","white",1500.00,6,6),
(16,"cotton saree","bela","off white",900.00,9,6),
(17,"cotton saree","bela","yelow",15000.00,9,6),
(18,"georgette","tirupati","green",1340.00,7,6),
(19,"georgette","tirupati","violet",6000.00,14,6),
(20,"georgette","tirupati","blue",1000.00,20,6);

insert into orders
(order_id,customer_id,order_date,amount)
values
(101,1,'2025-01-10',5000.00), -- total amount--
(102,2,'2025-01-12',1200.00),
(103,3,'2025-01-15',1500.00),
(104,4,'2025-01-16',3000.00),
(105,5,'2025-02-5',5000.00),
(106,6,'2025-02-7',3000.00),
(107,7,'2025-02-17',11000.00),
(108,8,'2025-03-18',1900.00),
(109,9,'2025-03-26',4500.00),
(110,10,'2025-03-29',20000.00),
(111,11,'2025-04-2',1000.00),
(112,12,'2025-04-27',6800.00),
(113,13,'2025-05-19',7900.00),
(114,14,'2025-05-30',15000.00),
(115,15,'2025-06-6',30000.00);

insert into order_item
(order_item_id,order_id,product_id,quantity,price)
values
(1,101,1,1,2500.00),
(2,101,1,1,2500.00),
(3,102,14,1,1200.00),
(4,103,15,1,1500.00),
(5,104,15,2,1500.00),
(6,105,13,1,5000.00),
(7,106,3,6,500.00),
(8,107,7,1,10000.00),
(9,107,20,1,1000.00),
(10,108,6,2,950.00),
(11,109,16,5,900.00),
(12,110,13,2,5000.00),
(13,110,7,1,10000.00),
(14,111,3,1,500.00),
(15,111,3,1,500.00),
(16,112,19,1,6000.00),
(17,112,9,1,800.00),
(18,113,12,1,7900.00),
(19,114,17,1,15000.00),
(20,115,10,1,9500.00),
(21,115,10,1,9500.00),
(22,115,7,1,10000.00),
(23,115,20,1,1000.00);

insert into payments
(payment_id,order_id,payment_method,status)
values
(1,101,"UPI","paid"),
(2,102,"cash","paid"),
(3,103,"cash","pending"),
(4,104,"card","paid"),
(5,105,"cash","pending"),
(6,106,"UPI","pending"),
(7,107,"card","paid"),
(8,108,"card","pending"),
(9,109,"UPI","paid"),
(10,110,"cash","paid"),
(11,111,"cash","paid"),
(12,112,"card","pending"),
(13,113,"UPI","paid"),
(14,114,"cash","paid"),
(15,115,"card","pending");

drop table payments;
drop table order_item;
drop table orders;
drop table product;
drop table customer;

-- all customers--
select * from customer;

select * from product;

select * from orders;

select * from order_item;

select * from payments;

-- customer from pune
select *
from customer 
where city="pune";

-- saree price more than 5000
select brand,type,stock,price
from product 
where price>=5000;

-- list of order with customer name --
select order_id,name,amount
from orders as a
join customer as b
on a.customer_id=b.customer_id;

-- total revenue--
select sum(amount)  as total_revenue
from orders;

-- most sold product-- imp
select b.brand,sum(quantity) as total_sold
from order_item as oi
join product as b
on oi.product_id=b.product_id
group by b.brand
order by total_sold desc;

-- max price of a product--
select brand,type,price as max_price
from product
where price=(select max(price) from product)
LIMIT 1;
 
-- max sold--
select order_date,amount as max_sold
from orders
where amount=(select max(amount) from orders);

-- total revenue of 1st 3 months--
select sum(amount) as total_revenue_3_months
from orders
where order_date  < '2025-04-1';

-- update payment
update payments
set status="paid"
where payment_id=3;

-- how many paid and pending --
select payment_method,count(payment_method)
from payments
group by payment_method;

select order_id,payment_method,status
from payments
where payment_method="UPI";

select order_id,payment_method,status
from payments
where payment_method="cash";

select order_id,payment_method,status
from payments
where payment_method="card";

-- combine 3--
select order_id,payment_method,status from payments where payment_method="UPI"
union all
select order_id,payment_method,status from payments where payment_method="cash"
union all
select order_id, payment_method,status from payments where payment_method="card";



