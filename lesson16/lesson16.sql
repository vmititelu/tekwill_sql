CREATE TABLE dept80
AS
    SELECT *
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = 80;
    
SELECT
    *
FROM dept80;

CREATE TABLE copie_empl
AS
    SELECT *
    FROM EMPLOYEES;
    
SELECT *
FROM COPIE_EMPL;
