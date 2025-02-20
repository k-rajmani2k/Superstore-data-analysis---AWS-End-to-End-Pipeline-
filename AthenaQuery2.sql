-- To get the category-wise sum of sales for each product
SELECT category,sum(sales) as category_sales FROM "db_salesproduct"."orders"
group by category


-- ouput 
/*
#	category	category_sales
1	Office Supplies	36346.47999999999
2	Technology	29116.44
3		
4	Furniture	15029.990099999999
*/
