-- Stored Procedures
-- 1. Procedure to Add a New Product
GO
CREATE PROCEDURE AddProduct
	@productID INT,
    @categoryID INT,
    @description TEXT,
    @cost DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO [Product] (productID, categoryID, [description], cost)
    VALUES (@productID, @categoryID, @description, @cost);
END;

-- 2. Procedure to Update Order Status
GO
CREATE PROCEDURE UpdateOrderStatus
    @requestID INT,
    @newStatus VARCHAR(8)
AS
BEGIN
    UPDATE MemberRequest
    SET [status] = @newStatus
    WHERE requestID = @requestID;
END;

-- 3. Procedure to Apply a Promo Code
GO
CREATE PROCEDURE ApplyPromoCode
    @cartID INT,
    @promoCodeID INT
AS
BEGIN
    DECLARE @discount DECIMAL(5, 2);
    SELECT @discount = [percent] FROM PromoCode WHERE promoCodeID = @promoCodeID;

    UPDATE Cart
	SET promoCodeID = @promoCodeID
	WHERE cartID = @cartID;

	UPDATE Cart
    SET totalCost = totalCost * (1 - @discount / 100)
    WHERE cartID = @cartID;
END;