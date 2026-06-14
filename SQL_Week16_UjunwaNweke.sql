
-- NORMALIZATION
-- ==========================================
-- Customer information is stored in Customers
-- Product information is stored in Product
-- Order information is stored in Orders
-- Order details are stored in Order_Product
-- This reduces redundancy and improves data integrity.

-- PROPER JOINS
-- 
SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate,
    p.ProductName,
    op.Quantity
FROM dbo.Customers c
INNER JOIN dbo.Orders o
    ON c.CustomerID = o.CustomerID
INNER JOIN dbo.Order_Product op
    ON o.OrderID = op.OrderID
INNER JOIN dbo.Product p
    ON op.ProductID = p.ProductID;

-- QUERY OPTIMIZATION USING INDEXES
-- =
CREATE INDEX IX_Order_CustomerID
ON dbo.Orders(CustomerID);

CREATE INDEX IX_OrderProduct_OrderID
ON dbo.Order_Product(OrderID);

-- OPTIMIZED QUERY
SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate,
    o.OrderTotal
FROM dbo.Customers c
INNER JOIN dbo.Orders o
    ON c.CustomerID = o.CustomerID;