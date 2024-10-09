-- What is the name of the table that holds the items Northwind sells? Products table.
-- What is the name of the table that holds the types (categories) of the items Northwind sells? Products table.
-- What are the first and last names of all the Northwind employees? Employee: 

SELECT FirstName, LastName FROM employees;

-- Create a SELECT statement to retrieve from the products table, including all columns.
--  How many records does your query return? How can you change this? Include the answer in your script as a comment. It returned 77 records. SELECT * FROM products limit 10;.

-- Create another SELECT statement that lists all the columns and all of the rows of the categories table.
-- What is the category id of seafood? Include a comment in your script to answer this. SELECT * FROM categories WHERE CategoryName = 'seafood'; 

SELECT * FROM products;
SELECT * FROM products limit 10;

SELECT * FROM categories;
SELECT * FROM categories WHERE CategoryName = 'seafood';


-- Create a third SELECT statement to retrieve the top 50 records from orders, including only the OrderID, OrderDate, ShipName, and ShipCountry columns.
--  Export the resulting record set to .csv format with the name northwind_order_sample.csv and save it to W2_Exercises. 

SELECT OrderID, OrderDate, ShipName, ShipCountry FROM orders LIMIT 50;