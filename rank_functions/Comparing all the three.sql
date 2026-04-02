-- Displayig the ROW_NUMBER(), RANK() and DENSE_RANK() in a single table comparison

SELECT productID, orderDate, sales,
	ROW_NUMBER() OVER(ORDER BY sales DESC) AS order_numbers,
    RANK() OVER(ORDER BY sales DESC) AS ranks,
    DENSE_RANK() OVER(ORDER BY sales DESC) AS dense_ranks
    FROM orders