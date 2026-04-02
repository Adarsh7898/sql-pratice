-- How to use DENSE_RANK().
-- It handles ties
-- It doesn't leave  gaps in ranking

SELECT ProductID, orderDate, sales,
	DENSE_RANK() OVER(ORDER BY sales DESC) AS ranks
    FROM orders
    