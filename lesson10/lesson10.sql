SELECT AVG(salary)
      ,MAX(salary)
      ,MIN(salary)
      ,SUM(salary)
FROM EMPLOYEES
WHERE job_id LIKE '%REP%';

SELECT COUNT(commission_pct)
      ,COUNT(*)
      --,COUNT (*)(commission_pct)
      ,COUNT(NVL(commission_pct,0))
      ,COUNT(DISTINCT salary)
      --,COUNT(DISTINCT *))
FROM EMPLOYEES;

SELECT MIN(hire_date)
      ,MAX(hire_date)
FROM employees;

SELECT department_id
      ,AVG(salary)
FROM employees
GROUP BY DEPARTMENT_ID;

SELECT department_id
      ,ROUND(AVG(salary),2)
FROM employees
GROUP BY DEPARTMENT_ID;

SELECT department_id
      ,ROUND(AVG(salary),2)
FROM employees
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;

SELECT department_id
      ,ROUND(AVG(salary),2)
FROM employees
GROUP BY DEPARTMENT_ID
ORDER BY AVG(salary);

SELECT department_id
      ,job_id
      ,AVG(salary)
FROM EMPLOYEES
GROUP BY department_id, job_id;

--eroare
SELECT job_id
      ,AVG(salary)
FROM EMPLOYEES
GROUP BY department_id;

SELECT department_id
      ,job_id
      ,AVG(salary)
FROM EMPLOYEES
GROUP BY job_id, department_id;

SELECT department_id
      ,job_id
      ,AVG(salary)
FROM EMPLOYEES
GROUP BY department_id, job_id
HAVING AVG(salary)>5000;

SELECT department_id
      ,job_id
      ,AVG(salary)
FROM EMPLOYEES
WHERE last_name LIKE '%d%'
GROUP BY department_id, job_id
HAVING AVG(salary)>5000;

SELECT department_id
      ,job_id
      ,AVG(salary)
FROM EMPLOYEES
WHERE last_name LIKE '%d%'
HAVING AVG(salary)>5000
GROUP BY department_id, job_id;

SELECT department_id
      ,job_id
      ,AVG(salary) AS Sal_Mediu
FROM EMPLOYEES
WHERE last_name LIKE '%d%'
GROUP BY department_id, job_id
HAVING AVG(salary)>5000
ORDER BY Sal_Mediu;

SELECT DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

SELECT MAX(ROUND(AVG(salary),2))
FROM employees
GROUP BY DEPARTMENT_ID;

SELECT COMMISSION_PCT, AVG(salary)
FROM EMPLOYEES
GROUP BY COMMISSION_PCT;

SELECT COUNT(job_id)
FROM employees
GROUP BY job_id
HAVING COUNT(job_id)>1;

SELECT job_id
FROM EMPLOYEES e
NATURAL JOIN jobs j;

--SELECT employees.job_id, jobs.job_id--eroare
SELECT job_id
FROM employees 
NATURAL JOIN jobs;
