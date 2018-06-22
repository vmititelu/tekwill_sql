CREATE TABLE test_table(
 column1 NUMBER CONSTRAINT test_primary_key PRIMARY KEY
,column2 DATE
,column3 NVARCHAR2(15) NOT NULL);

SELECT
    *
FROM TEST_TABLE;

CREATE TABLE test_table2(
 column1 NUMBER 
,column2 DATE
,column3 NVARCHAR2(15) NOT NULL
,CONSTRAINT test_primary_key_2 PRIMARY KEY (column1));



