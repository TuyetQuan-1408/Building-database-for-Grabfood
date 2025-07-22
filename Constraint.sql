-- Grab_Users
ALTER TABLE Grab_Users
ADD CONSTRAINT CHK_UserType CHECK (UserType IN ('Customer', 'Driver', 'Employee','Restaurant'));
ALTER TABLE Grab_Users
ADD CONSTRAINT UQ_Grab_Users_Email UNIQUE (Email);

-- Drivers
ALTER TABLE Drivers
ADD CONSTRAINT CHK_Rating CHECK (Rating BETWEEN 1 AND 5);
ALTER TABLE Drivers
ALTER COLUMN Last_name VARCHAR(100) NOT NULL;
ALTER TABLE Drivers
ALTER COLUMN First_name VARCHAR(100) NOT NULL;
ALTER TABLE Drivers
ALTER COLUMN Vehicle_Type VARCHAR(100) NOT NULL;
ALTER TABLE Drivers
ALTER COLUMN Status VARCHAR(50) NOT NULL;
ALTER TABLE Drivers
ALTER COLUMN License_Plate VARCHAR(50) NOT NULL;

-- Customers
ALTER TABLE Customers
ALTER COLUMN Last_name VARCHAR(100) NOT NULL;
ALTER TABLE Customers
ALTER COLUMN First_name VARCHAR(100) NOT NULL;

-- Vouchers
ALTER TABLE Vouchers
ADD CONSTRAINT CHK_Discount_Percentage CHECK (Discount_Percentage BETWEEN 0 AND 100);

-- Employees
ALTER TABLE Employees
ALTER COLUMN Last_name VARCHAR(100) NOT NULL;
ALTER TABLE Employees
ALTER COLUMN First_name VARCHAR(100) NOT NULL;

-- Order items
ALTER TABLE Order_Items
DROP CONSTRAINT PK__Order_It__4845682186F943FB;
ALTER TABLE Order_Items
DROP COLUMN Order_Item_Id;
ALTER TABLE Order_Items
ALTER COLUMN Menu_Item_Id INT NOT NULL;
ALTER TABLE Order_Items
ALTER COLUMN Order_Id INT NOT NULL;
ALTER TABLE Order_Items
ADD PRIMARY KEY (Menu_Item_Id, Order_Id);

--- Grabuser table 
UPDATE Grab_Users
SET usertype = CASE 
                  WHEN usertype = 'Customer' THEN 'C'
                  WHEN usertype = 'Restaurant' THEN 'R'
                  WHEN usertype = 'Employee' THEN 'E'
                  WHEN usertype = 'Driver' THEN 'D'
                  ELSE usertype
               END;
ALTER TABLE Grab_users
ALTER COLUMN usertype CHAR(1);

----- Product_Reviews
-- Drop constraint
ALTER TABLE Product_Reviews
DROP CONSTRAINT FK__Product_R__RUser__6477ECF3;
ALTER TABLE Product_Reviews
DROP CONSTRAINT FK__Product_R__DUser__656C112C;
-- Drop column
ALTER TABLE Product_Reviews
DROP COLUMN RUser_Id;
ALTER TABLE Product_Reviews
DROP COLUMN DUser_Id;

----- Drivers Table
ALTER TABLE Drivers
ALTER COLUMN Last_name VARCHAR(50);
ALTER TABLE Drivers
ALTER COLUMN First_name VARCHAR(50);
ALTER TABLE Drivers
ALTER COLUMN Middle_name VARCHAR(50);
ALTER TABLE Drivers
ALTER COLUMN Vehicle_Type VARCHAR(50);
ALTER TABLE Drivers
ALTER COLUMN License_Plate VARCHAR(15);

----- Customers Table
ALTER TABLE Customers
ALTER COLUMN Last_name VARCHAR(50);

ALTER TABLE Customers
ALTER COLUMN First_name VARCHAR(50);

ALTER TABLE Customers
ALTER COLUMN Middle_name VARCHAR(50);

ALTER TABLE Customers
ALTER COLUMN  Address VARCHAR(255);

----- Employees Table
ALTER TABLE Employees
ALTER COLUMN Last_name VARCHAR(50);

ALTER TABLE Employees
ALTER COLUMN Middle_name VARCHAR(50);

ALTER TABLE Employees
ALTER COLUMN First_name VARCHAR(50);

