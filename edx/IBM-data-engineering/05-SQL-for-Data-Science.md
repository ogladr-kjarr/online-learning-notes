# EdX: IBM Data Engineering

## SQL for Data Science

### Module One: Getting Started with SQL

A database is a repository of data, the DBMS providing functionality for adding, modifying, and querying the data, as well as access, organisation, and storage. 

Generally, SQL commands allow for: creating a table, inserting data into the table, selecting data from the table, update data in the table, and delete data from the table.

Retrieving data uses the SELECT statement, a DML query statement, which returns a result set. Using a WHERE clause restricts the result set, requiring a predicate (something that evaluates to True, False, or Unknown). There are helpful expressions that can be used with a SELECT statement: COUNT, DISTINCT, and LIMIT. COUNT retrieves the total number of rows returned by the SELECT query. DISTINCT removes duplicate values from a result set. LIMIT restricts the number of rows retrieved by a SELECT statement and can be used in conjunction with the OFFSET expression.

Insert is another DML statement, where the table and columns are named, followed by the values for insertion. 

```sql
INSERT INTO table_name (column1, column2 ...,columnN) 
VALUES ('v1','v1' ..., 'vN')
```

It is possible to insert multiple rows at once separating the () holding the values with a comma.

The update statement is used to modify data in a table.

```sql
UPDATE table_name 
SET column_name = value 
WHERE condition
```
The delete statement removes rows, either the whole table, or restricted using a where statement.

### Module Two: Introduction to Relational Databases and Tables

An Entity-Relationship model is used as a tool to design databases, comprised of entities and attributes. Entities become tables, attributes are columns. Primary keys uniquely identifies each tuple in a table, and a foreign key are primary key entries inserted into related tables to provide a link.

SQL statements are either DDL or DML. DDL is used to define, change, or drop data structures within the database. CREATE, ALTER, TRUNCATE, and DROP are common commands

### Module Three: Intermediate SQL

A WHERE clause can be used with multiple different types of predicate. One is using with string patterns such as below which searches for any string starting with the letter R:

```sql
WHERE column1 like 'R%'
```

Another is defining a range of values such as:

```sql
WHERE column1 BETWEEN 290 AND 300
```

A set of values can also be used:

```sql
WHERE coloumn1 in ('AU', 'BR')
```

---

Sorting a result set is done by using selected columns and ascending or descending function

```sql
ORDER BY column1 DESC, column2 ASC 
```

---

The DISTINCT clause returns only rows in the result set that are a distinct set of columns

```sql
SELECT DISTINCT column1, column2 
FROM table
```
---
The COUNT and GROUP BY can be used to count subgroups of results, with HAVING as a predicate. A WHERE clause applies to every row in the result set, but the HAVING clause only filters the GROUP BY clause. 

```sql
SELECT column1, COUNT(column1) AS counted_column1 
FROM table 
GROUP BY column1
HAVING count(column1) > 4
```

---

Built-in functions can be used to manipulate data within SELECT statements, to limit data transported and data processing. You can also make your own functions.

Aggregate functions takes a collection of like values and returns a single value, such as SUM(), MIN(), MAX(), AVG() etc.

Scalar functions perform operations on individual values, like ROUND(), LENGTH(), UCASE() etc. The latter two are string scalar functions.

```sql
SELECT *
FROM table
WHERE LCASE(column1) = 'value1'
```

Date and time functions are useful for date and time parsing, extracting parts of a date or time.

Column expressions allow queries to be enclosed as a column in a result set.

```sql
SELECT id, salary,
    (SELECT AVG(salary) from employees) AS avg_salary
FROM employees
```

Derived tables or table expressions are where the sub-query is used as the FROM clause rather than querying a table.

---

Joining tables can be done in multiple ways, the simplest is shown below with implicit joins.

```sql
SELECT * 
FROM employees E, departents D
WHERE E.DEP_ID = D.DEP_ID
```

### Module Four: Accessing Databases with Python

In Python database access is used through DB API libraries. They tend to have two main concepts: connection objects and cursor objects. Connection objects manage the connection and transactions, the cursor for running queries.

Connection objects provide methods like the following:

* cursor()
* commit()
* rollback()
* close()

While cursor methods include:

* callproc()
* execute()
* executemanth()
* fetchone()
* fetchmany()
* fetchal()
* nextset()
* arraysize()
* close()

Introduced magic statements in Jupyter notebooks, with inline sql commands using %sql.

### Module Five: Project

The project was fun, below are notes to aid memory of commands and SQL queries.

```python
import pandas as pd
import sqlite3

conn = sqlite3.Connection("FinalDB.db")
%load_ext sql   
%sql sqlite:///FinalDB.db

%%sql 
    select community_area_number
    from chicago_crime_data 
    group by community_area_number
    order by count(*) desc limit 1;
```

