-- Users table
CREATE TABLE Grab_Users (
    UserId INT PRIMARY KEY,
    Email VARCHAR(100),
    UserType VARCHAR(50),
	Phone_number VARCHAR(20)
);


-- Driver table 
CREATE TABLE Drivers (
    DUser_ID INT PRIMARY KEY,
    Last_name VARCHAR(100),
    First_name VARCHAR(100),
    Middle_name VARCHAR(100),
    Vehicle_Type VARCHAR(100),
	License_Plate VARCHAR(50),
    Rating DECIMAL(3, 2),
    Status VARCHAR(50),
    Location VARCHAR(100)
);

-- Customer table
CREATE TABLE Customers (
    CUser_Id INT PRIMARY KEY,
    Last_name VARCHAR(100),
    First_name VARCHAR(100),
    Middle_name VARCHAR(100),
    Address VARCHAR(100),
	Create_date DATETIME,
    Modified_at DATETIME,
    Loyalty_points INT,
);

-- Cuisine table 
CREATE TABLE Cuisine_Types (
    Cuisine_Id INT PRIMARY KEY,
    Cuisine_Name VARCHAR(100)
);

-- Restaurant table
CREATE TABLE Restaurants (
    RUser_Id INT PRIMARY KEY,
    Restaurant_Name VARCHAR(100),
    Address VARCHAR(255),
    Opening_time TIME, 
    Rating DECIMAL(3, 2),
    Cuisine_Id INT,
    FOREIGN KEY (Cuisine_Id) REFERENCES Cuisine_Types(Cuisine_Id)
);

-- Table: Categories
CREATE TABLE Categories (
    Category_Id INT PRIMARY KEY,
    Category_Name VARCHAR(100)
);

-- Table: Menu Items
CREATE TABLE Menu_Items (
    Menu_Item_Id INT PRIMARY KEY,
    Item_Name VARCHAR(100),
    Item_Price DECIMAL(10, 2),
    Availability BIT, 
    Category_Id INT,
    Restaurant_Id INT,
    FOREIGN KEY (Category_Id) REFERENCES Categories(Category_Id),
    FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants(RUser_Id)
);

-- Table: Orders
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    RUser_Id INT, 
    DUser_Id INT, 
    CUser_Id INT, 
    Order_address VARCHAR(255),
    Order_status VARCHAR(50),
    Order_date DATETIME,
    Voucher_Id INT, 
    Total_amount DECIMAL(10, 2),
    FOREIGN KEY (RUser_Id) REFERENCES Restaurants(RUser_Id),
    FOREIGN KEY (DUser_Id) REFERENCES Drivers(DUser_Id),
    FOREIGN KEY (CUser_Id) REFERENCES Customers(CUser_Id),
    FOREIGN KEY (Voucher_Id) REFERENCES Vouchers(Voucher_Id)
);

-- Table: Order Items
CREATE TABLE Order_Items (
    Order_Item_Id INT PRIMARY KEY,
    Quantity INT,
    Price DECIMAL(10, 2),
    Menu_Item_Id INT,
    Order_Id INT,
    FOREIGN KEY (Menu_Item_Id) REFERENCES Menu_Items(Menu_Item_Id),
    FOREIGN KEY (Order_Id) REFERENCES Orders(Order_Id)
);

-- Vouchers table
CREATE TABLE Vouchers (
    Voucher_Id INT PRIMARY KEY,
    Discount_Percentage DECIMAL(5, 2),
    Valid_From DATE,
    Valid_To DATE,
    Max_Discount_Amount DECIMAL(10, 2),
    Min_Order_Value DECIMAL(10, 2)
);

-- Payments table
CREATE TABLE Payments (
    Payment_Id INT PRIMARY KEY,
    Amount DECIMAL(10, 2),
    Payment_Method VARCHAR(50),
    Payment_Date DATE,
    Order_Id INT,
    CUser_Id INT, 
    Payment_Status VARCHAR(50),
    FOREIGN KEY (Order_Id) REFERENCES Orders(Order_Id),
    FOREIGN KEY (CUser_Id) REFERENCES Customers(CUser_Id)
);

-- Product Reviews table
CREATE TABLE Product_Reviews (
    Review_Id INT PRIMARY KEY,
    Order_Id INT,
    RUser_Id INT, 
    DUser_Id INT, 
    CUser_Id INT, 
    Service_Request_Id INT, 
    Created_At DATETIME,
    Rating INT,
    Review_Text VARCHAR(255),
    FOREIGN KEY (Order_Id) REFERENCES Orders(Order_Id),
    FOREIGN KEY (RUser_Id) REFERENCES Restaurants(RUser_Id),
    FOREIGN KEY (DUser_Id) REFERENCES Drivers(DUser_Id),
    FOREIGN KEY (CUser_Id) REFERENCES Customers(CUser_Id),
    FOREIGN KEY (Service_Request_Id) REFERENCES Customer_Service(Service_Request_Id)
);

-- Customer Service table
CREATE TABLE Customer_Service (
    Service_Request_Id INT PRIMARY KEY,
	EUser_Id INT,
    Description VARCHAR(255),
	Created_at DATETIME,
    Issuse_Type VARCHAR(100),
	Status VARCHAR(100)
	FOREIGN KEY (EUser_Id) REFERENCES Employees(EUser_Id)
);

-- Employees table
CREATE TABLE Employees (
    EUser_Id INT PRIMARY KEY,
    Last_name VARCHAR(100),
    Middle_name VARCHAR(100),
    First_name VARCHAR(100),
    Hired_date DATETIME,
    Salary DECIMAL(10, 2)
);

-- Report type table 
CREATE TABLE Report_Types (
    Report_Type_Id INT PRIMARY KEY,
    Report_Type_Name VARCHAR(100)
);

-- Reports table
CREATE TABLE Reports (
    Report_Id INT PRIMARY KEY,
    Report_Type_Id INT, 
    Service_Request_Id INT,
    Generated_By VARCHAR(50), 
    RUser_Id INT,
    DUser_Id INT, 
    Created_At DATETIME,
    Report_Description VARCHAR(255),
    FOREIGN KEY (Report_Type_Id) REFERENCES Report_Types(Report_Type_Id),
    FOREIGN KEY (Service_Request_Id) REFERENCES Customer_Service(Service_Request_Id),
    FOREIGN KEY (RUser_Id) REFERENCES Restaurants(RUser_Id),
    FOREIGN KEY (DUser_Id) REFERENCES Drivers(DUser_Id),
);