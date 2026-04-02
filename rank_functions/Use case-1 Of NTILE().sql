-- Question- Divide the table into three segments according to the sales(High, Low, Medium) of the products


SELECT  productID, sales, 
	CASE WHEN bucket=1 THEN 'High' 
	WHEN bucket=2 THEN 'Medium'
	WHEN bucket=3 THEN 'Low'
    END AS salesRanking
    FROM(

SELECT productID, sales, 
	NTILE(3) OVER(ORDER BY sales DESC) AS bucket
    FROM orders
    )t1