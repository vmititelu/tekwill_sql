SELECT LAST_NAME
      ,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE > (SELECT hire_date
                   FROM employees
                   WHERE last_name = 'Davies');
                   
SELECT LAST_NAME
      ,JOB_ID
FROM EMPLOYEES
WHERE JOB_ID > (SELECT job_id
                   FROM employees
                   WHERE EMPLOYEE_ID = 141);
                   
SELECT LAST_NAME
      ,HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE > (SELECT hire_date
                   FROM employees
                   WHERE last_name = 'Davies');
                   
SELECT LAST_NAME
      ,JOB_ID
FROM EMPLOYEES
WHERE JOB_ID > (SELECT job_id
                   FROM employees
                   WHERE EMPLOYEE_ID > 141);--eroare, deoarece intoarce mai multe valori
                   
SELECT *--LAST_NAME
      --,JOB_ID
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT job_id
                   FROM employees
                   WHERE salary > 5000)--nu va fi eroare, deoarece intoarce mai multe valori
AND phone_number IN (SELECT phone_number
                   FROM EMPLOYEES
                   WHERE phone_number LIKE ('515%'));

SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(salary) 
               FROM EMPLOYEES);
               
SELECT b.STUDENT_ID
      ,MIN(NO_OF_WORKING_DAYS - no_of_days_off) nr_attendance_days
FROM AD_STUDENT_ATTENDANCE a
JOIN AD_STUDENT_DETAILS b
ON a.student_id = b.student_id
GROUP BY b.student_id
HAVING MAX (no_of_working_days - no_of_days_off) > (SELECT MIN(no_of_working_days - no_of_days_off)
                                                    FROM AD_STUDENT_ATTENDANCE a
                                                    JOIN AD_STUDENT_DETAILS b
                                                    ON a.student_id = b.student_id);
                                                    
SELECT
    *
FROM EMPLOYEES
WHERE JOB_ID in (SELECT job_id FROM EMPLOYEES
                 WHERE last_name LIKE 'K%');
                 
SELECT first_name
      ,DEPARTMENT_ID
      ,SALARY
FROM EMPLOYEES 
WHERE (salary, DEPARTMENT_ID) IN (SELECT MIN(Salary), department_id
                                  FROM EMPLOYEES
                                  GROUP by DEPARTMENT_ID)
ORDER BY DEPARTMENT_ID;

SELECT
    *
FROM EMPLOYEES emp
WHERE emp.manager_id NOT IN (SELECT mgr.manager_id
                             FROM EMPLOYEES mgr);

SELECT
    *
FROM EMPLOYEES emp
WHERE emp.manager_id IN (SELECT mgr.manager_id
                             FROM EMPLOYEES mgr
                             WHERE mgr.manager_id > 124
                             );
                             
SELECT t.COURSE_ID
      ,t.COURSE_NAME
      ,y.FACULTY_NAME
      ,y.SALARY
      ,y.MENTOR_ID
FROM AD_COURSE_DETAILS t
JOIN AD_FACULTY_COURSE_DETAILS r
ON t.course_id = r.COURSE_ID
JOIN AD_FACULTY_DETAILS y
ON r.FACULTY_ID = y.FACULTY_ID;
