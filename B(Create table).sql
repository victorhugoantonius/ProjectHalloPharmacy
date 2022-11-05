CREATE DATABASE [Hallo Pharmacy]
GO
USE [Hallo Pharmacy]
GO

CREATE TABLE MsVendor(
	VendorID CHAR(5) PRIMARY KEY CHECK(VendorID LIKE 'VN[0-9][0-9][0-9]'),
	VendorName VARCHAR(50) NOT NULL CHECK(LEN(VendorName) > 3),
	VendorPhone VARCHAR(20) NOT NULL,
	VendorAddress VARCHAR(50) NOT NULL,
	VendorEmail VARCHAR(50) NOT NULL CHECK(VendorEmail LIKE '%.com'),
	EstablishedYear CHAR(4) NOT NULL
);

CREATE TABLE MsEmployee(
	EmployeeID CHAR(5) PRIMARY KEY CHECK(EmployeeID LIKE 'EM[0-9][0-9][0-9]'),
	EmployeeName VARCHAR(50) NOT NULL,
	EmployeeEmail VARCHAR(50) NOT NULL CHECK(EmployeeEmail LIKE '%@hallo.com'),
	EmployeePhone VARCHAR(20) NOT NULL,
	EmployeeAddress VARCHAR(50) NOT NULL,
	EmployeeDOB DATE NOT NULL,
	EmployeeGender VARCHAR(10) NOT NULL CHECK(EmployeeGender = 'Male' OR EmployeeGender = 'Female'),
	EmployeeSalary INTEGER NOT NULL
)

CREATE TABLE MsCustomer(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL,
	CustomerPhone VARCHAR(50) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerEmail VARCHAR(50) NOT NULL CHECK(CustomerEmail LIKE '%@hallo.com'),
	CustomerGender VARCHAR(10) NOT NULL CHECK(CustomerGender = 'Male' OR CustomerGender = 'Female'),
	CustomerPassword VARCHAR(20) NOT NULL,
	CustomerDOB DATE NOT NULL
);

CREATE TABLE MsMedicineCategory(
	CategoryID CHAR(5) PRIMARY KEY CHECK(CategoryID LIKE 'CT[0-9][0-9][0-9]'),
	CategoryName VARCHAR(50) NOT NULL CHECK(CategoryName NOT IN('Amidopyrine', 'Phenacetin', 'Methaqualone'))
);

CREATE TABLE MsMedicine(
	MedicineID CHAR(5) PRIMARY KEY CHECK(MedicineID LIKE 'MD[0-9][0-9][0-9]'),
	CategoryID CHAR(5) FOREIGN KEY REFERENCES MsMedicineCategory(CategoryID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	MedicineName VARCHAR(50),
	MedicinePrice INTEGER CHECK(MedicinePrice BETWEEN 5000 AND 100000),
	MedicineDescription VARCHAR(250),
	MedicineStock INTEGER
);

CREATE TABLE PurchaseTransactionHeader(
	PurchaseID CHAR(5) PRIMARY KEY CHECK(PurchaseID LIKE 'PC[0-9][0-9][0-9]'),
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES MsEmployee(EmployeeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	VendorID CHAR(5) FOREIGN KEY REFERENCES MsVendor(VendorID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionDate DATE NOT NULL
);

CREATE TABLE SalesTransactionHeader(
	SalesID CHAR(5) PRIMARY KEY CHECK(SalesID LIKE 'SL[0-9][0-9][0-9]'),
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES MsEmployee(EmployeeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY REFERENCES MsCustomer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionDate DATE NOT NULL
);

CREATE TABLE PurchaseTransactionDetail(
	PurchaseID CHAR(5) CHECK(PurchaseID LIKE 'PC[0-9][0-9][0-9]'),
	MedicineID CHAR(5) CHECK(MedicineID LIKE 'MD[0-9][0-9][0-9]'),
	Quantity INTEGER NOT NULL,
	PRIMARY KEY(PurchaseID, MedicineID)
);

CREATE TABLE SalesTransactionDetail(
	SalesID CHAR(5) CHECK(SalesID LIKE 'SL[0-9][0-9][0-9]'),
	MedicineID CHAR(5) CHECK(MedicineID LIKE 'MD[0-9][0-9][0-9]'),
	Quantity INTEGER NOT NULL,
	PRIMARY KEY(SalesID, MedicineID)
);
