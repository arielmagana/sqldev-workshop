CREATE OR REPLACE FUNCTION get_emp_f
    ( p_employee_id employees.employee_id%TYPE
    ) RETURN VARCHAR2
IS
    v_employee_name VARCHAR2(50);
BEGIN
    SELECT last_name || ',' || first_name
    INTO   v_employee_name
    FROM   employees
    WHERE  employee_id = p_employee_id
    ;
    
    RETURN v_employee_name;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error ['||SQLERRM||']');
        RETURN NULL;
END get_emp_f;