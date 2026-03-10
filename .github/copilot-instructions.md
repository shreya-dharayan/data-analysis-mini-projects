# Copilot Instructions for Data Analysis Mini Projects

## Project Overview
This repository contains SQL-based data analysis mini-projects. The primary focus is the **Sales Data Exploration** project, which demonstrates SQL analytics patterns for exploring retail dataset insights.

## Architecture & Key Files
- **[sales_analysis.sql](../sales_analysis.sql)**: Core analytical queries demonstrating aggregation patterns
  - `SUM(price * quantity)` for revenue calculations
  - `GROUP BY` for categorical analysis
  - `ORDER BY` for result ranking
- **[README.md](../README.md)**: Project documentation with example queries and objectives

## SQL Patterns & Conventions

### Revenue Calculations
The project uses a consistent formula: `SUM(price * quantity) AS [metric_name]`
- Always aggregate at the appropriate level (product, date, customer, etc.)
- Alias calculated fields with descriptive names
- Include ORDER BY DESC for ranking queries

**Example**: Replicate this pattern when adding new revenue-based queries
```sql
SELECT [dimension], SUM(price * quantity) AS total_revenue
FROM sales
GROUP BY [dimension]
ORDER BY total_revenue DESC;
```

### Query Structure
Follow this standard skeleton for analysis queries:
1. SELECT dimensions/aggregations
2. FROM sales table
3. GROUP BY for categorical breakdowns
4. ORDER BY for sorting results

### Common Workflows
- **Adding new analysis**: Create a commented query in `sales_analysis.sql` with clear intent (see existing comments)
- **Testing queries**: Verify GROUP BY includes all non-aggregated SELECT columns
- **Documentation**: Add example output and business insight to README.md objectives

## Data Model (Implied)
The `sales` table contains:
- `product_name`: String identifier for products
- `date`: Date of transaction
- `price`: Unit price
- `quantity`: Units sold
- Likely other customer/order fields (inferred from query patterns)

## Development Notes
- This is a learning/demonstration project - queries focus on clarity over optimization
- All queries should be self-documenting with descriptive aliases
- Comments precede each query to explain analytical intent
- No external dependencies or build processes required
