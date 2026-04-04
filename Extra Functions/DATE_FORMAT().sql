-- Usage of DATE_FORMAT() function....

-- Y=2026,        y=26,          M=June,       m=06 ,    D=1st, 2nd, 3rd,   d=01,02,03
SELECT OrderID, DATE_FORMAT(orderDate,'%Y-%m') AS YearAndMonth
FROM orders;

-- y=26,  m=06
SELECT OrderID, DATE_FORMAT(orderDate,'%y-%m') AS YearAndMonth
FROM orders;

-- Y=2026, M=June
SELECT OrderID, DATE_FORMAT(orderDate,'%Y-%M') AS YearAndMonth
FROM orders;

-- D=1st, 2nd, 3rd   
SELECT OrderId, DATE_FORMAT(orderDate,'%D-%M') AS YearAndMonth
FROM orders;


-- d=01,02,03
SELECT OrderId, DATE_FORMAT(orderDate,'%d-%M') AS YearAndMonth
FROM orders;