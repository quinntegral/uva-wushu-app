USE PROJ

CREATE TABLE Category (
    categoryID INT,
    productType VARCHAR(255),
    size VARCHAR(255),
    heightRange VARCHAR(255),
    weightRange VARCHAR(255),
    armLengthRange VARCHAR(255),
    CONSTRAINT Category_PK PRIMARY KEY (categoryID)
);

CREATE TABLE [Product] (
    productID INT,
    categoryID INT, -- FK reference to Category (categoryID)
    [description] TEXT,
    cost DECIMAL(10, 2),
	starAmount DECIMAL(3, 2) CHECK (starAmount BETWEEN 1 AND 5),
    CONSTRAINT Product_PK PRIMARY KEY (productID),
    CONSTRAINT Product_FK FOREIGN KEY (categoryID) REFERENCES Category(categoryID)
);
CREATE TABLE [User] (
    userID INT,
    [name] VARCHAR(255),
    height DECIMAL(5, 2),
    [weight] DECIMAL(5, 2),
    armLength DECIMAL(5, 2),
    currentWeapon INT, -- FK reference to Product (productID)
    currentApparel INT, -- FK reference to Product (productID)
    email VARCHAR(255) UNIQUE NOT NULL,
    [password] VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(20),
    isExecUser BIT DEFAULT 0,
    CONSTRAINT User_PK PRIMARY KEY (userID),
    CONSTRAINT User_Weapon_FK FOREIGN KEY (currentWeapon) REFERENCES [Product](productID),
    CONSTRAINT User_Apparel_FK FOREIGN KEY (currentApparel) REFERENCES [Product](productID)
);
CREATE TABLE User_currentApparel (
    userID INT,
    productID INT,
    CONSTRAINT Apparel_PK PRIMARY KEY (userID, productID),
    CONSTRAINT Apparel_User_FK FOREIGN KEY (userID) REFERENCES [User](userID),
    CONSTRAINT Apparel_Product_FK FOREIGN KEY (productID) REFERENCES [Product](productID)
);
CREATE TABLE User_currentWeapon (
    userID INT,
    productID INT,
    CONSTRAINT Weapon_PK PRIMARY KEY (userID, productID),
    CONSTRAINT Weapon_User_FK FOREIGN KEY (userID) REFERENCES [User](userID),
    CONSTRAINT Weapon_Product_FK FOREIGN KEY (productID) REFERENCES [Product](productID)
);
CREATE TABLE PromoCode (
    promoCodeID INT,
	code VARCHAR(50),
    [percent] DECIMAL(5, 2),
    CONSTRAINT PromoCode_PK PRIMARY KEY (promoCodeID),
	CONSTRAINT CHK_Percent CHECK ([percent] > 0 AND [percent] <= 100)
);
CREATE TABLE Cart (
    cartID INT,
    promoCodeID INT, -- FK reference to PromoCode (promoCodeID)
    totalCost DECIMAL(10, 2),
	userID INT,
    CONSTRAINT Cart_PK PRIMARY KEY (cartID),
    CONSTRAINT Cart_FK FOREIGN KEY (promoCodeID) REFERENCES PromoCode(promoCodeID),
	CONSTRAINT Cart_User_FK FOREIGN KEY (userID) REFERENCES [User](userID)
);
CREATE TABLE Cart_items (
	cartID INT, -- FK reference to Cart (cartID)
    productID INT, -- FK reference to Product (productID)
	quantity INT,
    CONSTRAINT Items_PK PRIMARY KEY (cartID, productID),
    CONSTRAINT Items_Cart_FK FOREIGN KEY (cartID) REFERENCES Cart(cartID),
    CONSTRAINT Items_Product_FK FOREIGN KEY (productID) REFERENCES [Product](productID)
);
CREATE TABLE MemberRequest (
    requestID INT,
    cartID INT, -- FK reference to Cart (cartID)
    userID INT, -- FK reference to User (userID)
    dateRequested DATE,
	[status] VARCHAR(8),
    CONSTRAINT MemberRequest_PK PRIMARY KEY (requestID),
    CONSTRAINT MemberRequest_Cart_FK FOREIGN KEY (cartID) REFERENCES Cart(cartID),
    CONSTRAINT MemberRequest_User_FK FOREIGN KEY (userID) REFERENCES [User](userID),
	CONSTRAINT CHK_Status CHECK ([status] IN ('pending', 'approved', 'rejected'))
);
CREATE TABLE [Order] (
    orderID INT,
    cartID INT, -- FK reference to Cart (cartID)
    totalCost DECIMAL(10, 2),
    CONSTRAINT Order_PK PRIMARY KEY (orderID),
    CONSTRAINT Order_FK FOREIGN KEY (cartID) REFERENCES Cart(cartID)
);
CREATE TABLE Inventory (
    inventoryID INT,
    productID INT, -- FK reference to Product (productID)
    amount INT,
    [location] VARCHAR(255),
    CONSTRAINT Inventory_PK PRIMARY KEY (inventoryID),
    CONSTRAINT Inventory_FK FOREIGN KEY (productID) REFERENCES [Product](productID)
);
CREATE TABLE Payment (
    paymentID INT,
    paymentType VARCHAR(50),
    orderID INT, -- FK reference to Order (orderID)
    cardNumber VARCHAR(20),
    expirationDate DATE,
    securityCode VARCHAR(10),
    city VARCHAR(100),
    [state] VARCHAR(100),
    country VARCHAR(100),
    zipCode VARCHAR(10),
    CONSTRAINT Payment_PK PRIMARY KEY (paymentID),
    CONSTRAINT Payment_FK FOREIGN KEY (orderID) REFERENCES [Order](orderID)
);
CREATE TABLE Shipment (
    shipmentID INT,
    paymentID INT, -- FK reference to Payment (paymentID)
    orderID INT, -- FK reference to Order (orderID)
    shippedDate DATE,
    expectedDate DATE,
    trackingNumber VARCHAR(100),
    city VARCHAR(100),
    [state] VARCHAR(100),
    zipCode VARCHAR(10),
    country VARCHAR(100),
    CONSTRAINT Shipment_PK PRIMARY KEY (shipmentID),
    CONSTRAINT Shipment_Payment_FK FOREIGN KEY (paymentID) REFERENCES Payment(paymentID),
    CONSTRAINT Shipment_Order_FK FOREIGN KEY (orderID) REFERENCES [Order](orderID)
);
CREATE TABLE Review (
    reviewID INT,
    productID INT, -- FK reference to Product (productID)
    userID INT, -- FK reference to User (userID)
    starAmount INT CHECK (starAmount BETWEEN 1 AND 5),
    body TEXT,
    CONSTRAINT Review_PK PRIMARY KEY (reviewID),
    CONSTRAINT Review_Product_FK FOREIGN KEY (productID) REFERENCES [Product](productID),
    CONSTRAINT Review_User_FK FOREIGN KEY (userID) REFERENCES [User](userID)
);
