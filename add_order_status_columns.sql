-- Add order status management columns to orders table
-- Run this after updating the entity models

-- Add ExpectedDeliveryDate column
ALTER TABLE orders 
ADD COLUMN ExpectedDeliveryDate DATETIME NULL 
AFTER UpdatedAt;

-- Add DeliveredDate column
ALTER TABLE orders 
ADD COLUMN DeliveredDate DATETIME NULL 
AFTER ExpectedDeliveryDate;

-- Add IsManualOverride column
ALTER TABLE orders 
ADD COLUMN IsManualOverride BOOLEAN NOT NULL DEFAULT FALSE 
AFTER DeliveredDate;

-- Update existing orders to have ExpectedDeliveryDate = CreatedAt + 7 days
UPDATE orders 
SET ExpectedDeliveryDate = DATE_ADD(CreatedAt, INTERVAL 7 DAY)
WHERE ExpectedDeliveryDate IS NULL;

-- Verify columns were added
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE, COLUMN_DEFAULT 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'orders' 
AND TABLE_SCHEMA = DATABASE()
ORDER BY ORDINAL_POSITION;

