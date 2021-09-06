CREATE OR REPLACE PACKAGE BODY employ_dep_post IS
PROCEDURE inc_salary
IS
percents NUMBER (8,4) := 0.05;
sal NUMBER (9,2) := 15000.00;
BEGIN
    UPDATE emplyees 
    SET salary = salary + salary * percents
    where salary < sal;
    percents := 0.03;
    UPDATE emplyees 
    SET salary = salary + salary * percents
    where salary > sal;
    COMMIT;
    EXCEPTION 
    WHEN others THEN
    ROLLBACK;
END;
PROCEDURE sum_salary
is
CURSOR cur IS
select d.name_department dep, SUM(e.salary) summ from emplyees e  INNER JOIN departments d
ON e.ID_DEPARTMENT = d.id
group by d.name_department;
TYPE t_sum_depar_salary IS TABLE OF CUR%ROWTYPE;
l_sum_depar_salary t_sum_depar_salary;
BEGIN
    OPEN cur;
    FETCH cur BULK COLLECT INTO l_sum_depar_salary;
    CLOSE cur;
    FOR I IN l_sum_depar_salary.first .. l_sum_depar_salary.last
    LOOP
        DBMS_OUTPUT.PUT_LINE (l_sum_depar_salary(i).dep || ' ' || l_sum_depar_salary(i).summ);
    END LOOP;
END;
FUNCTION find_employee (tab INTEGER)
RETURN EMPLYEES.SURNAME%TYPE
IS
result EMPLYEES.SURNAME%TYPE;
BEGIN
    SELECT surname INTO result from emplyees e
    WHERE e.TAB_NUMBER = tab;
    return result;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
FUNCTION exec_procedure RETURN VARCHAR2
IS
result VARCHAR2 (250 CHAR);
BEGIN
    inc_salary;
    result := 'exec first_proc';
    sum_salary;
    result := result || ' exec seceond_proc';
    return result;
END;
END;