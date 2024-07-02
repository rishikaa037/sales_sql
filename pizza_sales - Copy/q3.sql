-- Identify the highest price pizza
SELECT pizza_types.name,pizzas.price

FROM pizza_types join pizzas 
on pizza_types.pizza_type_id= pizzas.pizza_type_id
order by pizzas.price desc limit 1;