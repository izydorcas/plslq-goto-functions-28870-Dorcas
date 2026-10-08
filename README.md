# plslq-goto-functions-28870-Dorcas
assignment III PL&amp;SQL

This repository contains the complete solution for PL/SQL Individual Assignment III, covering control structures (GOTO statements), user-defined PL/SQL functions, and modular database programming concepts in Oracle SQL/PLSQL.

How to Execute the Project

Follow these steps in order using Oracle SQL*Plus, SQL Developer, or Oracle Live SQL:

Database Setup
Execute the setup script to build the schema (departments, employees, payroll_audit) and populate initial seed data:

@00_setup/create_tables.sql


Compile Functions
Compile all user-defined PL/SQL functions:

@02_functions/B1_fn_annual_salary.sql
@02_functions/B2_fn_years_of_service.sql
@02_functions/B3_fn_calculate_tax.sql
@02_functions/B4_fn_dept_name.sql
@02_functions/C1_fn_validate_payroll.sql


Run GOTO Examples
Execute the GOTO control-flow exercises:

@01_goto/A1_number_classifier.sql
@01_goto/A2_salary_review.sql
@01_goto/A3_illegal_goto.sql
@01_goto/A4_rewrite_no_goto.sql


Run Test & Verification Scripts
Execute test suites to verify functions standalone and within SQL SELECT queries:

@03_tests/test_functions.sql
@03_tests/B5_functions_in_select.sql
@03_tests/test_validate_payroll.sql


Verify Audit Records
Query the audit log table to inspect validation outputs:

SELECT * FROM payroll_audit;


 Task Summary

Part A — GOTO Exercises

A1 — Number Classifier: Uses GOTO labels to categorize numbers into positive, negative, or zero.

A2 — Salary Review: Categorizes salary tiers and applies adjustments using branching labels.

A3 — Illegal GOTO & Fix: Demonstrates PLS-00375 (jumping illegally into an IF block) and provides the corrected control flow structure.

A4 — Rewrite Without GOTO: Refactors the salary review task into standard IF-ELSIF-ELSE logic for improved readability.

Part B — PL/SQL Functions

B1 — fn_annual_salary: Calculates 12-month annual compensation.

B2 — fn_years_of_service: Calculates completed years of employment from hire_date.

B3 — fn_calculate_tax: Applies progressive tax brackets based on annual income.

B4 — fn_dept_name: Resolves department name by ID with error-handling (NO_DATA_FOUND).

B5 — SQL Integration: Combines PL/SQL functions inside a standard SQL SELECT query.

Part C — Combined Tasks & Reflection

C1 — fn_validate_payroll: Integrates functions, checks payroll business constraints, and writes records to payroll_audit.

C2 — Reflection: Analysis of GOTO statements vs. structured programming and benefits of PL/SQL modularization (docs/REFLECTION.md).
