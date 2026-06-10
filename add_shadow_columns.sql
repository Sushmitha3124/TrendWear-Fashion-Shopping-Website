-- Add EF Shadow FK Columns (MySQL 5.7+ compatible)
USE ClothesCorrectB;

SET SESSION sql_mode = '';

-- Products shadow FKs
ALTER TABLE Products ADD COLUMN BrandId INT NULL;
ALTER TABLE Products ADD COLUMN CategoryId INT NULL;
ALTER TABLE Products ADD COLUMN GenderId INT NULL;

-- CartItems shadow FKs
ALTER TABLE CartItems ADD COLUMN ProductId1 INT NULL;
ALTER TABLE CartItems ADD COLUMN UserId1 INT NULL;

-- Orders shadow FK
ALTER TABLE Orders ADD COLUMN UserId1 INT NULL;

-- OrderItems shadow FK (if needed)
ALTER TABLE OrderItems ADD COLUMN ProductId1 INT NULL;

SELECT '✅ ALL SHADOW COLUMNS ADDED' as Status;

-- Verify structure
DESCRIBE Products | head -20;

