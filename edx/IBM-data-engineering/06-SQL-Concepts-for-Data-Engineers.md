# EdX: IBM Data Engineering

## SQL Concepts for Data Engineers

### Module One: Advanced SQL for Data Engineers

A view is a named query, representing data from base tables, that can be queried as if it were a table. They can be used to show subsets of data only necessary for the end user, combining tables to simplify access to the data. In creation it supports most of the options associated with a SELECT command, but cannot be created with the order by clause.

Didn't mention marerialized views.

Stored procedures are a set of named statements executed on the database, written in a range of languages, taking parameters, perform CRUD operations, and return results to the caller. They allow reduction in network traffic as one call can trigger lots of processing, rather than the client calling the processing steps on their side. Improvement in performance as processing happens where the data is located. Finally reuse of code, and increased security where by clients don't need access to the code or data that the stored procedure uses.

A transaction is an indivisible unit of work, either completes or all changes rolled back, cannot leave in an intermediate stage.

ACID transactions:
* Atomic: All changes are performed or not at all
* Consistent: Data must be in a consistent state before and after transaction
* Isolated: No other process can change the data while the transaction is running
* Durable: The changes by the transaction must persist

BEGIN, COMMIT, ROLLBACK commands are used to control transactions.

### Module Two: JOIN statements

* Inner Join: only the rows that have matches in both tables
* Outer Join: matching rows, with extra rows from one or the other or both tables even where there isn't a match

An interesting join clause I hadn't seen before was the inclusion of a predicate as follows:

```sql
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
FROM EMPLOYEES AS E
LEFT OUTER JOIN DEPARTMENTS AS D
ON E.DEP_ID = D.DEPT_ID_DEP
AND YEAR(E.B_DATE) < 1980;
```

### Thoughts on the Course

Another course that served mostly as a refresher. I had never coded stored procedures in MySQL before, so that was new. It has been a while so I cannot remember how it compares to Oracle and PostgreSQL PL/SQL an PL/pgSQL.

This course took three hours.