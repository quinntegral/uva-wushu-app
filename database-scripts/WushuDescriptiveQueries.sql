-- 1. Count the Number of Orders Placed by Each User
SELECT userID, COUNT(orderID) AS totalOrders
FROM [Order] O
JOIN Cart C ON O.cartID = C.cartID
GROUP BY userID;

-- 2. Calculate the Total Sales (Sum) for Each Product
SELECT P.productID, SUM(P.cost) AS totalSales
FROM [Product] P
JOIN Cart_items CI ON P.productID = CI.productID
JOIN Cart C ON CI.cartID = C.cartID
JOIN [Order] O ON C.cartID = O.cartID
GROUP BY P.productID;

-- 3. Find the Maximum Number of Products Contained in a Cart
SELECT MAX(quantity) AS maxItemsInCart
FROM Cart_items;

-- 4. Calculate the Average Rating of Each Product
SELECT productID, AVG(starAmount) AS avgRating
FROM Review
GROUP BY productID;

-- 5. Find All Users Who Have Rated Products with an Average Rating Above 4
SELECT userID, [name]
FROM [User]
WHERE userID IN (
    SELECT userID
    FROM Review
    GROUP BY userID
    HAVING AVG(starAmount) > 4
);

-- 6. Get the Product(s) with the Highest Cost in Each Category
SELECT productID, categoryID, cost
FROM [Product]
WHERE cost = (SELECT MAX(cost) FROM [Product] P2 WHERE P2.categoryID = [Product].categoryID);

-- 7. Find All Shipments for Orders Placed in a Specific City, along with the User Details
SELECT S.shipmentID, S.trackingNumber, S.shippedDate, S.expectedDate, U.[name], U.email, U.phoneNumber
FROM Shipment S
JOIN [Order] O ON S.orderID = O.orderID
JOIN Cart C ON O.cartID = C.cartID
JOIN [User] U ON C.userID = U.userID
WHERE S.city = 'Richmond';

-- 8. List All Users and the Total Cost of All Orders They Have Placed
SELECT U.userID, U.[name], SUM(O.totalCost) AS totalSpent
FROM [User] U
JOIN Cart C ON U.userID = C.userID
JOIN [Order] O ON C.cartID = O.cartID
GROUP BY U.userID, U.[name];

-- 9. Count the Total Number of Products in Each Inventory Location
SELECT location, COUNT(productID) AS productCount
FROM Inventory
GROUP BY [location];

-- 10. Find the Average, Maximum, and Minimum Cost of Products in Each Category
SELECT categoryID, AVG(cost) AS avgCost, MAX(cost) AS maxCost, MIN(cost) AS minCost
FROM [Product]
GROUP BY categoryID;