SET SERVEROUTPUT ON;

-- Rewriting Salary Review without using GOTO (using clean IF-ELSIF logic)
DECLARE
    v_salary NUMBER := 4500;
BEGIN
    IF v_salary >= 7000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Grade: High Level (No adjustment needed)');
    ELSIF v_salary >= 3500 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Grade: Mid Level (Standard 5% raise applied)');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary Grade: Low Level (Requires priority review and 10% raise)');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary Review Process Completed.');
END;
/
