-- Combine the menu_items and order_details table into a single table.
SELECT 
    *
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id;
    
-- What were the least and most expensive ordered items? What categories were they in?
SELECT 
    item_name, COUNT(order_details_id) AS num_purchases
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
group by item_name
order by num_purchases;

SELECT 
    item_name, COUNT(order_details_id) AS num_purchases
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
group by item_name
order by num_purchases desc;

SELECT 
    item_name, category, COUNT(order_details_id) AS num_purchases
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchases;

-- What are the top 5 orders that spent the most money?
SELECT 
    order_id, sum(price) as total_spend
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;
 
-- View the details of the highest spend order.  What insights can you gather from the results?
SELECT 
    category, count(item_id) as num_items
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
where order_id = '440'
group by category;


-- BONUS: View the details of the top 5 highest spend orders. What insights can you gather from the results? 
SELECT 
    order_id, category, count(item_id) as num_items
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
where order_id in ('440', '2075', '1957', '330', '2675')
group by order_id, category;

-- Recommended Analysis
-- What were the least and most ordered items? What categories were they in?

-- What do the highest spend orders look like? Which items did they buy and how much did they spend?

-- Were there certain times that had more or less orders?

-- Which cuisines should we focus on developing more menu items for based on the data?