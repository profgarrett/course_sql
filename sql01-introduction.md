
# Outcomes

You should be able to:

- Define a database
- Describe the role of a DBMS
- Describe advantages / disadvantages
- Describe SQL


Please install the [SQLite DB Browser](https://sqlitebrowser.org/dl/)


![Cute image of Database|300](sql01-databasemacot.png)


# Terms

- *Relational database* - a structured collection of data (held in formally-defined relations, i.e. tables)
  - This design helps prevent anomaly / errors relating to update, insert, or delete
- *Database Management System (DBMS)* software providing an interface for users to interact with the data. It manages the storage, retrieval, and modification of data, ensuring data integrity, security, and concurrency control.
- *Advantages*
  - Data centralization
  - Data integrity
  - Security
  - Efficient data retrieval 
  - Efficient data manipulation
- *Disadvantages*
  - High initial setup costs
  - Need for skilled administrators
  - Less flexible than using a less structured approach (such as Excel files).
- *SQL (Structured Query Language)* is a programming language used to manage and manipulate relational databases. It provides a standardized way to create, modify, and query databases, enabling users to interact with the data in a structured and efficient manner. SQL is widely used and supports various operations like selecting data, inserting records, updating data, and creating database objects such as tables and indexes.
- Database (group of tables)
  - Table (contains rows/records)
    - Record - a horizontal row
    - Field - similar to a cell in Excel, a single value, generally using a singular name (not plural)
- Keys
  - Primary key uniquely defines a single row. Usually an auto-increment integer (1, 2, 3, ...)
    - Never null
  - Foreign key is a link to a primary key in a another table.
    - Should have referential integrity, meaning that it always links to another key
- Data types
  - Whole numbers are integers (1, 2, 3, ...). They may be called int in a diagram.
  - Non-whole are floats (1.2, 2.8). These may be called double or money.
  - String is regular text, such as "Bob" or "Sarah". These are sometimes called VARCHAR, for variable-length character.
- Data Warehouse: typically an analysis-oriented database, usually transferred data from an operational database
- Schema: the data model for a warehouse
- CRUD access rights: create, read, update, delete
- Data Dictionary: definition of the fields and tables in a database

# Database Diagram

A database diagram shows multiple tables and how they are related to each other.


![Northwind SQL Diagram](sql01-northwind.png)



# Conventions

- Lowercase names, no spaces, underscore_naming_is_best
- Unfortunately, this is rarely the case. You should be able to handle columns with multiple spaces / words in them by wrapping them with "double quotes"

```{undefined eval=FALSE, include=FALSE}

## Class Activity

Review slides Romney Chapter 4

Open the WhyDB.xlsx file in the shared folder. Working with your table, 
identify the issues with the Excel file.

> ABC Consulting has been asked to figure out why a new initiative failed to deliver.
> They have traced the underlying problem to a sales initiative for Product D underperforming.
> This dataset was used to justify a decision to move all marketing dollars from A, B, and C to D.
> 
> What issues can you find that suggest this initiative was a mistake?

Goal: find five of the six errors.


# INSTRUCTOR NOTES


# Concepts:
#	References: Using references to individual cells instead of joins can be an issue
#	Data type: Excel doesn't enforce having the same type of data in a cell.
#	Accidental moves: It's easy to end up with data on different columns/rows through user errors.
#	Size: Excel has a row limit

#	Issues:
#	Unit Sales hits row limit, dropping last part of year
#	Unit Sales adds new month column in May
#	Products changes datatype from $ to %
#	Products has text datatype for a cell
#	Analysis uses an incorrect reference 
#	Product E isn’t listed (tracing)

```

# Questions

Answer the following questions:

- What is the right term for SQLite, DB Browser, the entire set of Northwind data, Products, ProductID in Products, and SupplierID in Products
- What fields connect Products and Suppliers?
- Which fields connect Employees to Employees?
- Which table is used to store the price for a product?
- Which tables would need updates for a new order by a new customer?