-- Functions
-- 1. Function to Calculate Discounted Price
GO
CREATE FUNCTION CalculateDiscountedPrice (@price DECIMAL(10, 2), @discount DECIMAL(5, 2))
RETURNS DECIMAL(10, 2)
AS
BEGIN
    RETURN @price * (1 - @discount / 100);
END;

-- 2. Function to Get Total Cart Quantity
GO
CREATE FUNCTION GetCartQuantity (@cartID INT)
RETURNS INT
AS
BEGIN
    DECLARE @totalQuantity INT;
    SELECT @totalQuantity = SUM(quantity) FROM Cart_items WHERE cartID = @cartID;
    RETURN @totalQuantity;
END;

-- 3. Function to Get Total Order Cost
GO
CREATE FUNCTION GetOrderTotalCost (@orderID INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @totalCost DECIMAL(10, 2);
    SELECT @totalCost = totalCost FROM [Order] WHERE orderID = @orderID;
    RETURN @totalCost;
END;