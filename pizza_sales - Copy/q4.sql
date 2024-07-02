-- Identify the most common size ordered 
SELECT pizzas.size
FROM pizzas p JOIN 
order_details od
ON p.pizza_id =od.pizza_id
 