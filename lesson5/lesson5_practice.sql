--ex. 1
--SELECT student_id, first_name, student_reg_year AS Admission
--FROM AD_STUDENT_DETAILS --True

--ex. 2
--SELECT *
--FROM AD_COURSE_DETAILS --True

--ex. 3
--SELECT student_id, first_name, --lipseste virgula- error 1
--STUDENT_REG_YEAR "Admission initial", STUDENT_REG_YEAR /*Admission*/ + 2 "COURSE EXPIRY" --prima greseala- trebuie de pus in ghilimele sau underscore -error 2  am pus student_reg_year in lpoc de 'Admission'- error 3
--FROM ad_student_details*/

--ex. 4.1
--DESCRIBE AD_COURSE_DETAILS

--ex. 4.2
--SELECT *
--FROM AD_COURSE_DETAILS

--ex. 5a
--DESCRIBE AD_STUDENT_DETAILS

--ex. 5b
--SELECT student_ID, first_name, parent_ID, student_reg_year AS registration
--FROM AD_STUDENT_DETAILS;

--ex. 6
--SELECT DISTINCT name
--FROM AD_EXAM_DETAILS;

--ex. 7
/*SELECT student_ID AS "Student#"
      ,first_name AS "Student"
      ,parent_ID AS "Parent Information"
      ,student_reg_year AS "Registered On"
FROM AD_STUDENT_DETAILS;*/

--ex. 8
--SELECT course_ID || ', ' || COURSE_NAME AS "Course ID and Title"
--FROM AD_COURSE_DETAILS;

--ex. 9
SELECT   EXAM_ID
|| ','|| EXAM_TYPE
|| ','|| START_DATE
|| ','|| NAME
         AS The_output
FROM AD_EXAM_DETAILS