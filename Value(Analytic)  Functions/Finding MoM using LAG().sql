-- Analyze the MoM(Month over Month) change by finding the % change in sales.


SELECT months, currentMonthSale, currentMonthSale-previousMonthSale AS MoM, 
CONCAT(ROUND(CAST((currentMonthSale-previousMonthSale)AS FLOAT)/previousMonthSale*100,2),'%')  AS MoMInPercentage
FROM (
SELECT MONTH(orderDate) months, SUM(sales) AS currentMonthSale,
LAG(SUM(sales)) OVER(ORDER BY MONTH(orderDate)) AS previousMonthSale 
FROM orders
GROUP BY MONTH(orderDate)
)t1