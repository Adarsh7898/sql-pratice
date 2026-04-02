-- Assigning uniqtue id to each row

SELECT 
ROW_NUMBER() OVER(ORDER BY OrderID) AS UniqueOrderId, 
OrderID, productId, sales
FROM orders