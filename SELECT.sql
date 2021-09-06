SELECT UPPER (d.NAME_DEPARTMENT) dep, e.SURNAME || ' ' || e.FIRST_NAME || ' ' || e.LAST_NAME fio 
FROM departments d INNER JOIN emplyees e
ON d.id = e.ID_DEPARTMENT
ORDER BY dep, fio 