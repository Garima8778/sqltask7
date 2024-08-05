"1) create a report of all state sales, quantity, discount , profit  with following aggregation ,
 sum , avg, min , max, count        
2) get data of all state and city's avg customer age         
3) get data of 2017 to 2018  with product name and sales per quantity                                 
4) create 4 question on your data like above and solve 

--	create a report of all state sales, quantity, discount , profit  with following aggregation ,
 sum , avg, min , max, count --

select sum(sales)as sum_sales,sum(quantity) as sum_quantity,sum(discount)as sum_discount,sum(profit)as sum_profit, 
       avg(sales)as avg_sales,avg(quantity) as avg_quantity,avg(discount)as avg_discount,avg(profit)as avg_profit, 
       min(sales)as min_sales,min(quantity) as min_quantity,min(discount)as min_discount,min(profit)as min_profit, 
       max(sales)as max_sales,avg(quantity) as max_quantity,max(discount)as max_discount,max(profit)as max_profit,
       count(sales)as total_sales,count(quantity) as total_quantity,count(discount)as total_discount,count(profit)as total_profit 
from sales as s
inner join customer as c
on s.customer_id = c.customer_id
inner join product as p
on s.product_id = p.product_id
group by sales


--	 get data of all state and city's avg customer age --

select * from customer
select * from sales
select * from product
	
select state,city,avg(age)as avg_age
from customer as c
group by c.state,c.city

---	get data of 2017 to 2018  with product name and sales per quantity---

select * from sales as s
select * from customer as c
select * from product as p

select p.product_name,s.sales,s.quantity
from product as p
inner join sales as s
on p.product_id=s.product_id
where ship_date between '2017-11-06'and '2018-08-06'

--create 4 question on your data like above and solve 


1. How can I retrieve all orders placed by customers along with customer details?
select * from customer
select * from sales

select distinct s.order_id,c.customer_name,c.age,c.country,c.city,c.state,c.postal_code,c.region
from sales as s
inner join customer as c
on s.order_id = s.order_id

2.How can I list all products purchased by a customer along with the order details?

select * from customer
select * from sales
select * from product


select p.category,s.order_id,s.order_date,s.quantity from sales as s
inner join customer as c
on c.customer_id = s.customer_id
inner join product as p
on p.product_id = s.product_id

