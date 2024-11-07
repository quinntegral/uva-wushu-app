-- Create trigger to update Product.starAmount when a new review is added
GO
CREATE TRIGGER trgUpdateProductStarAmount
ON Review
AFTER INSERT
AS
BEGIN
    DECLARE @productID INT;

    SELECT @productID = i.productID FROM INSERTED i;

    UPDATE [Product]
    SET starAmount = (
        SELECT CAST(AVG(CAST(r.starAmount AS DECIMAL(3, 2))) AS DECIMAL(3, 2))
        FROM Review r
        WHERE r.productID = @productID
    )
    WHERE productID = @productID;

    PRINT 'Product starAmount updated successfully.';
END;