USE AdventureWorks2012
GO

/* returns only records that match between the 2 tables: 19119 */
SELECT DISTINCT
	c.CustomerID
FROM
		Sales.Customer c
	INNER JOIN
		Sales.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID