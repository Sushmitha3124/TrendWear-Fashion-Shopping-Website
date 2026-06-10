-- Fix for: Unknown column 'u.IsAdmin' in 'field list'
-- This script adds the missing IsAdmin column to the Users table

USE ClothesCorrectB;

-- Add missing columns to Users table if they don't exist
ALTER TABLE Users ADD COLUMN IF NOT EXISTS IsAdmin BOOLEAN DEFAULT FALSE;
ALTER TABLE Users ADD COLUMN IF NOT EXISTS UpdatedAt DATETIME NULL;

-- Make admin@example.com an admin user (IsAdmin = TRUE)
UPDATE Users SET IsAdmin = TRUE WHERE Email = 'admin@example.com';

-- If admin@example.com doesn't exist, create it as an admin
INSERT INTO Users (Name, Email, Phone, PasswordHash, IsActive, IsAdmin, CreatedAt)
SELECT 'Admin User', 'admin@example.com', '9876543210', '$2a$11$YourHashedPasswordHere', TRUE, TRUE, NOW()
WHERE NOT EXISTS (SELECT 1 FROM Users WHERE Email = 'admin@example.com');

-- Verify the changes
DESCRIBE Users;

SELECT Id, Name, Email, IsAdmin FROM Users;
