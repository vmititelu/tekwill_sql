SELECT *
FROM emp2;

ALTER TABLE emp2
MODIFY EMPLOYEE_id PRIMARY KEY;

ALTER TABLE emp2
ADD CONSTRAINT emp_mgr_fk
    FOREIGN KEY (manager_id)
    REFERENCES emp2(employee_id);
    
ALTER TABLE emp2
DROP CONSTRAINT emp_mgr_fk;

UPDATE emp2
SET MANAGER_ID = 106
WHERE EMPLOYEE_ID = 101;

--acum genereaza eroare deoaece manager_id = 106 nue ste pritnre angajati
ALTER TABLE emp2
ADD CONSTRAINT emp_mgr2_fk
    FOREIGN KEY (manager_id)
    REFERENCES emp2(employee_id);

UPDATE emp2
SET MANAGER_ID = NULL
WHERE EMPLOYEE_ID = 101;

--acum permite, deoarece nu mai avem valori inexistente
ALTER TABLE emp2
ADD CONSTRAINT emp_mgr2_fk
    FOREIGN KEY (manager_id)
    REFERENCES emp2(employee_id);

ALTER TABLE emp2
ADD CONSTRAINT emp_dep_id_kf
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id);

ALTER TABLE emp2
DROP CONSTRAINT emp_dep_id_kf;

SELECT *
FROM dept2;

ALTER TABLE emp2
ADD CONSTRAINT emp_dep_id_kf
    FOREIGN KEY (department_id)
    REFERENCES dept2(department_id);

/*ORA-02270: для этого списка-столбца нет подходящего уникального или первичного ключа
02270. 00000 -  "no matching unique or primary key for this column-list"
*Cause:    A REFERENCES clause in a CREATE/ALTER TABLE statement
           gives a column-list for which there is no matching unique or primary
           key constraint in the referenced table.
*Action:   Find the correct column names using the ALL_CONS_COLUMNS
           catalog view*/
           
ALTER TABLE dept2
ADD CONSTRAINT dep_id_pk PRIMARY KEY (DEPARTMENT_ID);

ALTER TABLE emp2
ADD CONSTRAINT emp_dep_id_kf
    FOREIGN KEY (department_id)
    REFERENCES dept2(department_id);

DELETE FROM dept2
WHERE DEPARTMENT_ID = 60;

/*Error report -
ORA-02292: нарушено ограничение целостности (ORA08.EMP_DEP_ID_KF) - обнаружена порожденная запись*/

ALTER TABLE emp2
DROP CONSTRAINT emp_dep_id_kf;


ALTER TABLE emp2
ADD CONSTRAINT emp_dep_id_fk
    FOREIGN KEY (department_id)
    REFERENCES dept2(department_id) ON DELETE CASCADE;
--acum s-a primit, s-au sters cu totul inregistrarile care contin acea valoare

SELECT *
FROM emp2;

ALTER TABLE emp2
DROP CONSTRAINT emp_dep_id_fk;

ALTER TABLE emp2
ADD CONSTRAINT emp_dep_id_fk
    FOREIGN KEY (department_id)
    REFERENCES dept2(department_id) ON DELETE SET NULL;

DELETE FROM dept2
WHERE DEPARTMENT_ID = 20;


--Tabele temporare
CREATE GLOBAL TEMPORARY TABLE cart(n NUMBER, d DATE)
ON COMMIT DELETE ROWS;

INSERT INTO cart
VALUES (1, SYSDATE);

SELECT *
FROM cart;

COMMIT;

CREATE GLOBAL TEMPORARY TABLE emp_details
ON COMMIT PRESERVE ROWS AS
    SELECT * FROM   employees
        WHERE hire_date = SYSDATE;

SELECT  *
FROM EMP_DETAILS;

COMMIT;

INSERT INTO emp_details
VALUES (1,'Vasioc', 'nu are', 'ia ib*l', 'nu are', SYSDATE, 'AD-PRES', 1000, NULL, NULL, 50);
--este un rind
--dupa COMMIT tot ramane

