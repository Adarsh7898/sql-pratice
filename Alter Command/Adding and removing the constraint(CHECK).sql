-- Adding CONSTRAINT(Unique)



-- This is the command to see what commands were executed while creating the table
SHOW CREATE TABLE age_check;

ALTER TABLE age_check
ADD CHECK(age>=18);

ALTER TABLE age_check
DROP CHECK age_check_chk_1 ;