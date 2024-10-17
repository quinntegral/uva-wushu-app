USE [WushuApp];
INSERT INTO Category (categoryID, productType, size, heightRange, weightRange, armLengthRange)
VALUES
(1, 'Broadsword', 'Medium weapon', '150-180cm', '50-75kg', '60-80cm'),
(2, 'Straight Sword', 'Medium weapon', '150-180cm', '50-75kg', '60-80cm'),
(3, 'Staff', 'Long weapon', '160-190cm', '60-90kg', '60-85cm'),
(4, 'Spear', 'Long weapon', '160-190cm', '60-90kg', '60-85cm'),
(5, 'Guandao', 'Long weapon', '170-200cm', '70-100kg', '65-90cm'),
(6, 'Pudao', 'Long weapon', '170-200cm', '70-100kg', '65-90cm'),
(7, 'Silks', 'Apparel', 'N/A', 'N/A', 'N/A'),
(8, 'Shoes', 'Apparel', 'N/A', 'N/A', 'N/A');

INSERT INTO [Product] (productID, categoryID, [description], cost)
VALUES
(1, 1, 'DaYe HengTong Wushu Pudao', 119.00),
(2, 1, 'HD1001 Competition Wushu Broadsword - Wooden Handle', 88.95),
(3, 1, 'HD1002 Competition Wushu Broadsword - Stainless Steel Handle', 89.95),
(4, 1, 'DaYe Wushu Competition Broadsword', 89.95),
(5, 1, 'DaYe HengTong Professional Kung Fu Training Broad Sword', 55.00),
(6, 2, 'Competition Wushu Straight Sword - Wooden Handle', 88.95),
(7, 2, 'DaYe Professional Kung Fu Training Straight Sword', 62.99),
(8, 2, 'Competition Wushu Straight Sword - Metal Handle', 98.99),
(9, 2, 'DaYe Competition Wushu Straight Sword', 89.95),
(10, 4, 'DaYe Carbon Fiber Wushu Competition Spear (Qiang)', 149.95),
(11, 4, 'DaYe Competition Carbon Fiber Wushu Spear', 169.95),
(12, 3, 'DaYe Carbon Fiber Wushu Bo Staff', 139.95),
(13, 3, 'DaYe Wushu Competition Carbon Fiber Bo Staff', 149.95),
(14, 3, 'Competition Carbon Fiber Wushu Bo Staff - WeiSing', 139.95),
(15, 1, 'DaYe Competition Southern Broadsword (Nandao)', 109.95),
(16, 1, 'SGL Competition Southern Broadsword (Nandao)', 75.99),
(17, 2, 'Tai Chi Competition Straight Sword', 109.95),
(18, 2, 'Premium Tai Chi Competition Long Sword', 139.00),
(19, 7, 'Red Silk Wushu Uniform', 55.00),
(20, 7, 'Blue Silk Wushu Uniform', 55.00),
(21, 7, 'Black Silk Wushu Uniform', 70.00),
(22, 7, 'White Silk Wushu Sash', 25.00),
(23, 7, 'Gold Silk Wushu Sash', 25.00),
(24, 8, 'Lightweight Wushu Shoes', 65.00),
(25, 8, 'Reinforced Wushu Shoes', 75.00),
(26, 8, 'Breathable Wushu Shoes', 85.00),
(27, 8, 'Traditional Wushu Shoes', 60.00),
(28, 7, 'Green Silk Wushu Uniform', 58.00),
(29, 7, 'Purple Silk Wushu Uniform', 62.00),
(30, 7, 'White Silk Sash with Gold Embroidery', 28.00);

INSERT INTO dbo.[User] (userID, [name], height, [weight], armLength, currentWeapon, currentApparel, email, [password], phoneNumber, isExecUser)
VALUES
(1, 'Abigail Barr', 0, 0, 0, NULL, NULL, 'abigail.barr@example.com', 'fakepassword1', '1234567890', 0),
(2, 'Abigail Cumberledge', 0, 0, 0, NULL, NULL, 'abigail.cumberledge@example.com', 'fakepassword2', '1234567891', 0),
(3, 'Andrew Chand', 0, 0, 0, NULL, NULL, 'andrew.chand@example.com', 'fakepassword3', '1234567892', 1),
(4, 'Angel Lai', 0, 0, 0, NULL, NULL, 'angel.lai@example.com', 'fakepassword4', '1234567893', 0),
(5, 'Angela Han', 0, 0, 0, NULL, NULL, 'angela.han@example.com', 'fakepassword5', '1234567894', 0),
(6, 'Angelica Franco Brito', 0, 0, 0, NULL, NULL, 'angelica.francobrito@example.com', 'fakepassword6', '1234567895', 0),
(7, 'Anson Dao', 0, 0, 0, NULL, NULL, 'anson.dao@example.com', 'fakepassword7', '1234567896', 0),
(8, 'Aubrey Carley', 0, 0, 0, NULL, NULL, 'aubrey.carley@example.com', 'fakepassword8', '1234567897', 0),
(9, 'Brandon Nesbit', 0, 0, 0, NULL, NULL, 'brandon.nesbit@example.com', 'fakepassword9', '1234567898', 0),
(10, 'Camyla Gonzalez', 0, 0, 0, NULL, NULL, 'camyla.gonzalez@example.com', 'fakepassword10', '1234567899', 0),
(11, 'Carissa Chen', 0, 0, 0, NULL, NULL, 'carissa.chen@example.com', 'fakepassword11', '1234567810', 0),
(12, 'Cecilia Sun', 0, 0, 0, NULL, NULL, 'cecilia.sun@example.com', 'fakepassword12', '1234567811', 0),
(13, 'Christopher Daniel', 0, 0, 0, NULL, NULL, 'christopher.daniel@example.com', 'fakepassword13', '1234567812', 0),
(14, 'Dakota Yu', 0, 0, 0, NULL, NULL, 'dakota.yu@example.com', 'fakepassword14', '1234567813', 0),
(15, 'Derek Wang', 0, 0, 0, NULL, NULL, 'derek.wang@example.com', 'fakepassword15', '1234567814', 0),
(16, 'Emily Zhou', 0, 0, 0, NULL, NULL, 'emily.zhou@example.com', 'fakepassword16', '1234567815', 0),
(17, 'Emma Barnes', 0, 0, 0, NULL, NULL, 'emma.barnes@example.com', 'fakepassword17', '1234567816', 0),
(18, 'Evan Xu', 0, 0, 0, NULL, NULL, 'evan.xu@example.com', 'fakepassword18', '1234567817', 1),
(19, 'FZ Naqshbandi', 0, 0, 0, NULL, NULL, 'fz.naqshbandi@example.com', 'fakepassword19', '1234567818', 0),
(20, 'Griffin Chozick', 0, 0, 0, NULL, NULL, 'griffin.chozick@example.com', 'fakepassword20', '1234567819', 0),
(21, 'Hailey Chong', 0, 0, 0, NULL, NULL, 'hailey.chong@example.com', 'fakepassword21', '1234567820', 0),
(22, 'Helen Dunn', 0, 0, 0, NULL, NULL, 'helen.dunn@example.com', 'fakepassword22', '1234567821', 0),
(23, 'Hira Hyder', 0, 0, 0, NULL, NULL, 'hira.hyder@example.com', 'fakepassword23', '1234567822', 0),
(24, 'Jalil Jimenez', 0, 0, 0, NULL, NULL, 'jalil.jimenez@example.com', 'fakepassword24', '1234567823', 0),
(25, 'James Xu', 0, 0, 0, NULL, NULL, 'james.xu@example.com', 'fakepassword25', '1234567824', 0),
(26, 'Jocelyn Jiang', 0, 0, 0, NULL, NULL, 'jocelyn.jiang@example.com', 'fakepassword26', '1234567825', 0),
(27, 'Jolinna Li', 0, 0, 0, NULL, NULL, 'jolinna.li@example.com', 'fakepassword27', '1234567826', 0),
(28, 'Jonathan Deng', 0, 0, 0, NULL, NULL, 'jonathan.deng@example.com', 'fakepassword28', '1234567827', 0),
(29, 'Kate Dunkle', 0, 0, 0, NULL, NULL, 'kate.dunkle@example.com', 'fakepassword29', '1234567828', 0),
(30, 'Leo Dzema', 0, 0, 0, NULL, NULL, 'leo.dzema@example.com', 'fakepassword30', '1234567829', 0),
(31, 'Lianna Hong', 0, 0, 0, NULL, NULL, 'lianna.hong@example.com', 'fakepassword31', '1234567830', 0),
(32, 'Markus Lin', 0, 0, 0, NULL, NULL, 'markus.lin@example.com', 'fakepassword32', '1234567831', 0),
(33, 'Medha Tadavarthi', 0, 0, 0, NULL, NULL, 'medha.tadavarthi@example.com', 'fakepassword33', '1234567832', 1),
(34, 'Megan Vu', 0, 0, 0, NULL, NULL, 'megan.vu@example.com', 'fakepassword34', '1234567833', 0),
(35, 'Naila Rivera-Morales', 0, 0, 0, NULL, NULL, 'naila.rivera@example.com', 'fakepassword35', '1234567834', 0),
(36, 'Nathan Cabrera', 0, 0, 0, NULL, NULL, 'nathan.cabrera@example.com', 'fakepassword36', '1234567835', 0),
(37, 'Nathan Kurland', 0, 0, 0, NULL, NULL, 'nathan.kurland@example.com', 'fakepassword37', '1234567836', 0),
(38, 'Patrick Yin', 0, 0, 0, NULL, NULL, 'patrick.yin@example.com', 'fakepassword38', '1234567837', 1),
(39, 'Qiming Fu', 0, 0, 0, NULL, NULL, 'qiming.fu@example.com', 'fakepassword39', '1234567838', 0),
(40, 'Jean Quinn', 0, 0, 0, NULL, NULL, 'rachel.quinn@example.com', 'fakepassword40', '1234567839', 1),
(41, 'Robert Kinkead', 0, 0, 0, NULL, NULL, 'robert.kinkead@example.com', 'fakepassword41', '1234567840', 0),
(42, 'Sahar Zeiaei', 0, 0, 0, NULL, NULL, 'sahar.zeiaei@example.com', 'fakepassword42', '1234567841', 0),
(43, 'Tracy Echais', 0, 0, 0, NULL, NULL, 'tracy.echais@example.com', 'fakepassword43', '1234567842', 0),
(44, 'Wenxin Xu', 0, 0, 0, NULL, NULL, 'wenxin.xu@example.com', 'fakepassword44', '1234567843', 0);

INSERT INTO User_currentApparel (userID, productID)
VALUES 
(1, 2),
(2, 3),
(3, 1),
(4, 4),
(5, 5);

INSERT INTO User_currentWeapon (userID, productID)
VALUES 
(1, 3),
(2, 1),
(3, 4),
(4, 2),
(5, 5);

--PROMO CODE
INSERT INTO PromoCode (promoCodeID, [percent], code)
VALUES
(1, 20, 'WUSHUSUS20'),
(2, 100, 'HOOSSUS100'),
(3, 5, 'WELCOME'),
(4, 10, '10PERCENTFOR10PEOPLE'),
(5, 7, 'GCFWUSHUALLIANCE');


--CART
INSERT INTO Cart (cartID, userID, promoCodeID, totalCost)
VALUES 
(1, 1, NULL, 0.00),
(2, 2, NULL, 0.00),
(3, 3, NULL, 0.00),
(4, 4, NULL, 0.00),
(5, 5, NULL, 0.00),
(6, 6, NULL, 0.00);

--CART ITEMS
INSERT INTO Cart_items (cartID, productID, quantity)
VALUES 
(1, 22, 1),
(1, 8, 1),
(1, 4, 1),
(2, 2, 2),
(2, 12, 1),
(3, 6, 20);

INSERT INTO MemberRequest (requestID, cartID, userID, dateRequested, [status])
VALUES 
(1, 1, 1, '2024-10-16', 'pending'),
(2, 2, 2, '2024-10-15', 'approved'),
(3, 3, 3, '2024-10-14', 'rejected'),
(4, 4, 4, '2024-10-13', 'pending'),
(5, 5, 5, '2024-10-12', 'approved');
	

INSERT INTO dbo.[Order] (orderID, cartID, totalCost)
VALUES
(1, 1, 150.75),
(2, 2, 220.00),
(3, 2, 305.50),
(4, 3, 120.25),
(5, 3, 450.90),
(6, 1, 199.99),
(7, 4, 330.40),
(8, 1, 89.95),
(9, 5, 275.30),
(10, 5, 410.00),
(11, 5, 155.45),
(12, 6, 205.10),
(13, 2, 650.00),
(14, 5, 500.75),
(15, 3, 240.00),
(16, 1, 315.60),
(17, 6, 132.45),
(18, 1, 210.00),
(19, 2, 575.20),
(20, 1, 125.99),
(21, 5, 390.50),
(22, 4, 180.00),
(23, 4, 445.30),
(24, 2, 98.70),
(25, 6, 310.45),
(26, 2, 140.99),
(27, 3, 270.80),
(28, 6, 360.00),
(29, 1, 410.15),
(30, 1, 200.00);

--INVENTORY
INSERT INTO Inventory (inventoryID, productID, amount, [location])
VALUES 
(1, 1, 10, 'Wushu House'), -- DaYe HengTong Wushu Pudao
(2, 2, 5, 'Jean Car'), -- HD1001 Competition Wushu Broadsword - Wooden Handle
(3, 3, 7, 'Evan Apartment'), -- HD1002 Competition Wushu Broadsword - Stainless Steel Handle
(4, 4, 3, 'Wushu House'), -- DaYe Wushu Competition Broadsword
(5, 5, 0, 'Don''t Have'), -- DaYe HengTong Professional Kung Fu Training Broad Sword
(6, 6, 8, 'Jean Car'), -- Competition Wushu Straight Sword - Wooden Handle
(7, 7, 9, 'Evan Apartment'), -- DaYe Professional Kung Fu Training Straight Sword
(8, 8, 4, 'Wushu House'), -- Competition Wushu Straight Sword - Metal Handle
(9, 9, 0, 'Don''t Have'), -- DaYe Competition Wushu Straight Sword
(10, 10, 6, 'Jean Car'), -- DaYe Carbon Fiber Wushu Competition Spear (Qiang)
(11, 11, 2, 'Evan Apartment'), -- DaYe Competition Carbon Fiber Wushu Spear
(12, 12, 11, 'Wushu House'), -- DaYe Carbon Fiber Wushu Bo Staff
(13, 13, 0, 'Don''t Have'), -- DaYe Wushu Competition Carbon Fiber Bo Staff
(14, 14, 7, 'Jean Car'), -- Competition Carbon Fiber Wushu Bo Staff - WeiSing
(15, 15, 3, 'Evan Apartment'), -- DaYe Competition Southern Broadsword (Nandao)
(16, 16, 5, 'Wushu House'), -- SGL Competition Southern Broadsword (Nandao)
(17, 17, 0, 'Don''t Have'), -- Tai Chi Competition Straight Sword
(18, 18, 4, 'Jean Car'), -- Premium Tai Chi Competition Long Sword
(19, 19, 6, 'Evan Apartment'), -- Red Silk Wushu Uniform
(20, 20, 8, 'Wushu House'), -- Blue Silk Wushu Uniform
(21, 21, 0, 'Don''t Have'), -- Black Silk Wushu Uniform
(22, 22, 15, 'Jean Car'), -- White Silk Wushu Sash
(23, 23, 12, 'Evan Apartment'), -- Gold Silk Wushu Sash
(24, 24, 20, 'Wushu House'), -- Lightweight Wushu Shoes
(25, 25, 0, 'Don''t Have'), -- Reinforced Wushu Shoes
(26, 26, 8, 'Jean Car'), -- Breathable Wushu Shoes
(27, 27, 15, 'Evan Apartment'), -- Traditional Wushu Shoes
(28, 28, 4, 'Wushu House'), -- Green Silk Wushu Uniform
(29, 29, 0, 'Don''t Have'), -- Purple Silk Wushu Uniform
(30, 30, 6, 'Jean Car'); -- White Silk Sash with Gold Embroidery

INSERT INTO Payment (paymentID, paymentType, orderID, cardNumber, expirationDate, securityCode, city, [state], country, zipCode)
VALUES
(1, 'Credit Card', 1, '4111111111111111', '2024-12-01', '123', 'Charlottesville', 'VA', 'USA', '22901'),
(2, 'Debit Card', 2, '5555555555554444', '2025-07-01', '456', 'Richmond', 'VA', 'USA', '23220'),
(3, 'Credit Card', 3, '378282246310005', '2023-11-01', '789', 'Virginia Beach', 'VA', 'USA', '23450'),
(4, 'Credit Card', 4, '6011111111111117', '2026-08-01', '321', 'Fairfax', 'VA', 'USA', '22030'),
(5, 'Debit Card', 5, '5105105105105100', '2024-06-01', '654', 'Charlottesville', 'VA', 'USA', '22903'),
(6, 'Credit Card', 6, '4111111111111111', '2023-10-01', '987', 'Richmond', 'VA', 'USA', '23221'),
(7, 'Credit Card', 7, '5555555555554444', '2025-12-01', '159', 'Virginia Beach', 'VA', 'USA', '23451'),
(8, 'Credit Card', 8, '378282246310005', '2026-04-01', '753', 'Fairfax', 'VA', 'USA', '22031'),
(9, 'Debit Card', 9, '6011111111111117', '2023-09-01', '951', 'Charlottesville', 'VA', 'USA', '22902'),
(10, 'Credit Card', 10, '5105105105105100', '2024-03-01', '357', 'Richmond', 'VA', 'USA', '23222'),
(11, 'Debit Card', 11, '4111111111111111', '2025-05-01', '852', 'Virginia Beach', 'VA', 'USA', '23452'),
(12, 'Credit Card', 12, '5555555555554444', '2026-10-01', '654', 'Fairfax', 'VA', 'USA', '22032'),
(13, 'Credit Card', 13, '378282246310005', '2024-01-01', '987', 'Charlottesville', 'VA', 'USA', '22904'),
(14, 'Credit Card', 14, '6011111111111117', '2025-06-01', '321', 'Richmond', 'VA', 'USA', '23223'),
(15, 'Debit Card', 15, '5105105105105100', '2023-12-01', '456', 'Virginia Beach', 'VA', 'USA', '23453'),
(16, 'Credit Card', 16, '4111111111111111', '2026-05-01', '789', 'Fairfax', 'VA', 'USA', '22033'),
(17, 'Credit Card', 17, '5555555555554444', '2023-02-01', '123', 'Charlottesville', 'VA', 'USA', '22905'),
(18, 'Debit Card', 18, '378282246310005', '2024-11-01', '654', 'Richmond', 'VA', 'USA', '23224'),
(19, 'Credit Card', 19, '6011111111111117', '2025-08-01', '987', 'Virginia Beach', 'VA', 'USA', '23454'),
(20, 'Credit Card', 20, '5105105105105100', '2023-07-01', '159', 'Fairfax', 'VA', 'USA', '22034'),
(21, 'Debit Card', 21, '4111111111111111', '2026-03-01', '753', 'Charlottesville', 'VA', 'USA', '22906'),
(22, 'Credit Card', 22, '5555555555554444', '2024-08-01', '951', 'Richmond', 'VA', 'USA', '23225'),
(23, 'Credit Card', 23, '378282246310005', '2023-05-01', '357', 'Virginia Beach', 'VA', 'USA', '23455'),
(24, 'Debit Card', 24, '6011111111111117', '2026-07-01', '852', 'Fairfax', 'VA', 'USA', '22035'),
(25, 'Credit Card', 25, '5105105105105100', '2024-10-01', '456', 'Charlottesville', 'VA', 'USA', '22907'),
(26, 'Credit Card', 26, '4111111111111111', '2025-09-01', '789', 'Richmond', 'VA', 'USA', '23226'),
(27, 'Debit Card', 27, '5555555555554444', '2026-02-01', '123', 'Virginia Beach', 'VA', 'USA', '23456'),
(28, 'Credit Card', 28, '378282246310005', '2023-11-01', '654', 'Fairfax', 'VA', 'USA', '22036'),
(29, 'Credit Card', 29, '6011111111111117', '2024-12-01', '987', 'Charlottesville', 'VA', 'USA', '22908'),
(30, 'Debit Card', 30, '5105105105105100', '2025-03-01', '321', 'Richmond', 'VA', 'USA', '23227');

INSERT INTO Shipment (shipmentID, paymentID, orderID, shippedDate, expectedDate, trackingNumber, city, [state], zipCode, country)
VALUES
(1, 1, 1, '2023-12-01', '2023-12-05', 'TRK123456001', 'Charlottesville', 'VA', '22901', 'USA'),
(2, 2, 2, '2023-12-02', '2023-12-06', 'TRK123456002', 'Richmond', 'VA', '23220', 'USA'),
(3, 3, 3, '2023-12-03', '2023-12-07', 'TRK123456003', 'Virginia Beach', 'VA', '23450', 'USA'),
(4, 4, 4, '2023-12-04', '2023-12-08', 'TRK123456004', 'Fairfax', 'VA', '22030', 'USA'),
(5, 5, 5, '2023-12-05', '2023-12-09', 'TRK123456005', 'Charlottesville', 'VA', '22903', 'USA'),
(6, 6, 6, '2023-12-06', '2023-12-10', 'TRK123456006', 'Richmond', 'VA', '23221', 'USA'),
(7, 7, 7, '2023-12-07', '2023-12-11', 'TRK123456007', 'Virginia Beach', 'VA', '23451', 'USA'),
(8, 8, 8, '2023-12-08', '2023-12-12', 'TRK123456008', 'Fairfax', 'VA', '22031', 'USA'),
(9, 9, 9, '2023-12-09', '2023-12-13', 'TRK123456009', 'Charlottesville', 'VA', '22902', 'USA'),
(10, 10, 10, '2023-12-10', '2023-12-14', 'TRK123456010', 'Richmond', 'VA', '23222', 'USA'),
(11, 11, 11, '2023-12-11', '2023-12-15', 'TRK123456011', 'Virginia Beach', 'VA', '23452', 'USA'),
(12, 12, 12, '2023-12-12', '2023-12-16', 'TRK123456012', 'Fairfax', 'VA', '22032', 'USA'),
(13, 13, 13, '2023-12-13', '2023-12-17', 'TRK123456013', 'Charlottesville', 'VA', '22904', 'USA'),
(14, 14, 14, '2023-12-14', '2023-12-18', 'TRK123456014', 'Richmond', 'VA', '23223', 'USA'),
(15, 15, 15, '2023-12-15', '2023-12-19', 'TRK123456015', 'Virginia Beach', 'VA', '23453', 'USA'),
(16, 16, 16, '2023-12-16', '2023-12-20', 'TRK123456016', 'Fairfax', 'VA', '22033', 'USA'),
(17, 17, 17, '2023-12-17', '2023-12-21', 'TRK123456017', 'Charlottesville', 'VA', '22905', 'USA'),
(18, 18, 18, '2023-12-18', '2023-12-22', 'TRK123456018', 'Richmond', 'VA', '23224', 'USA'),
(19, 19, 19, '2023-12-19', '2023-12-23', 'TRK123456019', 'Virginia Beach', 'VA', '23454', 'USA'),
(20, 20, 20, '2023-12-20', '2023-12-24', 'TRK123456020', 'Fairfax', 'VA', '22034', 'USA'),
(21, 21, 21, '2023-12-21', '2023-12-25', 'TRK123456021', 'Charlottesville', 'VA', '22906', 'USA'),
(22, 22, 22, '2023-12-22', '2023-12-26', 'TRK123456022', 'Richmond', 'VA', '23225', 'USA'),
(23, 23, 23, '2023-12-23', '2023-12-27', 'TRK123456023', 'Virginia Beach', 'VA', '23455', 'USA'),
(24, 24, 24, '2023-12-24', '2023-12-28', 'TRK123456024', 'Fairfax', 'VA', '22035', 'USA'),
(25, 25, 25, '2023-12-25', '2023-12-29', 'TRK123456025', 'Charlottesville', 'VA', '22907', 'USA'),
(26, 26, 26, '2023-12-26', '2023-12-30', 'TRK123456026', 'Richmond', 'VA', '23226', 'USA'),
(27, 27, 27, '2023-12-27', '2023-12-31', 'TRK123456027', 'Virginia Beach', 'VA', '23456', 'USA'),
(28, 28, 28, '2023-12-28', '2024-01-01', 'TRK123456028', 'Fairfax', 'VA', '22036', 'USA'),
(29, 29, 29, '2023-12-29', '2024-01-02', 'TRK123456029', 'Charlottesville', 'VA', '22908', 'USA'),
(30, 30, 30, '2023-12-30', '2024-01-03', 'TRK123456030', 'Richmond', 'VA', '23227', 'USA');

INSERT INTO Review (reviewID, productID, userID, starAmount, body)
VALUES
(1, 1, 1, 5, 'Excellent broadsword, perfect balance and weight!'),
(2, 2, 2, 4, 'Good quality staff, but a bit expensive for beginners.'),
(3, 3, 3, 3, 'Average guandao, does the job but nothing special.'),
(4, 4, 4, 2, 'Not satisfied with the straight sword, lacks durability.'),
(5, 5, 5, 1, 'Terrible spear, broke during first practice session.'),
(6, 6, 6, 5, 'Absolutely love this straight sword! Handles beautifully.'),
(7, 7, 7, 4, 'Broadsword works well, but could use a better grip.'),
(8, 8, 8, 3, 'It’s okay for a pudao, gets the basics right.'),
(9, 9, 9, 2, 'Had issues with the guandao from the start, not well balanced.'),
(10, 10, 10, 5, 'Great value for this training staff!'),
(11, 11, 11, 4, 'Satisfied with the spear, good for intermediate training.'),
(12, 12, 12, 3, 'Decent staff for the price, but lacks weight.'),
(13, 13, 13, 1, 'Did not meet my expectations, straight sword feels flimsy.'),
(14, 14, 14, 5, 'Exceeded expectations, fantastic guandao for competition!'),
(15, 15, 15, 2, 'Disappointed with the pudao’s performance, not sharp enough.'),
(16, 16, 16, 5, 'Highly recommend this broadsword, excellent quality.'),
(17, 17, 17, 4, 'Pretty good spear, happy with the purchase.'),
(18, 18, 18, 3, 'It’s an okay guandao, nothing special for advanced practitioners.'),
(19, 19, 19, 1, 'Received a defective straight sword, terrible experience.'),
(20, 20, 20, 5, 'Amazing staff, will buy again for sure!'),
(21, 21, 21, 4, 'Worth the price for this guandao, satisfied.'),
(22, 22, 22, 2, 'Not what I expected from this spear, disappointed.'),
(23, 23, 23, 5, 'Great quality straight sword, very happy with it.'),
(24, 24, 24, 3, 'Meets the basic needs for a beginner broadsword.'),
(25, 25, 25, 1, 'Very poor quality pudao, not recommended for serious training.'),
(26, 26, 26, 5, 'Love this broadsword! Exceeded my expectations for competition use.'),
(27, 27, 27, 4, 'Good spear, but could improve the design of the handle.'),
(28, 28, 28, 2, 'Not worth the price for this guandao, better options available.'),
(29, 29, 29, 5, 'Fantastic staff, will recommend to all my Wushu friends!'),
(30, 30, 30, 3, 'Average straight sword, nothing impressive for advanced practitioners.');