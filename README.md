# Data Analysis Mini Projects

This repository contains small data analysis exercises demonstrating SQL queries and analytical thinking.

## Project: Sales Data Exploration

### Objective
Analyze a simple retail dataset to understand revenue patterns and top-performing products.

### Example SQL Queries

Top selling products

SELECT product_name, SUM(price * quantity) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC;

Daily revenue

SELECT date, SUM(price * quantity) AS daily_revenue
FROM sales
GROUP BY date
ORDER BY date;

### Skills Demonstrated
- SQL aggregation
- Data exploration
- Analytical reasoning
- Data-driven insights
