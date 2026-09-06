# EdX: IBM Data Engineering

## SQL Concepts for Data Engineers

### Module One: Advanced SQL for Data Engineers

Views are named queries that can be used as if they were a table in other queries. Useful for creating data products for users that require a subset of data for security/permission reasons, or multiple tables joined to make it easier for users using the end data to have a simple query. They cannot be created with the order by clause. Also materialised views were not mentioned.

Stored procedures are a set of named statements executed on the database, that can be written in a range of languages. Then can take parameters, perform CRUD operations, and return results to the caller. By performing operations on the database: network traffic can be reduced via less data being sent back and forth, processing can be quicker as it's happening where the data is, and reuse of code if many apps were performing the same checks on the data.

A transaction is an indivisible unit of work, which either completes or all of the changes in the unit of work are rolled back.

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
