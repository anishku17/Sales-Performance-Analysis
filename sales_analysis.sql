-- Total Sales
SELECT SUM(Quantity * Unit_Price) AS Total_Sales
FROM sales_data;

-- Sales by Region
SELECT Region,
       SUM(Quantity * Unit_Price) AS Region_Sales
FROM sales_data
GROUP BY Region
ORDER BY Region_Sales DESC;

-- Monthly Sales
SELECT strftime('%Y-%m', Order_Date) AS Month,
       SUM(Quantity * Unit_Price) AS Monthly_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- Return Percentage
SELECT 
ROUND(
(SUM(CASE WHEN Returns='Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),2
) AS Return_Percentage
FROM sales_data;
