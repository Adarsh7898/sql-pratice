-- USING THE NTILE() function to make buckets 
-- Definition->NTILE(n) splits your result set into n groups and assigns a number (1 to n) to each row.

SELECT orderID, sales,
NTILE(1) OVER(ORDER BY orderID ) AS oneBucket,
NTILE(2) OVER(ORDER BY orderID ) AS oneBucket,
NTILE(3) OVER(ORDER BY orderID ) AS oneBucket,
NTILE(4) OVER(ORDER BY orderID ) AS oneBucket
FROM orders