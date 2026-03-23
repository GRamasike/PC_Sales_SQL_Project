-- INTERMEDIATE QUESTIONS
SELECT *
FROM pc_data;
-- 1. Calculate total revenue (SUM of Sale Price).
SELECT
SUM (Sale_Price) AS Total_Revenue
FROM pc_data;

-- 2. Calculate total profit (SUM of Sale Price - Cost Price).
SELECT
SUM(Sale_Price - Cost_Price) AS Total_Profit
FROM pc_data;

-- 3. Find the average Discount Amount.
SELECT
AVG (Discount_Amount) AS Average_Discount_Amount
FROM pc_data;

-- 4. Calculate total Finance Amount issued.
SELECT
SUM (CAST(Finance_Amount AS MONEY)) AS Total_Finance_Amount
FROM pc_data;

SELECT
SUM(CONVERT(MONEY,Finance_Amount)) AS Total_Finance_Amount 
FROM pc_data

-- 5. Find total revenue per PC Make.
SELECT
PC_Make,
SUM(Sale_Price) AS Total_Revenue
FROM pc_data
GROUP BY PC_Make;

-- 6. Find average Sale Price per Storage Type.
SELECT
Storage_Type,
AVG (Sale_Price) AS Average_Sale_Price
FROM pc_data
GROUP BY Storage_Type;

-- 7. Calculate total revenue per Shop Name.
SELECT
Shop_Name,
SUM (Sale_Price) AS Total_Revenue
FROM pc_data
GROUP BY Shop_Name;

-- 8. Calculate total revenue per Sales Person Name.
SELECT
Sales_Person_Name,
SUM (Sale_Price) AS Total_Revenue
FROM pc_data
GROUP BY Sales_Person_Name;

-- 9. Find average Credit Score per Payment Method.
SELECT
Payment_Method,
AVG (Credit_Score) AS Average_Credit_Score
FROM pc_data
GROUP BY Payment_Method;

-- 10. Calculate total Cost of Repairs per Sales Person Department.
SELECT
Sales_Person_Department,
SUM (CAST(Cost_of_Repairs AS MONEY)) AS Total_Cost
FROM pc_data
GROUP BY Sales_Person_Department;

SELECT
Sales_Person_Department,
SUM (CONVERT(MONEY,Cost_of_Repairs)) AS Total_Cost
FROM pc_data
GROUP BY Sales_Person_Department;
