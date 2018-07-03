CREATE OR REPLACE view lands_v
AS SELECT 
        country_id as id,
        country_name as name,
        region_id as reg_id
    FROM COUNTRIES;
    
SELECT *
FROM COUNTRIES;

SELECT *
FROM LANDS_V;

CREATE VIEW dep_50
AS SELECT
        last_name,
        DEPARTMENT_ID,
        JOB_ID
    FROM employees
    WHERE DEPARTMENT_ID = 50
WITH READ ONLY;

SELECT *
FROM EMPLOYEES;

SELECT *
FROM dep_50;

UPDATE LANDS_V
SET NAME = "United Kingdom of Great Britain and Northern Ireland"
WHERE id = 3;

UPDATE LANDS_V
SET NAME = 'United Kingdom of Great Britain and Northern Ireland'
WHERE id = 'UK';

UPDATE LANDS_V
SET NAME = 'Marea Britanie'
WHERE id = 'UK';

ROLLBACK;

SELECT  *
FROM ORA01.LANDS_V;

SAVEPOINT punct1;

DELETE FROM LANDS_V
WHERE id = 'DE';

COMMIT;

ROLLBACK TO SAVEPOINT punct1;

ROLLBACK;