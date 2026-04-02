-- Question- Find the products for each productID which have the highest sales

SELECT * FROM (
SELECT productID, sales, 
RANK() OVER(PARTITION BY productID ORDER BY sales DESC ) AS product_rank
FROM orders
)t1
WHERE product_rank=1
ORDER BY sales DESC;orders
