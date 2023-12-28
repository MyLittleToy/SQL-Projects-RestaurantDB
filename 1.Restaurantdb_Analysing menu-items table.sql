USE restaurant_db;

-- View menu_items table.
SELECT 
    *
FROM
    menu_items;

-- Find number of items on the menu.
SELECT 
    COUNT(*)
FROM
    menu_items;

-- What are the least & most expensive items on the menu
select * from menu_items
order by price;

select * from menu_items
order by price desc;

-- How many Italian dishes are on the menu?
select count(*) from menu_items
where category = 'Italian';

-- What are the least and most expensive Italian dishes on the menu?
SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price;

SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price DESC;

-- How many dishes per category?
SELECT 
    category, COUNT(menu_item_id) AS num_dishes
FROM
    menu_items
GROUP BY category;

-- What is the average dish price per category?
select category, avg(price) as avg_price
from menu_items
group by category;

