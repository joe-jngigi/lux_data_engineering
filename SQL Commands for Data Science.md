# Essential SQL Commands for Data Science

As a data scientist, having a strong understanding of SQL commands is important for working with large datasets and performing complex analyses. SQL provides a standardized way to interact with databases, making it a universal language for data and database management.

In this article, we will explore some most important SQL commands for data scientists. From querying data to manipulating tables, we will cover the key commands that every data scientist should know. We will also discuss best practices for using SQL, including how to optimize queries and avoid common errors.

I have some SQL script you can use for your queries [here](link.com). These will create a table for your database.

## Data Retrieval

---

### SELECT * FROM

This is used to query data; in simple terms to list or get the data in a given Table. One can manupulate it to get a specific field in a record like shown</br>

```sql
SELECT * FROM agent;
```

![SelectQuery](/sql_images/select_all.png)

Data Retrieval with Simple Conditions _Where_</br>

```sql
SELECT * FROM `agent` WHERE zip = 37119
```

![SelectQuery](/sql_images/select_specific.png)

### Distinct

There are certain times where someone wants to get unique data, eliminating the data that is duplicate. SQL is used to eliminate duplicates from the result set of a SELECT statement. For example one may want to get a list of departments where they are duplicate in a table.</br>

```sql
SELECT DISTINCT SKILL1 FROM employeeskills;
```

![SelectQuery](/sql_images/distinct.png)

### ORDER BY

This is quite a useful when someone us wants to retrieve Data while it is sorted. ORDER BY is used to sort the result set of a SELECT statement in ascending or descending order based on one or more columns. One can specify one or more columns to sort the result set by. The sorting is done in ascending order by default, but one can also specify using the the `DESC` to set the result in descending order.</br>

```sql
SELECT EMPLOYEENAME,TITLE,SKILL2,HIREDATE FROM employeeskills ORDER BY HIREDATE
```

![SelectQuery](/sql_images/orderby.png)

### LIMIT

Sometimes we are only interested in a limited number of records. We may want to retrive like just 7 records from a table. When you use the LIMIT keyword in a `SELECT` query, you can specify the maximum number of rows to return from the result set.</br>

```sql
SELECT * FROM skill LIMIT 7;
```

![SelectQuery](/sql_images/limit.png)

## Aggregations

---
These are functions that operate on a set of values and return a single value. They are used to get a summary of the dataset to gain insights from the underlying data set. Aggregations are often used with the GROUP BY clause. The GROUP BY clause allows you to group data based on one or more columns, and then apply an aggregation function to each group.</br>

### GROUP BY & COUNT()

For the group and count, I chose to get the counts of employees, since it has repeated titles with different employees(I took the last name which will display only for one employee). I have grouped the count with the employee_id, so it returned the count of employees grouped by title and displayed the employee titles.</br>

```sql
SELECT EMPLOYEE_LNAME,EMPLOYEE_TITLE, COUNT(EMPLOYEE_ID) FROM employee GROUP BY EMPLOYEE_TITLE;
```

![SelectQuery](/sql_images/group%20and%20count.png)

```sql
SELECT AMT, COUNT(C_NAME) FROM customer GROUP BY AMT
```

![SelectQuery](/sql_images/Count.png)
>It's important to note that when using the COUNT() function with GROUP BY, you should use the "*" wildcard character instead of a specific column name. This ensures that you are counting the number of rows in each group, rather than the number of non-null values in a specific column.

```sql
SELECT AMT, COUNT(*) FROM customer GROUP BY AMT
```

![SelectQuery](/sql_images/CountAll.png)

### SUM()

SUM() is an aggregation function in SQL that is used to calculate the sum of all the values in a specific column.</br>

```sql
SELECT SUM(AMT) FROM customer;
```

![SelectQuery](/sql_images/sumamt.png)

We can also use the SUM() function in conjunction with other SQL functions such as GROUP BY, ORDER BY, and HAVING, to perform more complex queries and analyses.</br>

```sql
SELECT A_NAME, SUM(AMT) FROM customer GROUP BY A_NAME ORDER BY AMT DESC;
```

![SelectQuery](/sql_images/sumgrp.png)

### AVG()

AVG() is an aggregation function in SQL that calculates the average value of a specific column.</br>

```sql
SELECT AVG(AMT) FROM customer;
```

![SelectQuery](/sql_images/sumgrp.png)

```sql
SELECT A_NAME, AVG(AMT) FROM customer GROUP BY A_NAME;
```

![SelectQuery](/sql_images/avggrp.png)

#### Having

HAVING is a clause in SQL that is used to filter the results of a GROUP BY query based on a given condition.  HAVING clause is similar to the WHERE clause, but it is used with GROUP BY queries.</br>

```sql
SELECT A_NAME, AVG(AMT) as AVG_AMT FROM customer GROUP BY A_NAME HAVING AVG_AMT > 200;
```

![SelectQuery](/sql_images/avgamt.png)

>- _WHERE_ is used to filter data before it is grouped and aggregated. _HAVING_ is used to filter data after it has been grouped and aggregated.</br>
>- Alias is a temporary name given to a table or column in a query result set.It can be used to give a more descriptive name to a column or table oe differentiate columns with same name from different tables

### MIN()

Sometimes someone may want to get the least or the minimum value of a specific column. We can also use it with other SQL functions

```sql
SELECT A_NAME, MIN(AMT) FROM customer
```

![SelectQuery](/sql_images/minamt.png)

This query will group the amount by name and then find the minimum price for each name using the MIN() function.

```sql
SELECT A_NAME, MIN(AMT) FROM customer GROUP BY A_NAME;
```

![SelectQuery](/sql_images/mingrp.png)

## Joins

---

In some cases we may want to do some more complex data manipulation and analysis with data from different tables. In SQL, a join is a method for combining data from two or more tables into a single result set. A join can be performed by joining tables based on a common key.

You can view this example from [Datacamp](https://www.datacamp.com/tutorial/tutorial-sql-commands-for-data-scientists#:~:text=SQL%20course.-,Joins,returned%20values%20ordered%20by%20the%20average%20rating%2C%20with%20the%20highest%20first.,-SELECT%20category.name)

```sql
SELECT column1, column2, ...
FROM table1
JOIN table2
ON table1.column = table2.column;

```

These are the different types of joins</br>

1. INNER JOIN returns only the matching rows between two tables, based on a specified join condition. Non-matching rows are not returned.

1. LEFT JOIN returns all the rows from the left table and the matching rows from the right table. If there is no match in the right table, NULL values will be returned for the corresponding columns.

1. RIGHT JOIN returns all the rows from the right table and the matching rows from the left table. If there is no match in the left table, NULL values will be returned for the corresponding columns.

1. FULL OUTER JOIN returns all the rows from both tables being joined, along with any matching rows. If there is no match in either table, NULL values will be returned for the corresponding columns.

Inner join is the most common, but if you want to use any of them joins, they all have the same syntax you will just need to replace it with the join based on your query requirements.

### INNER JOIN

INNER JOIN is a join where it returns only the rows where there is a match between the specified columns (can be a common key between the tables) in both tables being joined.INNER JOIN is a type of join in SQL that returns only the rows where there is a match between the specified columns in both tables being joined.

```sql
SELECT employee.EMPLOYEE_ID, employee.EMPLOYEE_LNAME, employee.EMPLOYEE_FNAME, certified.CERTIFIED_DATE FROM employee INNER JOIN certified ON employee.EMPLOYEE_ID = certified.EMPLOYEE_ID;
```

![SelectQuery](/sql_images/innerjoin.png)

We can also get data from multiple tables

```sql
SELECT employee.EMPLOYEE_ID, employee.EMPLOYEE_LNAME, employee.EMPLOYEE_FNAME, employeeskills.SKILL2, certified.CERTIFIED_DATE FROM employee INNER JOIN certified ON employee.EMPLOYEE_ID = certified.EMPLOYEE_ID INNER JOIN employeeskills ON employeeskills.EMPLOYEENUMBER = employee.EMPLOYEE_ID GROUP BY employeeskills.ID;
```

![SelectQuery](/sql_images/innerjoinmulti.png)

## Changing Data Types

---

### ALTER TABLE COLUMN DATATYPE

One can change the data type of a column using the ALTER TABLE statement with the MODIFY or ALTER COLUMN clause, depending on the database system you are using. Changing the datatype of a column happens on rare occassions, as because it can result to conversion errors

```sql
ALTER TABLE customer ALTER COLUMN AMT DECIMAL(10,2);
```

### CAST()

CAST() is another SQL function that allows one to convert the data type of a column or an expression into a different data type

```sql
SELECT CAST(order_date AS DATE) FROM orders;
```

> You should note that although both the cast and alter table column have used to change the data of a given column, `alter table column` is used to modify the data type of a column permanently while `cast` is used to temporarily convert data for a specific query or calculation.

### Round()

This SQL function that allows one to round a numeric value to a specified precision. It can be used with both integer and decimal data types. This sql statement is used to round the revenue column in the sales table to two decimal places.

```sql
SELECT ROUND(revenue, 2) FROM sales;
```

## Complex Conditions

---
We can use complex conditions in your queries by combining multiple conditions using logical operators such as AND, OR, and NOT.

### Case Statement
