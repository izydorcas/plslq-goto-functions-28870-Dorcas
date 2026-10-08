CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
) RETURN NUMBER IS
    v_tax NUMBER := 0;
BEGIN
    IF p_annual_salary IS NULL OR p_annual_salary <= 0 THEN
        RETURN 0;
    ELSIF p_annual_salary <= 25000 THEN
        v_tax := p_annual_salary * 0.05;
    ELSIF p_annual_salary <= 60000 THEN
        v_tax := p_annual_salary * 0.15;
    ELSE
        v_tax := p_annual_salary * 0.25;
    END IF;
    
    RETURN ROUND(v_tax, 2);
END fn_calculate_tax;
/
