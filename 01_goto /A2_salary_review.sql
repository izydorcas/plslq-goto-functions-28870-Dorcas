SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 4500; -- Sample input salary
BEGIN
    IF v_salary >= 7000 THEN
        GOTO high_sal;
    ELSIF v_salary >= 3500 THEN
        GOTO mid_sal;
    ELSE
        GOTO low_sal;
    END IF;

    <<high_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary Grade: High Level (No adjustment needed)');
    GOTO finish;

    <<mid_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary Grade: Mid Level (Standard 5% raise applied)');
    GOTO finish;

    <<low_sal>>
    DBMS_OUTPUT.PUT_LINE('Salary Grade: Low Level (Requires priority review and 10% raise)');
    GOTO finish;

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary Review Process Completed.');
END;
/
