SELECT * 
FROM coffee.`coffee shop sales`;

-- Total sales record
SELECT ROUND(SUM(unit_price),2) AS Total_Sales
FROM coffee.`coffee shop sales`;

-- Total sales each store
SELECT store_location, ROUND(SUM(unit_price),2) AS total_sales
FROM coffee.`coffee shop sales`
GROUP BY store_location;

-- Total sales each product category
SELECT product_category, ROUND(SUM(unit_price),2) AS Total_sales
FROM coffee.`coffee shop sales`
GROUP BY product_category;