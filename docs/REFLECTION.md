# PL/SQL Assignment Reflection: GOTO Statements and Functions

## 1. Evaluation of GOTO Statements in PL/SQL
While the `GOTO` statement provides unconditional branching in PL/SQL, its usage is heavily discouraged in modern software engineering for several reasons:
* **Code Readability:** Excessive use of `GOTO` leads to "spaghetti code," making control flow difficult to trace.
* **Maintainability & Debugging:** Code blocks jumped into via `GOTO` obscure execution order and variable scopes.
* **Scope Restrictions:** PL/SQL restricts `GOTO` targets (e.g., jumping inside an `IF` statement, `LOOP`, or sub-block is illegal), reducing its flexibility.

**Better Alternatives:** Structured programming constructs like standard `IF-ELSIF-ELSE` blocks, `CASE` expressions, or loop control statements (`CONTINUE`, `EXIT WHEN`) express control flow far more cleanly.

## 2. Benefits of User-Defined Functions
Modularizing logic into PL/SQL Functions provides:
* **Reusability:** Functions like `fn_calculate_tax` can be invoked across multiple procedures, triggers, and SQL queries.
* **SQL Integration:** Deterministic and side-effect-free functions can directly enhance DML and `SELECT` queries.
* **Maintainability:** Updating a tax band or calculation rule requires changes in only one place.
