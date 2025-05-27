# SQL 3 - Joining data

## Outcomes

Join together two or more tables using a key

- Describe when to use each join type
- Join tables with INNER JOIN and LEFT OUTER JOIN
- Rename fields with AS

## Videos:

- [MindMax Description of Joins](https://mindmajix.com/joins-sql-server)

## INNER JOIN

Get all matching records in two tables.

> SELECT * 
> FROM tableA 
> INNER JOIN tableB
> ON tableA.foreign_key = tableB.primary_key

SQL INNER JOIN is used to combine rows from two or more tables based on a related column between them. 

1. Specify Columns and Tables: Begin the SELECT statement by specifying the columns you want to retrieve and the main table (table1) you want to query data from.
2. INNER JOIN: Use the INNER JOIN keyword to indicate that you want to combine data from another table (table2) based on a common column between them.
3. ON Clause: After the INNER JOIN keyword, use the ON keyword followed by a condition that defines the relationship between the two tables. The condition specifies the common column in both tables that will be used to match rows.

*Example:*

We have two tables: "employees" and "departments." To retrieve a list of employees along with their corresponding department names:

>  SELECT employees.name, departments.department_name
>  FROM employees
>  INNER JOIN departments ON employees.department_id = departments.id;

Remember that for the INNER JOIN to work correctly, there should be a matching relationship between the columns specified in the ON clause. If there are no matches for a row in either table, that row will not be included in the result set.

## OUTER JOIN

Get all records from the left table, and all matching from the right.

> SELECT tableA.field, tableB.* 
> FROM tableA 
> LEFT OUTER JOIN tableB
> ON tableA.foreign_key = tableB.primary_key

An outer join is the same as an inner join, with one important difference. 
* Inner join returns rows where the condition is true
* Outer join returns all records from the table in `FROM`, and only those in the `LEFT OUTER JOIN` that match.

## Rename

We often rename fields or tables with `AS` when doing joins. This is because we often have fields with matching names in between the two tables.
## Further resources

See SQLZoo's section on joins:

- [SQLZoo: JOIN, questions 1-4](https://sqlzoo.net/wiki/The_JOIN_operation)
- [SQLZoo: More JOIN](https://sqlzoo.net/wiki/More_JOIN_operations)
- [SQLZoo: Using Null](https://sqlzoo.net/wiki/Using_Null)

# Application Problem

