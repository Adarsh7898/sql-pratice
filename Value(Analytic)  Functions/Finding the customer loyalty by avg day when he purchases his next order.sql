-- Finding the customer loyalty according to the average days he makes a new purchase.

SELECT customerID, CAST(AVG(differenceBetweenTheNextPurchaseDate) AS float) AS averageDaysOfPurchasingSomethingNew,
RANK() OVER(ORDER BY CAST(COALESCE(AVG(differenceBetweenTheNextPurchaseDate),999999999999) AS float)) customerLoyaltyRanking
FROM (
SELECT customerId, orderDate,
LEAD(orderDate) OVER(PARTITION BY customerID ORDER BY orderDate) AS nextDayToMakePurchase,
DATEDIFF(LEAD(orderDate) OVER(PARTITION BY customerID ORDER BY orderDate),orderDate)  differenceBetweenTheNextPurchaseDate
FROM orders)t1
GROUP BY CustomerID