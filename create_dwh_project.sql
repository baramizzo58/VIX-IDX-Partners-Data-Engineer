CREATE TABLE DimCustomer(
	CustomerID int PRIMARY KEY NOT NULL,
	CustomerName varchar(100) NOT NULL,
	Age int NOT NULL,
	Gender varchar(50) NOT NULL,
	City varchar(50) NOT NULL,
	NoHP varchar(50) NOT NULL
)

CREATE TABLE DimProduct(
	ProductID int PRIMARY KEY NOT NULL,
	ProductName varchar(255) NOT NULL,
	ProductCategory varchar(255) NOT NULL,
	ProductUnitPrice int
)

CREATE TABLE DimStatusOrder(
	StatusID int PRIMARY KEY NOT NULL,
	StatusOrder varchar(50) NOT NULL,
	StatusOrderDesc varchar(50) NOT NULL
)

CREATE TABLE FactSalesOrder(
	OrderID int PRIMARY KEY NOT NULL,
	CustomerID int FOREIGN KEY REFERENCES DimCustomer(CustomerID) NOT NULL,
	ProductID int FOREIGN KEY REFERENCES DimProduct(ProductID) NOT NULL,
	Quantity int NOT NULL,
	Amount int NOT NULL,
	StatusID int FOREIGN KEY REFERENCES DimStatusOrder(StatusID) NOT NULL,
	OrderDate date NOT NULL
)