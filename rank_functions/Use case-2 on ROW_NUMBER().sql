-- Question- Find the customers with loweest total sales 
SELECT * FROM(
SELECT customerID, SUM(sales) AS totalSale, 
	ROW_NUMBER() OVER(ORDER BY SUM(sales) ) customerRank
    FROM orders
    GROUP BY customerID)t1
    
    WHERE customerRank<=2
    
    