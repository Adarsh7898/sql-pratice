-- Identify the duplicates and remove them from the table using ROW_NUMBER() 

-- LET'S UNDERSTAND WHAT DOES THE DUPLICARE MEAN HERE IN THE ORDER TABLE
-- Suppose there is a product which has the order id 1 now the order is in two statuses one in Shipped and another is in pending, 
-- so here duplicate orderId resides in the same table. We know there should only be one row which has the status shipped as it is 
-- the latest information about the order..... 


SELECT orderID, OrderStatus, creationTime FROM ordersarchive; -- we can clearly see the problem using this query 

SELECT * FROM (
SELECT ROW_NUMBER() OVER(PARTITION BY orderID ORDER BY creationTime DESC) AS rn,
orderID, orderStatus, creationTime
FROM ordersarchive)t1
WHERE rn=1
 