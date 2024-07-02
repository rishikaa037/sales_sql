 -- List the top 5 most orderec pizza types 
SELECT pt.name, SUM(od.quantity) as quantityy
FROM pizza_types pt
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id
JOIN order_details od ON od.pizza_id = p.pizza_id
GROUP BY pt.name 
ORDER BY quantityy desc
limit 5;

