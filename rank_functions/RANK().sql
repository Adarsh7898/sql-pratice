-- How to use the RANK() function 
-- It handles the ties.
-- It leaves gaps in ranking

SELECT productID, OrderDate, sales,
	RANK() OVER(ORDER BY sales DESC) AS ranks
    FROM orders