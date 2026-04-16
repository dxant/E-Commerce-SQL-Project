#intermediate
#5.What is the monthly revenue trend?
select 	
	date_format(o.order_purchase_timestamp, '%y-%m') as month,	
    round(sum(oi.price),2) as revenue
from order_items oi
join orders o
using(order_id)
group by month
order by month;

#6.How many orders are placed each month?
select 
	date_format(o.order_purchase_timestamp, '%y-%m') as month,	
    count(order_id) as no_of_orders
from order_items oi
join orders o
using(order_id)
group by month
order by month;

#7.Which month had the highest revenue?
select 
	date_format(o.order_purchase_timestamp, '%y-%m') as month,
    round(sum(oi.price),2) as revenue
from order_items oi
join orders o
using(order_id)
group by month
order by revenue desc
limit 5;

#8.Who are the top 10 customers by total spending?
select 
	o.customer_id,
    round(sum(oi.price),2) as total_spent
from orders o
join order_items oi
using (order_id)
group by o.customer_id
order by total_spent desc
limit 10;

#9.How many customers made only 1 order vs multiple orders?
WITH customer_orders AS (
    SELECT 
        c.customer_unique_id,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o 
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)
SELECT 
    CASE 
        WHEN total_orders = 1 THEN 'One-time'
        ELSE 'Multi-time'
    END AS customer_type,
    COUNT(*) AS num_customers
FROM customer_orders
GROUP BY customer_type;


#10.Which top 5 cities generate the most revenue?
select customer_city, round(sum(oi.price),2) as revenue
from order_items oi
join orders o
using(order_id)
join customers c
using(customer_id)
group by customer_city
order by revenue desc
limit 5;

#11.Which are the top 10 most sold products (by quantity)?
select p.product_id,count(product_id) as quantity
from products p
join order_items oi
using(product_id)
group by product_id
order by quantity desc
limit 10;

#12.Which product categories generate the highest revenue?
select product_category_name, round(sum(price),2) as revenue
from products p
join order_items oi
using (product_id)
group by product_category_name
order by revenue desc
limit 10;

#13.What is the average price per category?
select p.product_category_name, round(avg(oi.price),2) as avg_price
from products p
join order_items oi
using (product_id)
group by product_category_name
order by avg_price desc
limit 10;
