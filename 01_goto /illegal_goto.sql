SET SERVEROUTPUT ON;

-- Demonstrating Illegal GOTO and its Fix

-- ==========================================
-- 1. ILLEGAL GOTO (Will cause PLS-00375 error if uncommented)
-- ==========================================
/*
DECLARE
    v_counter NUMBER := 1;
BEGIN
    GOTO inner_label; -- ILLEGAL: Jumping directly inside an IF block

    IF v_counter > 0 THEN
        <<inner_label>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/
*/

-- ==========================================
-- 2. CORRECTED VERSION (Fixing illegal transfer of control)
-- ==========================================
DECLARE
    v_counter NUMBER := 1;
BEGIN
    IF v_counter > 0 THEN
        GOTO valid_label;
    END IF;

    GOTO skip_label;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('Fix Executed: Control safely directed inside structured block.');

    <<skip_label>>
    DBMS_OUTPUT.PUT_LINE('Program ended cleanly without syntax error.');
END;
/
