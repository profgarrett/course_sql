
## Outcomes

Join together two or more tables using a key

- Describe when to use each join type
- Join tables with INNER JOIN and LEFT OUTER JOIN
- Be able to switch the left and right tables to 
  avoid using RIGHT OUTER JOIN
- Filter where field IS NULL or field IS NOT NULL
- Rename fields with AS

Resources:

- [MindMax Description of Joins](https://mindmajix.com/joins-sql-server)
- [YouTube: How to filter with the WHERE Clause](https://www.youtube.com/watch?v=4Uv0o8IBqw0)


## Quick Reference Code

Connect two tables with an inner join

> SELECT * 
> FROM tableA 
> INNER JOIN tableB
> ON tableA.foreign_key = tableB.primary_key


Connect two tables with a left outer join

> SELECT tableA.field, tableB.* 
> FROM tableA 
> LEFT OUTER JOIN tableB
> ON tableA.foreign_key = tableB.primary_key



### Explanation of an inner join

SQL INNER JOIN is used to combine rows from two or more tables based on a related column between them. It helps to retrieve data from multiple tables that have a common field. Here's how to use SQL INNER JOIN:

1. Syntax: The basic syntax of the INNER JOIN is as follows:

>   SELECT columns
>   FROM table1
>   INNER JOIN table2 ON table1.column = table2.column;


2. Specify Columns and Tables: Begin the SELECT statement by specifying the columns you want to retrieve and the main table (table1) you want to query data from.

3. INNER JOIN: Use the INNER JOIN keyword to indicate that you want to combine data from another table (table2) based on a common column between them.

4. ON Clause: After the INNER JOIN keyword, use the ON keyword followed by a condition that defines the relationship between the two tables. The condition specifies the common column in both tables that will be used to match rows.


Examples:

Let's say we have two tables: "employees" and "departments."

To retrieve a list of employees along with their corresponding department names:

>  SELECT employees.name, departments.department_name
>  FROM employees
>  INNER JOIN departments ON employees.department_id = departments.id;


If the "employees" table has a "department_id" column that corresponds to the "id" column in the "departments" table, the INNER JOIN combines rows from both tables where the "department_id" matches the "id," and the result will show the employee name along with their respective department name.

You can join multiple tables by extending the query with additional INNER JOIN clauses and ON conditions.

Remember that for the INNER JOIN to work correctly, there should be a matching relationship between the columns specified in the ON clause. If there are no matches for a row in either table, that row will not be included in the result set.


### Explanation of left outer join

The main difference between a LEFT OUTER JOIN and an INNER JOIN lies in how they handle unmatched rows between the two tables being joined:

1. INNER JOIN:

- The INNER JOIN returns only the rows that have matching values in both tables based on the specified condition in the ON clause.
- If there is no match for a row in either of the tables, that row will be excluded from the result set.
- In other words, the INNER JOIN produces the intersection of the two tables, containing only the common rows that satisfy the join condition.


2. LEFT OUTER JOIN:

- The LEFT OUTER JOIN returns all the rows from the left (or first) table and the matching rows from the right (or second) table based on the specified condition in the ON clause.
- If there is no match for a row in the right table, the result set will still contain that row from the left table, but the columns from the right table will be filled with NULL values.
- The LEFT OUTER JOIN ensures that all the rows from the left table are included in the result set, and if there are no corresponding matches in the right table, the unmatched columns from the right table are replaced with NULLs.

In summary, an INNER JOIN only returns the rows with matching values in both tables, whereas a LEFT OUTER JOIN returns all the rows from the left table and the matching rows from the right table, with NULL values for unmatched rows on the right table. The choice between INNER JOIN and LEFT OUTER JOIN depends on the desired result set and how you want to handle unmatched rows.


## Further resources

See SQLZoo's section on joins:

-	[SQLZoo: JOIN, questions 1-4](https://sqlzoo.net/wiki/The_JOIN_operation)
- [SQLZoo: More JOIN](https://sqlzoo.net/wiki/More_JOIN_operations)
- [SQLZoo: Using Null](https://sqlzoo.net/wiki/Using_Null)
