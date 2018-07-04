SELECT *
FROM RECYCLEBIN;

SELECT *
FROM DICTIONARY;

SELECT *
FROM USER_cubes;

SELECT *
FROM USER_types;

SELECT *
FROM USER_objects;

SELECT *
FROM USER_tables;

SELECT *
FROM USER_tables
WHERE TABLE_NAME = UPPER('employees');

SELECT *
FROM USER_tables
WHERE TABLE_NAME LIKE '%EMP%';

SELECT *
FROM SYS.USER_TABLES;

SELECT *
FROM DBA_TABLES;

SELECT *
FROM ALL_TABLES;

DESCRIBE DICTIONARY;

SELECT *
FROM USER_CONSTRAINTS;

DESCRIBE USER_TAB_COLUMNS;

SELECT *
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEES';

SELECT COLUMN_NAME
      ,DATA_TYPE
      ,DATA_LENGTH
      ,DATA_PRECISION
      ,DATA_SCALE
      ,NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'EMPLOYEES';

CREATE TABLE lands
    AS SELECT
        *
    FROM COUNTRIES;
    
SELECT *
FROM LANDS;

COMMENT ON TABLE LANDS
IS 'IAta ca adaug comentariu la tabel';

COMMIT;

all_tab_comments;

ALL_TABLES_COMMENTS;

ALL_TAB_COMMENTS;

USER_TAB_COMMENTS;

SELECT
    *
FROM user_tab_comments;
