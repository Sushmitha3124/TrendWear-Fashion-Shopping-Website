-- Cleanup Script - Delete old empty orders
-- Run this in MySQL Workbench

USE ClothesCorrectB;

-- Delete all order items first (due to foreign key)
DELETE FROM OrderItems;

-- Delete all orders
DELETE FROM Orders;

-- Verify deletion
SELECT 'Orders table after cleanup:' AS Status;
SELECT COUNT(*) AS OrderCount FROM Orders;
SELECT COUNT(*) AS OrderItemCount FROM OrderItems;

SELECT 'Database cleaned! Now place a new order from the app.' AS Message;

