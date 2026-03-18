USE PcSales;

-- BASIC QUESTIONS
SELECT *
FROM pc_data;

-- 1. Count the total number of sales records.
SELECT
COUNT (Customer_Name) Number_of_Sales
FROM pc_data;

-- 2. Count the number of sales per Continent.
SELECT
Continent,
COUNT (Customer_Name) AS Number_of_Sales
FROM pc_data
GROUP BY Continent;

-- 3. Count the number of sales per Country or State.
SELECT
Country_or_State,
COUNT (Customer_Name) AS Number_of_Sales
FROM pc_data
GROUP BY Country_or_State;

-- 4. List all distinct Shop Name values.
SELECT
DISTINCT Shop_Name
FROM pc_data;

-- 5. Find the average Sale Price.
SELECT
AVG (Sale_Price) AS Average_Sales_Price
FROM pc_data;

-- 6. Find the highest and lowest Sale Price.
SELECT
MAX (Sale_Price) AS Highest_Sale_Price,
MIN (Sale_Price) AS Lowest_Sale_Price
FROM pc_data;

SELECT TOP 1
Sale_Price AS Highest_Sale_Price
FROM pc_data
ORDER BY Sale_Price DESC;

SELECT TOP 1 
Sale_Price AS Lowest_Sale_Price
FROM pc_data
ORDER BY Sale_Price ASC;


-- 7. Count the number of sales by Payment Method.
SELECT
Payment_Method,
COUNT (Customer_Name) AS Number_of_Sales
FROM pc_data
GROUP BY Payment_Method;

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT
Channel,
COUNT (Customer_Name) Number_of_Sales
FROM pc_data
GROUP BY Channel;

-- 9. Count the number of sales by Priority level.
SELECT
Priority,
COUNT (Customer_Name) AS Number_of_Sale
FROM pc_data
GROUP BY Priority;

-- 10. Count the number of distinct PC Make values.
SELECT
PC_Make,
COUNT (Customer_Name) Number_of_Sales
FROM pc_data
GROUP BY PC_Make;
