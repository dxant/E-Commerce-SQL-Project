#advance
#14.What % of total revenue comes from the top 10% customers?
with customer_spending as (
	select 
		c.customer_unique_id,
        sum(oi.price) as total_spent
	from customers c
	join orders o
	using (customer_id)
	join order_items oi
	using(order_id)
	group by customer_unique_id
	order by total_spent desc),
ranking as (
	select
		customer_unique_id,
		total_spent,
        ntile(10) over(order by total_spent desc) as tile
	from customer_spending),
total_revenue as(
	select sum(total_spent) as total_rev
    from customer_spending),
top10_revenue as (
	select sum(total_spent) as top10_rev
	from ranking
    where tile=1)

select round(top10_rev*100/total_rev,2) as top10_percent_revenue
from total_revenue,top10_revenue;

#15.How many customers made a second purchase within 30 days?
with rownum as (
	select 
		c.customer_unique_id,
		o.order_purchase_timestamp,
		row_number() over(partition by customer_unique_id order by order_purchase_timestamp) as rn
from customers c
join orders o
using(customer_id)
),
first_second as (
	select 
		r1.customer_unique_id,
        r1.order_purchase_timestamp as first_order,
        r2.order_purchase_timestamp as second_order
	from rownum r1
    join rownum r2
    using (customer_unique_id)
	where r1.rn=1 and r2.rn=2)
select count(*) as no_of_customers
from first_second
where datediff(second_order,first_order)<=30;

#16.Group customers by their first purchase month
SELECT 
    cohort_month,
    COUNT(*) AS num_customers
FROM (
    SELECT 
        c.customer_unique_id,
        DATE_FORMAT(MIN(o.order_purchase_timestamp), '%Y-%m') AS cohort_month
    FROM orders o
    JOIN customers c 
    ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
) t
GROUP BY cohort_month
ORDER BY cohort_month;

#Identify high-value vs low-value customers
with rev as (
	select 
		c.customer_unique_id, 
		round(sum(oi.price),2) as revenue
	from customers c
	join orders o
		using (customer_id)
	join order_items oi
		using(order_id)
	group by c.customer_unique_id
),
segment as(
	select 
		customer_unique_id,
		revenue,
		ntile(3) over(order by revenue desc) as seg
    from rev
)
select 
    case
		when seg=1 then 'High Value'
        when seg=2 then 'Medium Value'
        else 'Low Value'
	end as customer_type,
    count(*) as num_customers,
    round(sum(revenue),2) as total_revenue
from segment
group by customer_type;