SELECT job_id
FROM EMPLOYEES e
NATURAL JOIN jobs j;

--SELECT employees.job_id, jobs.job_id--eroare
SELECT job_id
FROM employees 
NATURAL JOIN jobs;

SELECT *
FROM EMPLOYEES
JOIN departments d
USING (department_id);

SELECT employee_id
      ,last_name
      ,first_name
      ,department_name
      ,job_title
      ,city
      ,street_address
FROM EMPLOYEES
JOIN departments USING (department_id)
JOIN jobs USING (job_id)
JOIN locations USING (location_id);
--JOIN JOB_HISTORY--genereaza eroare, deoarece job_id este in 3 tabele diferite
--USING (job_ID);

SELECT employee_id
      ,last_name
      ,first_name
      ,department_name
      ,job_title
      ,city
      ,street_address
FROM EMPLOYEES
NATURAL JOIN departments
NATURAL JOIN JOBS
NATURAL JOIN locations 
NATURAL JOIN job_history;

SELECT e.employee_id
      --,e.department_id--nu permtie sa specificam tabelul
      ,department_id
      ,d.department_name
FROM EMPLOYEES e
JOIN DEPARTMENTS d
USING (DEPARTMENT_ID);

SELECT e.employee_id
      ,e.last_name
      ,e.first_name
      ,d.department_name
      ,j.job_title
      ,l.city
      ,l.street_address
      ,jh.*
FROM EMPLOYEES e
JOIN departments d ON e.department_id = d.DEPARTMENT_ID
JOIN jobs j ON e.job_id = j.job_id
JOIN locations l ON d.location_id = l.location_id
--JOIN job_history jh ON j.job_id = jh.job_id
JOIN job_history jh ON e.employee_id = jh.employee_id
WHERE jh.START_DATE < jh.END_DATE
ORDER BY 1;

SELECT *
FROM JOB_HISTORY
ORDER BY EMPLOYEE_ID;

SELECT EMPLOYEE_ID, jh1.JOB_ID, jh1.START_DATE, jh1.END_DATE, jh1.DEPARTMENT_ID
 FROM JOB_HISTORY jh1 JOIN JOB_HISTORY jh2 USING (EMPLOYEE_ID)
WHERE jh1.END_DATE > jh2.END_DATE 
ORDER BY EMPLOYEE_ID;

SELECT emp.LAST_NAME, emp.JOB_ID, man.LAST_NAME
FROM EMPLOYEES emp
JOIN EMPLOYEES man
ON emp.MANAGER_ID = man.EMPLOYEE_ID;

SELECT
    *
FROM JOB_GRADES;

SELECT e.LAST_NAME
      ,e.SALARY
      ,j.GRADE_LEVEL
FROM EMPLOYEES e JOIN JOB_GRADES j
ON e.SALARY 
    BETWEEN j.LOWEST_SAL AND j.HIGHEST_SAL;
