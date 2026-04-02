
SELECT ProductID, orderDate, sales,
ROW_NUMBER() OVER(ORDER BY sales DESC ) AS ranks
FROM orders ;