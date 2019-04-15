USE AdventureWorks2012
GO

/* returns all customer records (LEFT table) and Account Number (RIGHT table) 
if the customer has ordered: 19820 records */
SELECT DISTINCT
	c.CustomerID,
	soh.AccountNumber
FROM
		Sales.Customer c
	LEFT JOIN
		Sales.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID