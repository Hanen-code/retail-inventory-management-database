-- Retail Inventory Management Database
-- SQL Queries


-- 1. Products with quantity on hand greater than average
SELECT Name, QuantityOnHand
FROM Products
WHERE QuantityOnHand > (
    SELECT AVG(QuantityOnHand)
    FROM Products
);


-- 2. Total number of orders placed by each customer
SELECT Customers.ID, Customers.Name, COUNT(Orders.OrderID) AS TotalOrders
FROM Customers
LEFT JOIN Orders ON Customers.ID = Orders.CustomerID
GROUP BY Customers.ID, Customers.Name;


-- 3. Products never included in any order
SELECT Products.Name
FROM Products
LEFT JOIN OrderDetails
    ON Products.ID = OrderDetails.ProductID
WHERE OrderDetails.ProductID IS NULL;
