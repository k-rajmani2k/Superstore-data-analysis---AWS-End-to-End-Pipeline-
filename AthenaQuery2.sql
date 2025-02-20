-- To get the category-wise sum of sales for each product
SELECT category,sum(sales) as category_sales FROM "db_salesproduct"."orders"
group by category
