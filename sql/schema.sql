-- Retail Inventory Management Database
-- Database Schema

CREATE TABLE Suppliers (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactInfo VARCHAR(255)
);

CREATE TABLE Products (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description VARCHAR(255),
    Price DECIMAL(10,2),
    QuantityOnHand INT,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(ID)
);

CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ID)
);
