CREATE SYNONYM ang
FOR employees;

SELECT  *
FROM ang;

DELETE FROM ang
WHERE EMPLOYEE_ID = 104;

SELECT  *
FROM EMPLOYEES;

DROP SYNONYM ang;

CREATE INDEX emp_last_name_idx
ON employees (last_name);

SELECT *
FROM USER_INDEXES;

SELECT *
FROM USER_INDEXES
WHERE TABLE_NAME = 'EMPLOYEES';


SELECT
    *
FROM emp_last_name_idx;

SELECT *
FROM user_ind_columns;

CREATE TABLE test_idx
(id NUMBER PRIMARY KEY,
name VARCHAR2(100));

SELECT *
FROM TEST_IDX;

CREATE INDEX id_name_idx ON test_idx(id, name);

INSERT INTO TEST_IDX VALUES (3, 'Vasioc');
INSERT INTO TEST_IDX VALUES (2, 'Marusa');
INSERT INTO TEST_IDX VALUES (1, 'Vaniusa');

CREATE INDEX name_idx_upper
ON test_idx(UPPER(name));

SELECT *
FROM user_ind_columns
WHERE TABLE_NAME = UPPER('test_idx');

SELECT *
FROM user_ind_columns
WHERE TABLE_NAME = 'employees';
