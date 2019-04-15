USE AdventureWorks2012
GO

/* returns all customer records (RIGHT table) and Account Number (LEFT table) 
if the customer has ordered: 19820 records.
The table order is swapped from the positions they held in the
LEFT JOIN example. */
SELECT DISTINCT
	c.CustomerID,
	soh.AccountNumber
FROM
		Sales.SalesOrderHeader soh
	RIGHT JOIN
		Sales.Customer c
		ON soh.CustomerID = c.CustomerID