use [Hallo Pharmacy]

-- E
-- no.1

SELECT MC.CustomerID [Customer ID], CustomerName [Customer Name],
CONVERT(VARCHAR, TransactionDate, 107) [Transaction Date],
SUM(Quantity) [Medicine Bought]
FROM MsCustomer MC JOIN SalesTransactionHeader SH
ON MC.CustomerID = SH.CustomerID 
JOIN SalesTransactionDetail SD ON SH.SalesID = SD.SalesID
WHERE (DAY(TransactionDate) between 20 AND 30)
AND CustomerGender = 'Female'
GROUP BY MC.CustomerID, CustomerName, TransactionDate

-- no.2
SELECT RIGHT(me.EmployeeID,3) [Employee Number],
EmployeeName [Employee Name], CAST(COUNT(mc.CustomerID) AS VARCHAR) + ' customer(s)' [Customer Served]

FROM MsCustomer mc JOIN SalesTransactionHeader sth
ON mc.CustomerID = sth.CustomerID JOIN MsEmployee me
ON sth.EmployeeID = me.EmployeeID

WHERE EmployeeName like '%b%' AND EmployeeGender = 'Female'

GROUP BY me.EmployeeID, me.EmployeeName

-- no.3
SELECT
    mc.CustomerID, CustomerName, CONVERT(VARCHAR, CustomerDOB, 106) [Date of Birth], COUNT(*) [Transaction Count], SUM(Quantity * MedicinePrice) [Total Purchase]
FROM 
    MsCustomer mc
    JOIN SalesTransactionHeader sth
    ON sth.CustomerID = mc.CustomerID
    JOIN SalesTransactionDetail std
    ON std.SalesID = sth.SalesID
    JOIN MsMedicine mm
    ON mm.MedicineID = std.MedicineID
WHERE
    MONTH(TransactionDate) BETWEEN 1 AND 6
    AND
    sth.EmployeeID IN ('EM004', 'EM006', 'EM008')
GROUP BY
    mc.CustomerID, CustomerName, CustomerDOB

-- no.4
SELECT
		me.EmployeeID, EmployeeName, STUFF(EmployeePhone, 1,2, '62') [Local Phone Number], 
		COUNT(DISTINCT pth.PurchaseID) [Transaction Done], CAST(SUM(ptd.Quantity) AS VARCHAR(10)) + ' item(s)' [Total Medicine Bought]
FROM
		MsEmployee me 
		JOIN PurchaseTransactionHeader pth
		ON pth.EmployeeID = me.EmployeeID
		JOIN PurchaseTransactionDetail ptd
		ON ptd.PurchaseID = pth.PurchaseID
		JOIN MsVendor mv
		ON mv.VendorID = pth.VendorID
WHERE
		(DAY(pth.TransactionDate) BETWEEN 10 AND 20)
		AND 
		mv.EstablishedYear > 2000
GROUP BY
		me.EmployeeID, EmployeeName, EmployeePhone

-- no.5
SELECT RIGHT(m.MedicineID, 3) [Numeric Medicine ID],
UPPER(m.MedicineName) [Medicine Name], c.CategoryName [Category Name],
CONCAT('Rp. ', m.MedicinePrice) Price, m.MedicineStock [Medicine Stock]
FROM MsMedicine m JOIN MsMedicineCategory c ON
m.CategoryID = c.CategoryID JOIN SalesTransactionDetail SD
ON SD.MedicineID = m.MedicineID, 
	(
		SELECT AVG(Quantity) AS Average

		FROM SalesTransactionDetail
	) X
WHERE MedicinePrice > 50000 AND MedicineStock < X.Average

-- no.6
SELECT REPLACE(me.EmployeeID, 'EM', 'EMPLOYEE') [Employee Code],
EmployeeName [Employee Name], CONVERT(VARCHAR, TransactionDate, 101) [TransactionDate],
MedicineName [Medicine Name], MedicinePrice [Medicine Price], Quantity

FROM MsEmployee me JOIN SalesTransactionHeader sth
ON me.EmployeeID = sth.EmployeeID JOIN
SalesTransactionDetail std ON sth.SalesID = std.SalesID
JOIN MsMedicine mm ON std.MedicineID = mm.MedicineID,
	(
		SELECT AVG(EmployeeSalary) [AverageSalary]

		FROM MsEmployee
	) Ave

WHERE (DAY(TransactionDate) = 2) AND 
EmployeeSalary < Ave.AverageSalary

-- no.7
SELECT mc.CustomerID [CustomerID], CustomerName [CustomerName],
STUFF(CustomerPhone, 1,2, '62') [Local Customer Phone],
CONVERT(VARCHAR, CustomerDOB, 107) [Date of Birth],
CAST(SUM(std.Quantity) AS VARCHAR) + ' item(s)' [Medicine Bought]

FROM MsCustomer mc JOIN SalesTransactionHeader sth
ON mc.CustomerID = sth.CustomerID JOIN
SalesTransactionDetail std ON sth.SalesID = std.SalesID,
	(
		SELECT AVG(Quantity) [Average of Quantity Sold]

		FROM MsCustomer mc JOIN SalesTransactionHeader sth
		ON mc.CustomerID = sth.CustomerID JOIN
		SalesTransactionDetail std ON sth.SalesID = std.SalesID
	) z

WHERE (CustomerGender not like 'Male') 

GROUP BY mc.CustomerID, CustomerName, CustomerPhone, CustomerDOB,
z.[Average of Quantity Sold]

HAVING SUM(Quantity) > z.[Average of Quantity Sold]

-- no.8
SELECT
		me.EmployeeID, SUBSTRING(EmployeeName, 1, CHARINDEX(' ', EmployeeName, 1)) [Employee Name], 
		'Rp. ' + CAST(EmployeeSalary AS VARCHAR(20)) [Salary], CONVERT(VARCHAR, EmployeeDOB, 107) [Date of Birth], 
		COUNT(SalesID) [Transaction Served]
FROM
		MsEmployee me
		JOIN SalesTransactionHeader sth
		ON me.EmployeeID=sth.EmployeeID,
		(
			SELECT
				AVG(x.[transactionCount]) [transactionAverage]
			FROM
				(
					SELECT
						me.EmployeeID, COUNT(*) [transactionCount]
					FROM
						MsEmployee me
						JOIN SalesTransactionHeader sth
						ON me.EmployeeID=sth.EmployeeID
					GROUP BY 
						me.EmployeeID
				)x
		)y
WHERE
		CHARINDEX(' ', EmployeeName, 1) <> 0
GROUP BY
		me.EmployeeID, EmployeeName, EmployeeSalary, EmployeeDOB, y.transactionAverage
HAVING
		COUNT(SalesID) > y.transactionAverage

-- no.9
CREATE VIEW [VendorMaximumAverageQuantityViewer] AS
SELECT mv.VendorID [Vendor ID], VendorName [Vendor Name],
CAST(AVG(Quantity) AS VARCHAR) + ' item(s)' [Average Supplied Quantity],
CAST(MAX(Quantity) AS VARCHAR) + ' item(s)' [Maximum Supplied Quantity]

FROM MsVendor mv JOIN PurchaseTransactionHeader pth
ON mv.VendorID = pth.VendorID JOIN
PurchaseTransactionDetail ptd ON
pth.PurchaseID = ptd.PurchaseID

WHERE VendorName like '%a%'

GROUP BY mv.VendorID, VendorName

HAVING MAX(Quantity) > 5

SELECT * FROM [VendorMaximumAverageQuantityViewer]

-- no.10
CREATE VIEW [VendorSupplyViewer] AS
SELECT
	RIGHT(mv.VendorID,3) [Vendor Number], VendorName, VendorAddress, 
	'Rp. ' + CAST(SUM(MedicinePrice*Quantity) AS VARCHAR) [Total Supplied Value], 
	CAST(COUNT(mm.MedicineID) AS VARCHAR) + ' medicine(s)'[Medicine Type Supplied]
FROM
	MsVendor mv 
	JOIN PurchaseTransactionHeader pth
	ON mv.VendorID = pth.VendorID
	JOIN PurchaseTransactionDetail ptd
	ON pth.PurchaseID = ptd.PurchaseID
	JOIN MsMedicine mm
	ON ptd.MedicineID = mm.MedicineID
GROUP BY
	mv.VendorID, VendorName, VendorAddress
HAVING
	SUM(MedicinePrice*Quantity) > 150000
	AND
	COUNT(mm.MedicineID) > 2

SELECT * FROM VendorSupplyViewer



