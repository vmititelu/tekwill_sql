CREATE SEQUENCE id_seq
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 99999
NOCACHE
NOCYCLE;

--eroare
SELECT id_seq
FROM dual;

--eroare, mai intai trebuie de apelat nextval
SELECT id_seq.currval
FROM dual;

SELECT id_seq.nextval
FROM dual;

CREATE SEQUENCE s1 START WITH 1;

CREATE TABLE emp
(a1 NUMBER DEFAULT s1.NEXTVAL NOT NULL,
a2 VARCHAR2(10));

INSERT INTO emp (a2)
VALUES ('Vasioc');

INSERT INTO emp (a2)
VALUES ('Marusa');

SELECT *
FROM emp;

INSERT INTO emp (a1, a2)
VALUES (3, 'Frosa');

INSERT INTO emp (a2)
VALUES ('Ghita');

DROP SEQUENCE a1;

