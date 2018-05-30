--SELECT INSTR('Test test test','e', 1, 3)
--      ,INSTR('Test test test','e', 2)
--FROM EMPLOYEES

--SELECT
--    *
--FROM EMPLOYEES

/*SELECT first_name
      ,phone_number
      ,substr(first_name, Instr(lower(first_name),'e'),1)
      ,Instr(first_name, 'n')
      ,length(phone_number)
    
FROM EMPLOYEES
WHERE Instr(lower(first_name),'e')<>0
AND INSTR(phone_number,'.',1,1)<>0
AND INSTR(phone_number,'.',1,2)<>0
AND INSTR(phone_number,'.',1,3)=0;*/
--WHERE length(phone_number = 12)

/*SELECT FIRST_NAME
      ,lpad(first_name, 10, '+')
      ,rpad(first_name, 10, '+')
      ,trim('  fg  g   ')
      ,trim(leading 'e' from 'eeedfdfegeeee')
      ,trim(trailing 'e' from 'eeedfdfegeeee')
      ,trim(both 'e' from 'eeedfdfegeeee')
      ,trim('e' from 'eeedfdfegeeee')
      ,trim(6 from 6666556)
FROM EMPLOYEES;*/

--SELECT PHONE_NUMBER
--      ,replace(first_name, 'e', 'TTTT')
--      ,replace(phone_number,'.','')
--    
--FROM EMPLOYEES


--SELECT round(1489.4585278, 2)
--      ,round(1489.4585278, -2)
--      ,round(1489.4585278, 0)
--      ,round(1489.4585278)
--FROM DUAL

--SELECT trunc(1489.4585278, 2)
--      ,trunc(1489.4585278, -2)
--      ,trunc(1489.4585278, 0)
--      ,trunc(1489.4585278)
--FROM DUAL;


--SELECT mod(100, 7)
--      --,div(100, 7)
--     ,abs(MOD(-3, 2))
--FROM dual;

SELECT sysdate
FROM dual
