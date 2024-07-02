-- Determine the distribution of orders by hour of the day.
SELECT hour(order_time) as hour, count(order_id) as count_orders from  orders
group by hour(order_time);