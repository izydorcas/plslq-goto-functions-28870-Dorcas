CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id IN NUMBER
) RETURN VARCHAR2 IS
    v_monthly_sal NUMBER;
    v_annual_sal  NUMBER;
    v_tax         NUMBER;
    v_status      VARCHAR2(20);
    v_msg         VARCHAR2(200);
BEGIN
    
    SELECT monthly_salary 
    INTO v_monthly_sal
    FROM employees
    WHERE employee_id = p_emp_id;

    
    v_annual_sal := fn_annual_salary(v_monthly_sal);
    v_tax        := fn_calculate_tax(v_annual_sal);

    
    IF v_annual_sal < 10000 THEN
        v_status := 'REJECTED';
        v_msg    := 'Annual salary below minimum threshold ($10,000).';
    ELSIF v_annual_sal > 200000 THEN
        v_status := 'FLAGGED';
        v_msg    := 'Annual salary exceeds standard cap ($200,000).';
    ELSE
        v_status := 'APPROVED';
        v_msg    := 'Payroll record passed all validation checks.';
    END IF;

    
    INSERT INTO payroll_audit (employee_id, annual_salary, tax_amount, status, message)
    VALUES (p_emp_id, v_annual_sal, v_tax, v_status, v_msg);
    
    COMMIT;

    RETURN v_status;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        INSERT INTO payroll_audit (employee_id, status, message)
        VALUES (p_emp_id, 'ERROR', 'Employee ID not found.');
        COMMIT;
        RETURN 'ERROR';
    WHEN OTHERS THEN
        RETURN 'FAILED';
END fn_validate_payroll;
/
