-- Total revenue by product
SELECT product_name, SUM(price * quantity) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC;

-- Average purchase value
SELECT AVG(price * quantity) AS avg_purchase_value
FROM sales;

-- Daily revenue
SELECT date, SUM(price * quantity) AS daily_revenue
FROM sales
GROUP BY date
ORDER BY date;