-- Retail Inventory Management Database
-- Sample Data

-- Suppliers
INSERT INTO Suppliers (ID, Name, ContactInfo) VALUES
(1, 'TechSource Ltd', 'techsource@email.com, +96890000001'),
(2, 'Global Supplies', 'globalsup@email.com, +96890000002'),
(3, 'Smart Wholesale', 'smartwhole@email.com, +96890000003');


-- Products
INSERT INTO Products (ID, Name, Description, Price, QuantityOnHand, SupplierID) VALUES
(101, 'Laptop', 'Dell Inspiron 15', 350.00, 20, 1),
(102, 'Mouse', 'Wireless Optical Mouse', 15.50, 50, 2),
(103, 'Keyboard', 'Mechanical Keyboard', 45.00, 30, 2),
(104, 'Monitor', '24-inch LED Monitor', 120.00, 10, 1),
(105, 'USB Drive', '64GB USB 3.0 Flash Drive', 12.00, 60, 3),
(106, 'Printer', 'HP Laser Printer', 180.00, 5, 1);


-- Customers
INSERT INTO Customers (ID, Name, Email, Phone) VALUES
(1, 'Ahmed Ali', 'ahmed.ali@email.com', '+96891111111'),
(2, 'Sara Mohamed', 'sara.m@email.com', '+96892222222'),
(3, 'Khalid Hassan', 'khalid.h@email.com', '+96893333333'),
(4, 'Noor Salem', 'noor.s@email.com', '+96894444444');


-- Orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(1001, 1, '2026-04-10'),
(1002, 2, '2026-04-11'),
(1003, 1, '2026-04-12'),
(1004, 3, '2026-04-13');


-- Order Details
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1001, 101, 1),
(1001, 102, 2),
(1002, 103, 1),
(1002, 105, 3),
(1003, 104, 1),
(1004, 102, 1);
