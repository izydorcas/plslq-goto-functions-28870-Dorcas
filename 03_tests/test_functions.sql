SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- TESTING INDIVIDUAL FUNCTIONS ---');
    DBMS_OUTPUT.PUT_LINE('Annual Salary ($3000/mo): ' || fn_annual_salary(3000));
    DBMS_OUTPUT.PUT_LINE('Years of Service (2018-03-15): ' || fn_years_of_service(TO_DATE('2018-03-15', 'YYYY-MM-DD')));
    DBMS_OUTPUT.PUT_LINE('Tax for $60,000 Annual: ' || fn_calculate_tax(60000));
    DBMS_OUTPUT.PUT_LINE('Dept Name for ID 10: ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Dept Name for Invalid ID 99: ' || fn_dept_name(99));
END;
/
