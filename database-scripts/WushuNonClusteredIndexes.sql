-- Non-Clustered Index on `PromoCode` table for fast access by `code`
CREATE NONCLUSTERED INDEX IX_PromoCode_Code
ON PromoCode (code);

-- Non-Clustered Index on `Product` table for fast access by `cost`
CREATE NONCLUSTERED INDEX IX_Product_Cost
ON [Product] (cost);

-- Non-Clustered Index on `User` table for quick lookup by `email`
CREATE NONCLUSTERED INDEX IX_User_Email
ON [User] (email);