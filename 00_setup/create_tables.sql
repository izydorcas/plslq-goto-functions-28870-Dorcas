

DROP TABLE payroll_audit CASCADE CONSTRAINTS;
DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE departments CASCADE CONSTRAINTS;


CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);


CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    hire_date DATE NOT NULL,
    monthly_salary NUMBER(10,2) NOT NULL,
    department_id NUMBER REFERENCES departments(department_id)
);


CREATE TABLE payroll_audit (
    audit_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    employee_id NUMBER,
    annual_salary NUMBER(12,2),
    tax_amount NUMBER(12,2),
    status VARCHAR2(20),
    message VARCHAR2(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO departments VALUES (10, 'Engineering');
INSERT INTO departments VALUES (20, 'Human Resources');
INSERT INTO departments VALUES (30, 'Finance');

INSERT INTO employees VALUES (101, 'Alice', 'Smith', TO_DATE('2018-03-15', 'YYYY-MM-DD'), 5000.00, 10);
INSERT INTO employees VALUES (102, 'Bob', 'Jones', TO_DATE('2021-06-01', 'YYYY-MM-DD'), 3000.00, 20);
INSERT INTO employees VALUES (103, 'Charlie', 'Brown', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 1500.00, 30);
INSERT INTO employees VALUES (104, 'Diana', 'Prince', TO_DATE('2015-11-20', 'YYYY-MM-DD'), 8500.00, 10);

COMMIT;
