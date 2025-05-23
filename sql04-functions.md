---

---

There are are a variety of useful SQL functions. They are similar to functions in Excel.

### Text Functions

Upper or lower case

> SELECT lower(CompanyName) as lowerName, 
>   upper(CompanyName) as upperName
> FROM Suppliers


Substr returns part of a string. Substr(x,y,z) is 
substr(text_string, starting_number, length_of_returned_string). As an example, the 
below will return "bcd"

> SELECT substr('abcde', 2, 3)


Join together text values by using || between then

> SELECT 'abc' || 'def'


### Math Functions

You can use the normal arithmetic operators.

> SELECT 1 + 2 - 3 / 5 * 4 - (1-1)


SQL will turn text values into number if you use a math symbol

> SELECT "1" + 1

Note that some forms of SQL are very picky about decimals versus integers. If you divide 2 by 10, where both are integers, you will get 0. This is because SQL is returning an integer, which throws away all of the data past the decimal point.

To get this to work, you must write at least one of the numbers with a decimal.
> SELECT 2.0/10


Return a rounded field, rounded to the decimal point. You can use 2 to round to the pennies, or -2 to round to the nearest hundred.

> SELECT round(number_field, 0) FROM table_name

### Logical Functions

Use single or double equals to test for equality
The result will be 1 (true) or 0 (false)

> SELECT "a" == "a"


Combine multiple tests with AND, if you want all of the tests to be true

> SELECT * FROM Suppliers WHERE SupplierID > 10 AND SupplierID < 20


Combine multiple tests with OR, if you want at least one of the tests to be true.

> SELECT * FROM Suppliers WHERE SupplierID < 10 OR SupplierID > 20

