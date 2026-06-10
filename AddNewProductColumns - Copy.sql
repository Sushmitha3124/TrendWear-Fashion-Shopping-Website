-- Add new columns to Products table for enhanced product management
-- Run this script to update your database

ALTER TABLE Products 
ADD COLUMN SKU VARCHAR(50) NULL,
ADD COLUMN StockQuantity INT DEFAULT 0,
ADD COLUMN IsActive BOOLEAN DEFAULT TRUE,
ADD COLUMN ShowOnHomePage BOOLEAN DEFAULT FALSE,
ADD COLUMN ShowInShopPage BOOLEAN DEFAULT TRUE,
ADD COLUMN IsTrending BOOLEAN DEFAULT FALSE,
ADD COLUMN IsNewArrival BOOLEAN DEFAULT FALSE,
ADD COLUMN IsBestSeller BOOLEAN DEFAULT FALSE,
ADD COLUMN IsDraft BOOLEAN DEFAULT FALSE;

-- Update existing products to have default values
UPDATE Products SET StockQuantity = 10 WHERE StockQuantity = 0;
UPDATE Products SET IsActive = TRUE WHERE IsActive IS NULL OR IsActive = FALSE;
UPDATE Products SET ShowInShopPage = TRUE WHERE ShowInShopPage IS NULL OR ShowInShopPage = FALSE;

-- Create indexes for better performance
CREATE INDEX idx_products_sku ON Products(SKU);
CREATE INDEX idx_products_is_active ON Products(IsActive);
CREATE INDEX idx_products_show_on_home_page ON Products(ShowOnHomePage);
CREATE INDEX idx_products_show_in_shop_page ON Products(ShowInShopPage);
CREATE INDEX idx_products_is_trending ON Products(IsTrending);
CREATE INDEX idx_products_is_new_arrival ON Products(IsNewArrival);
CREATE INDEX idx_products_is_best_seller ON Products(IsBestSeller);
CREATE INDEX idx_products_is_draft ON Products(IsDraft);
CREATE INDEX idx_products_stock_quantity ON Products(StockQuantity);
