# Essential SQL Commands for Data Science

As a data scientist, having a strong understanding of SQL commands is important for working with large datasets and performing complex analyses. SQL provides a standardized way to interact with databases, making it a universal language for data and database management.

In this article, we will explore some most important SQL commands for data scientists. From querying data to manipulating tables, we will cover the key commands that every data scientist should know. We will also discuss best practices for using SQL, including how to optimize queries and avoid common errors.

I have some SQL script you can use for your queries [here](link.com). These will create a table for your database.

## Data Retrieval

### SELECT * FROM

This is used to query data; in simple terms to list or get the data in a given Table. One can manupulate it to get a specific field in a record like shown</br>
**SELECT * FROM agent;**
![SelectQuery](/sql_images/select_all.png)

Data Retrieval with Simple Conditions _Where_</br>
**SELECT * FROM `agent` WHERE zip = 37119**
![SelectQuery](/sql_images/select_specific.png)

### Distinct

There are certain times where someone wants to get unique data, eliminating the dara data that is duplicate. SQL is used to eliminate duplicates from the result set of a SELECT statement. For example one may want to get a list of departments where they are duplicate in a table.</br>
**SELECT DISTINCT SKILL1 FROM employeeskills;**
![SelectQuery](/sql_images/distinct.png)

### ORDER BY

This is quite a useful when someone us wants to retrieve Data while it is sorted. ORDER BY is used to sort the result set of a SELECT statement in ascending or descending order based on one or more columns. One can specify one or more columns to sort the result set by. The sorting is done in ascending order by default, but one can also specify using the the `DESC` to set the result in descending order.</br>
**SELECT EMPLOYEENAME,TITLE,SKILL2,HIREDATE FROM employeeskills ORDER BY HIREDATE**
![SelectQuery](/sql_images/orderby.png)

### LIMIT

Sometimes we are only interested in a limited number of records. We may want to retrive like just 7 records from a table. When you use the LIMIT keyword in a `SELECT` query, you can specify the maximum number of rows to return from the result set.</br>
**SELECT * FROM skill LIMIT 7;**
![SelectQuery](/sql_images/limit.png)

## Aggregations

These are functions that operate on a set of values and return a single value. They are used to get a summary of the dataset to gain insights from the underlying data set. Aggregations are often used with the GROUP BY clause.</br>
**GROUP BY & COUNT()**
