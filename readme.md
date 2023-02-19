<!-- @format -->

# SQL For Data Analysis
SQL is a powerful tool for analyzing data, thanks to its ability to work with multiple databases simultaneously and its use of relational databases. It's a widely used and versatile language that is both user-friendly for beginners and highly advanced for creating sophisticated data analysis tools and dashboards.
In order to dive into SQL for data analysis, wel will dive into some basic questions that one may ask themselves when diving into this field

> - What Data Analysis
> - What is data and big Data, and  data processing
> - What is SQL and how is is used in Data Analysis
> - Dabase and SQL

## Data Analysis
Data analysis is the process of inspecting, transforming, and modeling data in order to extract useful information and draw conclusions from it. Data analysis is a valuable procedure that can minimize the risks associated with decision-making by offering useful insights and statistical information. This information is typically presented through charts, images, tables, and graphs. An everyday example of data analysis occurs when we assess past events or anticipate future outcomes to make decisions. In essence, this involves analyzing the past or the future and using that analysis to make an informed decision.<br>
With the help of data analytics, businesses can better keep track of and understand how they run and what services they offer. It gives them a deep understanding of the problems and experiences of their clients. When businesses shift their focus from data to insights and then take action, they can make their products and services fit the needs of each customer, streamline their processes, and increase output across the board.<br>
Data analysis plays a crucial role in processing big data into useful information.

## Data
**Data**<br>
Data is all information that may be collected, stored, and analyzed for the goal of making decisions or gaining insights is referred to as data. Text, numbers, photos, audio, and video are all examples of data.<br>

**Big Data**<br>
Big data refers to extremely large and complex data sets that cannot be easily processed or analyzed using traditional data processing techniques. These data sets typically contain a wide variety of data types, including structured data (such as data stored in databases or spreadsheets), unstructured data (such as text or multimedia content), and semi-structured data (such as web log files or sensor data).<br>
Big data analytics follows five steps to analyze any large datasets: 
1. Data collection
1. Data storage
1. Data processing
1. Data cleansing
1. Data analysis

## SQL And SQL in Data Analysis
SQL, which stands for "Structured Query Language," is a type of programming language used to manage data in a relational database. A database is an organized collection of data. SQL is useful for conducting aggregations like sums, counts, minimums, and maximums that you would typically perform in an Excel pivot table, but over much bigger datasets and on numerous tables at once.<br>

SQL is widely used in data analysis as it provides a powerful and efficient way to extract, filter, and transform data in a structured and consistent manner.<br>
SQL is used in data analysis to query and manipulate big data sets to derive useful insights. Data analysts can use SQL to collect data from several tables, apply filters to that data based on user-defined criteria, and conduct computations and aggregations on the retrieved data.

>Filtering data: SQL can be used to pull out information that satisfies specific parameters, like only including records that are inside a specified date range or that belong to a specific client.
>Aggregating data: SQL can be used to get the sum, average, and maximum of a group of numbers.
>Data transformation: In order to facilitate analysis, SQL can be used to transform data into a more usable form, for as by transforming dates into a standard format or by adding new variables depending on existing data.
>Joining data: Joining from different sources or tables and it is a powerful feature of SQL.

## Database and SQL Syntax
Database is an electronic filing system. We will use a relational database system. It is a software system from which we can manipulate the data in a database. DB maria will be our database management system. The datatypes used are;

> > `Int` For storing integers
> > `Decimal(m, n)` For storing the decimals, m is the main number and n is number of digits after decimals
> > `BLOB` For storing the large files (Binary large objects) like photos and videos
> > `VARCHAR` For storing strings characters or values
> > `DATE` For storing time date
> > `TIEMSTAMP` For storing the time stamp when something was installed

## The SQL syntax
`CREATE` is used to create a database and table in a database. You start with the command and then the name of the database or the table. After describing the table, the other information describing the attributes of the table are found in brackets, and the statements end with the semicolon.

> `CREATE DATABASE {name_of_database}`
> `CREATE TABLE {name} (student VARCHAR (20) PRIMARY KEY, name VARCHAR );`
> `DROP` is the command for deleting the anything on the Database or the database for that case
> `DESCRIBE` is for displaying information about the table
> `ALTER` is used for altering the table in the database
> `ALTER TABLE {name} ADD (name of column to add)` >`ALTER TABLE {name} DROP COLUMN (name of column to add)`

### Inserting Information
This is inserting the information in the database tables<br>
`INSERT INTO {table name} VALUES (‘Joseph’, ’Physics’,’ Sc200’)`. The data must be put in the older by Which the database table is already.<br>
`SELECT*FROM {table name}` This one displays a table how it looks like or the tables in the databaseAnd how they are laid out.<br>
When inserting information in the database, there some of the members who may not have all the information as required by the database. How to solve this, is just after the table name, you open the brackets and put in the name of the attributes by which all the information is available for input.<br>

```
INSERT INTO employee(`emp_id`, `first_name`, `last_name`, `birth_date`, `sex`, `salary`, `super_id`, `branch_id`) VALUES
('103','Tabby','Mutharu','1999,16,24,','f','60550','3','2')’
```

### Constraint Commands

`NULL` This means that an entity can have no value under the attribute.
These are the unique codes in the SQL syntax from which they affect how the data in the tables are affected. These commands are put when one is creating the tables and their attributes.

1. `NOT NULL` This means that for an entity, the attribute has to have a value for the data inserted to be valid, otherwise there is an error.
2. `UNIQUE` This means that the values for an entity put for an attribute with this parameter is and is only for that entity. No other entity can possess such attributes.
3. `DEFAULT` This is when one can put in something that appears once a column is left blank. Example;` table_name (major VARCHAR (20) DEFAULT ‘undecided’);` In the column this appears as “Undecided” once the pace is left unfilled.
4. `AUTO_INCREMENT` This can be used instead of the primary keys. What happens is that it increments in the series 1, 2, 3…. Once each of the data is inserted in the database. Example; `table_name VARCHAR (20) AUTO_INCTREMENT);`

### Updatind and Deleting

Updating can be used to correct certain data or insert new data of an existing entity into a table. Example, the syntax for updating the data for an entity is `UPDATE table_name SET major = ‘Bio’ WHERE major = ‘Biology’;` This line of SQL will update the table mentioned where the Biology is changed to Bio. Also, we can update other places of the table `UPDATE table_name SET major = ‘Chemistry’ WHERE student_id = ‘4’`.
We can change maybe two or more entities have the different majors but are in the same table<br>
`UPDATE table_name SET major = ‘Bio-Chemistry’ WHERE major = ‘Biology’ OR major=’Chemistry’`<br>

> > Where is used for comparison. Other comparisons are =(Equals), not equal `(<>)`, Greater than `(>)`, Less than `(<)`, less than equals to`(<=)` and greater than equals to`(>=)`.<br>

Deleting is when you want to completely remove a certain entity from the table all delete all the data from the table. The syntax for the above is:

- `DELETE FROM table_name WHERE student_id = ‘3’`
- `DELETE FROM student`

### Basic Queries:

These using various SQL statements so as to get information from a database.<br>
`SELECT` statement in SQL. The select statement tells the database that we want to get some information from it.
`SELECT * FROM table_name` This means that we are going to tell the DB to display the whole of the table. The asterisk means that get everything from the table.<br>
This implies that we can also use select statement to perform actions like Selecting a column in a table. That is SELECT Student_name FROM table_name
`SELECT Student.Student_name, student.major FROM <table_name>`<br>

In the table we can use the ORDER BY command to sort the names in any way like the alphabetical order or the numbered way. You can add the DESC or ASC after specifying on which column you want the name sort.
SELECT Student.Student_name, student.major FROM table_name ORDER BY student_name ASC
You can also use another command called Limit. It limits the results from which you have specified.
`SELECT * FROM student LIMIT 2`
We can also filter the data in the table using the specific information we want. Like for example we want to display a name of a certain student in a table. We can filter this using their student ID by which is Unique for them.
`SELECT student_name FROM student WHERE student_id = 2`
In this case one can use the common operators where the “=” is. The operators are <, >, <>, AND, OR <= and >=
`SELECT * FROM student WHERE Student_id <= 4 AND major <> 'Software Engineering'`

This creates a table with the named columns. There below is a way by which the foreign key is set with the reference to the named table and then the column with which it’s set. This give two tables a relation.

```
CREATE TABLE branch
(
branch_id INT PRIMARY KEY,
branch_name VARCHAR(40),
mgr_id INT,
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

```

**SELECT STATEMENT**<br>
We can change how the name of the databases are changed to whatever we want displayed based on the circumstances one is in.
SELECT student_name AS forename FROM student<br>
**DISTINCT**<br>
In an Example there could be information stored with same data. It gives a list of the different individual data in a column data given like male, female and others.

> `SELECT DISTINCT emp_id FROM works_with ORDER BY emp_id `

### SQL Functions
These are lines of codes that do perform different functions for us like doing averages, adding up the data or counting certain data. They are useful when we are collection and doing analyzation of data to get the information about it. Here are some functions in SQL:

**COUNT()** <br>
This will count the number of employees in the column name and give the number of entities as the function says.<br>
`SELECT COUNT(emp_id)`<br>
`SELECT COUNT(emp_id) WHERE sex = ‘F’ AND birth_date = ‘1980-01-01’`<br>

**AVG()**
This gives the average of whatever you’d want to calculate in any column of any table in the database. Below is the syntax for the average<br>
`SELECT AVG (salary) FROM employee`

**SUM()**<br>
This one finds the sum of the selected column for specified table. You can filter to what is needed.<br>
`SELECT sum(salary) FROM employee`<br>
One can filter to the desired way of how the’d want present on analyse data.<br>

**AGGREGATION**<br>
This is going to specify the name of the sex available on the name. To be more precise like shown below. This is going to show the number of females or males in the given table.
`SELECT COUNT (sex), sex FROM EMPLOYEE`<br>
`SELECT COUNT (sex), FROM employee GROUP BY sex`<br>

# Python for Data Science
Python's ease of use, adaptability, and general-purpose nature have led to the language's widespread adoption in the field of data science. In spite of the fact that it wasn't the first major programming language, its status as one has steadily increased over time. About two-thirds of data scientists in 2018 said they used Python on a daily basis, making it the most popular language among analytics experts.

In order to get started on Python for dta science, it is important to first learn and understand the basics of Python as a Programming language. TO pratices this one need to install an environment to allow us to code Python. There are various ways to achieve this. I will discus two major ways. The first step involves installing a Python environment. This is the best way to learn how to do this as it will give you a chnace on how to setup environments especially if you are using a Linux system. Linux system usually comes pre-installed with Python. 
## Instalation of a Python Environment
**Manual Installation**
Download a the latest version of python.[Python](https://www.python.org/downloads/). Install it on your Windows or MAC. Install a VS code text Editor and navigate to Extensions. Find necessary extensions. My mos prefered is ``Pylance`` as it gives me an intellisense for Python. Here you can practise the Python basics through tutorials, but the best way to learn is through doing simple projecst as you progress and make use of the free documentations from the internet.
>>Note: To use Python files have an extension of `.py`. To make a prject or a file, On your text editor Click on files>New file and name it as -anyname.py- then save it in your favourite place or your projects folder

**Setup and installation of the Python environment for data science(Anaconda, Jupyter Notebook)**
Download and install Anaconda: Anaconda is a free and open-source distribution of Python that includes a large number of data science packages and libraries.[Anaconda](https://www.anaconda.com/products/distribution). Jupyter Notebook is included with Anaconda, so you can start using it right away. The Jupyter Notebook is an open-source web application that lets data scientists make and share documents that include live code, equations, computational output, visualizations, and other multimedia resources, along with explanatory text [JupyterNotebooks](https://odsc.medium.com/why-you-should-be-using-jupyter-notebooks-ea2e568c59f2#:~:text=The%20Jupyter%20Notebook%20is%20an,text%20in%20a%20single%20document.). To launch Jupyter Notebook, open Anaconda Navigator and click on the "Launch" button next to Jupyter Notebook. This will open Jupyter Notebook in your default web browser. Click on the "New" button in the top right corner of the Jupyter Notebook interface and select "Python 3".

## Python data science basics:
**DataTypes**
To learn practise data science, there need to be knowledge for the datatypes used in Python and how to manipulate the. There are four basics datatypes of Python which include
>1. Lists: A list is a collection of items that can be of any type. Lists are mutable, meaning they can be changed after they are created.
>1. Dictionaries: A dictionary is a collection of key-value pairs. Each key is associated with a value, which can be of any type. Dictionaries are mutable, and you can add, remove, or modify key-value pairs.
>1. Tuples: A tuple is similar to a list, but it is immutable, meaning it cannot be changed after it is created. Tuples are often used to represent a collection of related values.

**Tools**
There are many tools and libraries available in Python for data science. The common tools used for Data science in Python include:
>1. NumPy: NumPy is a Python library that is often used to work with numerical data. It gives you tools that are fast and easy to use for working with arrays, which are groups of data that can be any size. NumPy also has a number of functions, like addition, multiplication, and trigonometric functions, that can be used to do math operations on arrays.

>1. Pandas: Pandas is a library for Python that lets you work with data in tables. It has data structures like the Series and the DataFrame, which are like improved lists and dictionaries, respectively. Pandas also has tools that let you read and write data in different formats, like CSV and Excel.

>1. Matplotlib: Matplotlib is a Python library that lets you make visuals of data. It has many tools for making charts and plots, such as line charts, scatter plots, and histograms. Matplotlib can be used to make both static and interactive visualizations that can be saved as image files or put into web applications.

Other common used for machine Learning include
>1. Scikit-learn is a library that is used to teach machines how to do things. It has a lot of algorithms for things like regression, classification, clustering, and reducing the number of dimensions.

>1. TensorFlow is a library that is used to build and train deep learning models. It gives you a strong and flexible base on which to build a wide range of machine learning models.

**Data Cleaning**
Cleaning and manipulating data are important parts of any data science project, since data is rarely clean and organized enough to be analyzed right away.
>1. Aggregating data: Pandas has methods for aggregating data, like groupby(), which groups data by a given column, and aggregate(), which does calculations on grouped data.
>1. Combining data: Methods like merge() and concat can be used to combine data from different sources ().
>1. Handling missing data: Pandas gives you ways to find missing data in a DataFrame, filter it, and fill it in.
>1. Renaming columns: You can change the names of columns in a DataFrame by using the rename() method.
>1. Getting rid of duplicates: The drop duplicates() method can be used to find and get rid of duplicates.
>1. Filtering and sorting data: Methods like loc[, iloc[, and sort values can be used to filter and sort data ().