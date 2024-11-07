-- Views
-- 1. View to Show User's Current Apparel
GO
CREATE VIEW UserApparelView AS
SELECT u.userID, u.[name], p.productID, p.[description], p.cost
FROM [User] u
JOIN User_currentApparel ua ON u.userID = ua.userID
JOIN [Product] p ON ua.productID = p.productID;

-- 2. View to Show User's Current Weapon
GO
CREATE VIEW UserWeaponView AS
SELECT u.userID, u.[name], p.productID, p.[description], p.cost
FROM [User] u
JOIN User_currentWeapon uw ON u.userID = uw.userID
JOIN [Product] p ON uw.productID = p.productID;

-- 3. View to Show Orders and Their Status
GO
CREATE VIEW OrderStatusView AS
SELECT o.orderID, m.userID, c.totalCost, m.[status]
FROM [Order] o
JOIN Cart c ON o.cartID = c.cartID
JOIN MemberRequest m ON m.cartID = c.cartID;