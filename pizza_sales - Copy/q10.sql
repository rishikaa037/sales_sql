-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT ROUND(AVG(order_quantity), 0) AS average_PIZZA_ordered_day
FROM (
    SELECT 
        o.order_date, 
        SUM(od.quantity) AS order_quantity
    FROM 
        orders o 
        JOIN order_details od ON o.order_id = od.order_id 
    GROUP BY 
        o.order_date
) AS subquery;
