-- USING THE CUME_DIST() function to rank the records on the basis of percentage
SELECT 
orderID, sales, 
CUME_DIST() OVER(ORDER BY orderID) AS cd 
FROM orders
-- WHERE sales=60