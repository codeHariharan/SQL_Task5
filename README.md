Task 5 – SQL Joins
Overview:
This task demonstrates the use of different SQL join types to combine and retrieve data from multiple related tables. Two tables, Customers and Orders, were created and populated with sample data containing various scenarios such as customers with multiple orders, customers without orders, and orders without matching customers.

Objective:

Created two related tables.
Populate the tables with sample data.
Use different join types (INNER, LEFT, RIGHT, FULL) to retrieve combined data.
Understand how each join type works and in which scenarios they are applicable.

Steps Performed:

Created a Customers table to store customer information.
Created an Orders table to store order details, linked to Customers through CustomerID.
Inserted multiple sample records into both tables, ensuring a mix of matching and non-matching records for testing joins.

Wrote SQL queries using:

INNER JOIN – to retrieve only matching records between the two tables.

LEFT JOIN – to retrieve all records from Customers and matching records from Orders.

RIGHT JOIN – to retrieve all records from Orders and matching records from Customers.

FULL JOIN – to retrieve all records from both tables, with matches where available.

Tested the queries to confirm the results match expected join behavior.

Learning Outcome:

Gained practical understanding of SQL join types.
Learned how to retrieve combined data based on different join conditions.
Practiced handling data scenarios where matches are missing in one of the tables.

