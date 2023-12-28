use restaurant_db;

-- View orders table.
SELECT 
    *
FROM
    order_details;

-- What is the date range of the table
SELECT 
    *
FROM
    order_details
order by order_date;

select min(order_date), max(order_date) from order_details;

-- How many orders were made within the date range. How many items were ordered within the date range.
select count(distinct order_id) from order_details;

select count(*) from order_details;

-- Which orders had the most number of items?
select order_id, count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;

-- How many orders had more than 12 items? 
select count(*) from
(select order_id, count(item_id) as num_items
from order_details
group by order_id
having num_items > 12) as num_orders;