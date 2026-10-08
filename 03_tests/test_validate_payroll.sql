SET SERVEROUTPUT ON;

DECLARE
    v_res VARCHAR2(20);
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- RUNNING PAYROLL VALIDATION TESTS ---');
    
    
    v_res := fn_validate_payroll(101);
    DBMS_OUTPUT.PUT_LINE('Emp 101 Validation Result: ' || v_res);

  
    v_res := fn_validate_payroll(103);
    DBMS_OUTPUT.PUT_LINE('Emp 103 Validation Result: ' || v_res);
END;
/


SELECT * FROM payroll_audit;
