SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER := 15; -- Change this value to test different numbers
BEGIN
    IF v_num > 0 THEN
        GOTO pos_label;
    ELSIF v_num < 0 THEN
        GOTO neg_label;
    ELSE
        GOTO zero_label;
    END IF;

    <<pos_label>>
    DBMS_OUTPUT.PUT_LINE('The number ' || v_num || ' is POSITIVE.');
    GOTO end_label;

    <<neg_label>>
    DBMS_OUTPUT.PUT_LINE('The number ' || v_num || ' is NEGATIVE.');
    GOTO end_label;

    <<zero_label>>
    DBMS_OUTPUT.PUT_LINE('The number is ZERO.');
    GOTO end_label;

    <<end_label>>
    DBMS_OUTPUT.PUT_LINE('Classification Complete.');
END;
/
