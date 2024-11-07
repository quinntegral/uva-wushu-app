USE PROJ;

-- Drop all tables by dependency order

-- Step 1: Drop tables with no dependencies
DROP TABLE IF EXISTS Review;
DROP TABLE IF EXISTS Shipment;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Inventory;

-- Step 2: Drop tables that reference other tables
DROP TABLE IF EXISTS [Order];
DROP TABLE IF EXISTS MemberRequest;
DROP TABLE IF EXISTS Cart_items;

-- Step 3: Drop tables with cross-references to `User` and `Product`
DROP TABLE IF EXISTS User_currentWeapon;
DROP TABLE IF EXISTS User_currentApparel;

-- Step 4: Drop main tables with primary dependencies
DROP TABLE IF EXISTS Cart;
DROP TABLE IF EXISTS PromoCode;
DROP TABLE IF EXISTS [User];
DROP TABLE IF EXISTS [Product];
DROP TABLE IF EXISTS Category;

PRINT 'All tables dropped successfully.';