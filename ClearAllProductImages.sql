-- Clear all product images from MySQL database
-- This script removes all image references from the Products table

USE ClothesCorrectB;

-- Update all products to have empty image field
UPDATE Products SET Image = '' WHERE Image IS NOT NULL AND Image != '';

-- Optional: If you want to set a default placeholder instead of empty
-- UPDATE Products SET Image = '/assets/no-image.png' WHERE Image IS NULL OR Image = '';

-- Verify the changes
SELECT COUNT(*) as TotalProducts FROM Products;
SELECT COUNT(*) as ProductsWithImages FROM Products WHERE Image IS NOT NULL AND Image != '';
SELECT COUNT(*) as ProductsWithoutImages FROM Products WHERE Image IS NULL OR Image = '';

-- Show a few sample products to verify
SELECT Id, Name, Image FROM Products LIMIT 10;