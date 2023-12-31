CREATE PROCEDURE summary_order_status @StatusID int
AS
SELECT FactSalesOrder.OrderID, 
		DimCustomer.CustomerName, 
		DimProduct.ProductName, 
		FactSalesOrder.Quantity, 
		DimStatusOrder.StatusOrder
	FROM FactSalesOrder 
	INNER JOIN DimCustomer ON FactSalesOrder.CustomerID = DimCustomer.CustomerID
	INNER JOIN DimProduct ON FactSalesOrder.ProductID = DimProduct.ProductID
	INNER JOIN DimStatusOrder ON FactSalesOrder.StatusID = DimStatusOrder.StatusID
WHERE DimStatusOrder.StatusID = @StatusID;
GO

-- Perintah untuk melakukan eksekusi Stored Procedure 'summary_sales_order'
-- EXEC summary_order_status @StatusID = 2