USE AdventureWorks2012
GO

/* returns all the rows between the 2 tables. In the example
screen shot, the break is shown where the records with customer
but no order has been reached. */
SELECT
	*
FROM
		Sales.SalesOrderHeader soh
	FULL JOIN
		Sales.Customer c
		ON soh.CustomerID = c.CustomerID