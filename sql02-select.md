
# Outcomes

This module accompanies the *Introduction to SQL* Datacamp tutorial. Some content can also be found in *Intermediate SQL*.

- SELECT *, field, field2 as ABC, "field b" 
    - DISTINCT
- FROM table as t2 (alias)
- WHERE field 
    - Use the comparisons >, >=, <, <=, =, != 
    - Match a number,  "string value", or NULL
    - Use AND/OR
- Understand the role of capitalization
- ORDER BY to sort returned values (either ASC or DESC)



## Style guide

- Use UPPER CASE for keywords (SELECT, FROM, ...)
- Use lower-case for field names and tables
- Optionally, add a ; (semi-colon) at the end of the statement

# Code Samples  {.tabset}

## Code for SELECT & FROM

SELECT and FROM are used in all data retrieval queries

> SELECT * FROM categories

"Fields with a space in their name" must be wrapped by "double" quotes.

> SELECT "Category Name" FROM "categories tables"

AS renames a field or table 

> SELECT CategoryID AS "Primary Key" FROM categories AS c1


## Code for WHERE

WHERE filters the returned fields

> SELECT * FROM categories WHERE CategoryID > 2

'Strings' are wrapped in single quotes (don't wrap numbers)

> SELECT * FROM categories WHERE CategoryName = 'main'

AND/OR allow us to use multiple conditions

> SELECT * FROM categories WHERE CategoryID <= 2 OR CategoryID >= 4

LIKE allows using the % wildcard in a WHERE. You can also use a NOT LIKE.

> SELECT * FROM CategoryName WHERE CategoryName LIKE 'E%d'

IN allows us to search for an item in a list.

> SELECT * FROM CategoryName WHERE ID IN (1, 2, 3)

BETWEEN can be used for two number comparisons.

> SELECT * FROM CategoryName WHERE CategoryID BETWEEN 10 and 30

NULL is a special value, meaning that there is no result for a field. This is different from 0 (often the default in a number field), or "" (an empty string).

When testing for NULL, you can not write `field_name = NULL`. Each NULL is unique. You can only test for them by writing `field_name IS NULL` (or `IS NOT NULL`).

> SELECT * FROM CategoryName WHERE field_name IS NULL


## Code for ORDER BY & DISTINCT

ORDER BY sorts rows returned (either ASCending / DESCending)

> SELECT * FROM Employees ORDER BY FirstName DESC, LastName ASC

DISTINCT includes only unique row results

> SELECT DISTINCT CategoryName FROM Categories 


# Detailed Explanation

Using SQL SELECT allows you to retrieve data from a database. The SELECT statement is one of the fundamental and most commonly used SQL commands. Here's a step-by-step explanation of how to use SQL SELECT:

1. Syntax: The basic syntax of the SELECT statement is as follows:

> SELECT column1, column2, ... FROM table_name WHERE conditions ORDER BY column1, ...;

2. Columns to retrieve: Specify the columns you want to retrieve data from after the SELECT keyword. You can list multiple column names separated by commas, or use `*` to select all columns.

3. Table to retrieve data from: After the FROM keyword, specify the name of the table from which you want to retrieve the data.

4. Filtering (Optional): You can use the WHERE clause to add conditions to filter the data. This allows you to retrieve only the rows that meet specific criteria. For example:

> SELECT column1, column2 FROM table_name WHERE condition;

5. Order By allows you to sort your results. List you fields, just as in the Select 
statement. They default to ascending (a-z), but you can also have them 
in descending order by adding desc after the column name, i.e. "... ORDER BY column1 desc;"

> SELECT column1, column2 FROM table_name WHERE condition ORDER BY column1;

6. Fetching data: Once you have constructed the SELECT statement, execute it against the database using an appropriate SQL client or programming language with SQL support (e.g., Python with a database connector).

Examples:
- To retrieve all columns from a table named "employees":

> SELECT * FROM employees;

- To retrieve specific columns (e.g., name and age) from the "employees" table:

> SELECT name, age FROM employees;
 
- To retrieve data based on specific conditions, such as fetching employees with a salary greater than 50000:

> SELECT name, salary FROM employees WHERE salary > 50000;

- You can use various SQL functions and operators within the SELECT statement to perform calculations or transformations on the retrieved data.

Remember to use semicolons to terminate your SQL statements, as it is a common convention in SQL to signify the end of a command.


# Further Resources {.tabset}

There are many online resources that can help you learn SQL. 

## Excel.fun

Go to [Excel.fun](https://excel.fun)

Complete the following tutorials:

- SQL - SELECT and FROM
- SQL - ORDER BY
- SQL - WHERE


## SQL Zoo

Go to [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial)

Complete the following tutorials:

- 0 SELECT basics (all questions)
- 1 SELECT name (questions 1-4)
- 2 SELECT from WORLD (questions 1-7)
