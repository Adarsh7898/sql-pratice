SELECT name, COALESCE(email,alternateEmail) AS emailAddress
FROM employees
WHERE name='Adarsh';

SELECT name, 
-- If the email table is has null then refer to the alternateEmail column and if it finds null in both columns then display Currently Unavailable
COALESCE(email,alternateEmail,'Currently Unavailable') AS emailAddress
FROM employees
WHERE name='Adarsh' OR student_id=122
