#basic
#1.What is the total revenue generated?
select 
	round(sum(price),2) as total_revenue
from order_items;

#2.How many total orders are there?
select 
	count(order_id) as total_orders
from orders;

#3.How many unique customers are there?
select 
	count(distinct customer_unique_id) as total_customers
from customers;

#4.What is the average order value (AOV)?
select 	
	round(sum(oi.price)/count(distinct order_id),2) as avg_order_value
from orders o
join order_items oi
using(order_id);













