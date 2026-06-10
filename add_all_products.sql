-- ADD ALL PRODUCTS WITH SPECIFIED IMAGES
-- includes Men T-shirts, Men Jeans, Kids Boys Jeans, Kids Boys T-shirts, Girls Jeans, Girls T-shirts
-- Run: mysql -u root -p312004 ClothesCorrectB < backend/add_all_products.sql

USE ClothesCorrectB;

-- ============================================================
-- MEN T-SHIRTS (41, 42, 44, mt1-mt10) - 13 products
-- ============================================================
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Brand, Image, StockQuantity, Discount, IsActive, ShowOnHomePage, ShowInShopPage, Type, SKU, Description) VALUES
('Premium Polo T-Shirt ', 799, 999, 'Tshirts', 'Men', 'Puma', '/assets/41.png', 50, 20, 1, 1, 1, 'Polo', 'MT41', 'Classic polo with premium finish'),
('Casual Round Neck Tee ', 649, 849, 'Tshirts', 'Men', 'Roadster', '/assets/42.png', 60, 24, 1, 1, 1, 'T-Shirt', 'MT42', 'Comfortable everyday wear'),
('Graphic Print T-Shirt ', 699, 999, 'Tshirts', 'Men', 'Nike', '/assets/44.png', 55, 30, 1, 1, 1, 'Graphic', 'MT44', 'Trendy graphic print design'),
('Athletic Fit Tee ', 549, 749, 'Tshirts', 'Men', 'Adidas', '/assets/mt1.png', 65, 27, 1, 1, 1, 'Athletic', 'MT1', 'Sports-inspired athletic fit'),
('Premium Cotton Tee ', 599, 799, 'Tshirts', 'Men', 'Calvin Klein', '/assets/mt2.png', 58, 25, 1, 1, 1, 'Cotton', 'MT2', 'Premium 100% cotton'),
('Casual Stripe Tee ', 729, 999, 'Tshirts', 'Men', 'Levis', '/assets/mt3.png', 52, 27, 1, 1, 1, 'Striped', 'MT3', 'Classic striped pattern'),
('V-Neck Slimfit ', 649, 899, 'Tshirts', 'Men', 'Roadster', '/assets/mt4.png', 56, 28, 1, 1, 1, 'V-Neck', 'MT4', 'Sophisticated V-neck cut'),
('Henley Style Tee ', 679, 899, 'Tshirts', 'Men', 'Puma', '/assets/mt5.png', 54, 25, 1, 1, 1, 'Henley', 'MT5', 'Classic henley style'),
('Oversized Fit Tee ', 599, 799, 'Tshirts', 'Men', 'Nike', '/assets/mt6.png', 62, 25, 1, 1, 1, 'Oversized', 'MT6', 'Relaxed oversized fit'),
('Slim Fit Premium ', 749, 999, 'Tshirts', 'Men', 'Calvin Klein', '/assets/mt7.png', 50, 25, 1, 1, 1, 'Slim', 'MT7', 'Perfect slim silhouette'),
('Casual Crew Neck ', 629, 849, 'Tshirts', 'Men', 'Adidas', '/assets/mt8.png', 58, 26, 1, 1, 1, 'Crew', 'MT8', 'Versatile crew neck'),
('Designer Logo Tee', 799, 1099, 'Tshirts', 'Men', 'Gucci', '/assets/mt9.png', 45, 27, 1, 1, 1, 'Designer', 'MT9', 'Designer branded tee'),
('Comfort Fit Tee ', 549, 749, 'Tshirts', 'Men', 'Roadster', '/assets/mt10.png', 64, 27, 1, 1, 1, 'Comfort', 'MT10', 'Maximum comfort fit');

-- ============================================================
-- MEN JEANS (21-30) - 10 products
-- ============================================================
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Brand, Image, StockQuantity, Discount, IsActive, ShowOnHomePage, ShowInShopPage, Type, SKU, Description) VALUES
('Men Slim Fit Jeans ', 1599, 1999, 'Jeans', 'Men', 'Levis', '/assets/21.png', 50, 20, 1, 1, 1, 'Slim Fit', 'MJ21', 'Perfect slim fit jeans'),
('Men Regular Fit Jeans ', 1499, 1999, 'Jeans', 'Men', 'Roadster', '/assets/22.png', 55, 25, 1, 1, 1, 'Regular', 'MJ22', 'Classic regular fit'),
('Men Skinny Fit Jeans ', 1699, 2199, 'Jeans', 'Men', 'Puma', '/assets/23.png', 48, 23, 1, 1, 1, 'Skinny', 'MJ23', 'Extra skinny fit'),
('Men Ripped Jeans ', 1799, 2399, 'Jeans', 'Men', 'Levis', '/assets/24.png', 42, 25, 1, 1, 1, 'Ripped', 'MJ24', 'Rockstar ripped style'),
('Men Bootcut Jeans ', 1550, 2050, 'Jeans', 'Men', 'Calvin Klein', '/assets/25.png', 52, 24, 1, 1, 1, 'Bootcut', 'MJ25', 'Classic bootcut'),
('Men Cargo Jeans ', 1650, 2150, 'Jeans', 'Men', 'Roadster', '/assets/26.png', 49, 23, 1, 1, 1, 'Cargo', 'MJ26', 'Multi-pocket cargo'),
('Men Distressed Jeans ', 1750, 2350, 'Jeans', 'Men', 'Puma', '/assets/27.png', 46, 26, 1, 1, 1, 'Distressed', 'MJ27', 'Vintage distressed'),
('Men Tapered Jeans ', 1620, 2120, 'Jeans', 'Men', 'Levis', '/assets/28.png', 51, 24, 1, 1, 1, 'Tapered', 'MJ28', 'Modern tapered fit'),
('Men Relaxed Fit Jeans ', 1520, 2020, 'Jeans', 'Men', 'Roadster', '/assets/29.png', 58, 25, 1, 1, 1, 'Relaxed', 'MJ29', 'Comfort relaxed fit'),
('Men Destroyed Jeans ', 1820, 2420, 'Jeans', 'Men', 'STREET 9', '/assets/30.png', 40, 25, 1, 1, 1, 'Destroyed', 'MJ30', 'Maximum destroyed look');

-- ============================================================
-- KIDS BOYS JEANS (kj1-kj10) - 10 products
-- ============================================================
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Brand, Image, StockQuantity, Discount, IsActive, ShowOnHomePage, ShowInShopPage, KidType, Type, SKU, Description) VALUES
('Boys Slim Fit Jeans ', 899, 1199, 'Jeans', 'Kids', 'Levis', '/assets/kj1.png', 60, 25, 1, 1, 1, 'Boy', 'Slim', 'KJ1', 'Perfect slim fit for boys'),
('Boys Straight Fit Jeans ', 849, 1149, 'Jeans', 'Kids', 'Roadster', '/assets/kj2.png', 65, 26, 1, 1, 1, 'Boy', 'Straight', 'KJ2', 'Comfortable straight fit'),
('Boys Cargo Jeans ', 949, 1299, 'Jeans', 'Kids', 'Puma', '/assets/kj3.png', 55, 27, 1, 1, 1, 'Boy', 'Cargo', 'KJ3', 'Multi-pocket cargo'),
('Boys Ripped Jeans ', 899, 1249, 'Jeans', 'Kids', 'Levis', '/assets/kj4.png', 50, 28, 1, 1, 1, 'Boy', 'Ripped', 'KJ4', 'Cool ripped style'),
('Boys Distressed Jeans ', 919, 1269, 'Jeans', 'Kids', 'Calvin Klein', '/assets/kj5.png', 52, 27, 1, 1, 1, 'Boy', 'Distressed', 'KJ5', 'Vintage distressed'),
('Boys Bootcut Jeans ', 869, 1169, 'Jeans', 'Kids', 'Roadster', '/assets/kj6.png', 58, 26, 1, 1, 1, 'Boy', 'Bootcut', 'KJ6', 'Classic bootcut'),
('Boys Slim Tapered ', 889, 1189, 'Jeans', 'Kids', 'Puma', '/assets/kj7.png', 54, 25, 1, 1, 1, 'Boy', 'Tapered', 'KJ7', 'Modern tapered look'),
('Boys Relaxed Fit ', 799, 1099, 'Jeans', 'Kids', 'Levis', '/assets/kj8.png', 62, 27, 1, 1, 1, 'Boy', 'Relaxed', 'KJ8', 'Comfortable relaxed'),
('Boys Casual Denim ', 829, 1129, 'Jeans', 'Kids', 'Roadster', '/assets/kj9.png', 56, 26, 1, 1, 1, 'Boy', 'Casual', 'KJ9', 'Perfect casual denim'),
('Boys Premium Jeans ', 939, 1289, 'Jeans', 'Kids', 'STREET 9', '/assets/kj10.png', 48, 27, 1, 1, 1, 'Boy', 'Premium', 'KJ10', 'Premium quality jeans');

-- ============================================================
-- KIDS BOYS T-SHIRTS (43, kt1-kt10) - 11 products
-- ============================================================
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Brand, Image, StockQuantity, Discount, IsActive, ShowOnHomePage, ShowInShopPage, KidType, Type, SKU, Description) VALUES
('Boys Graphic T-Shirt 43', 499, 699, 'Tshirts', 'Kids', 'Nike', '/assets/43.png', 70, 29, 1, 1, 1, 'Boy', 'Graphic', 'BT43', 'Cool graphic print tee'),
('Boys Sports Tee ', 399, 549, 'Tshirts', 'Kids', 'Adidas', '/assets/kt1.png', 75, 27, 1, 1, 1, 'Boy', 'Sports', 'KT1', 'Sports-inspired design'),
('Boys Polo Shirt ', 449, 599, 'Tshirts', 'Kids', 'Roadster', '/assets/kt2.png', 68, 25, 1, 1, 1, 'Boy', 'Polo', 'KT2', 'Classic polo style'),
('Boys Striped Tee', 379, 529, 'Tshirts', 'Kids', 'Puma', '/assets/kt3.png', 72, 28, 1, 1, 1, 'Boy', 'Striped', 'KT3', 'Fun striped pattern'),
('Boys Casual Tee', 349, 499, 'Tshirts', 'Kids', 'Levis', '/assets/kt4.png', 80, 30, 1, 1, 1, 'Boy', 'Casual', 'KT4', 'Everyday casual wear'),
('Boys Premium Cotton', 429, 579, 'Tshirts', 'Kids', 'Calvin Klein', '/assets/kt5.png', 64, 26, 1, 1, 1, 'Boy', 'Cotton', 'KT5', 'Premium cotton tee'),
('Boys Character Tee ', 389, 539, 'Tshirts', 'Kids', 'Nike', '/assets/kt6.png', 70, 28, 1, 1, 1, 'Boy', 'Character', 'KT6', 'Fun character print'),
('Boys Superhero Tee ', 419, 569, 'Tshirts', 'Kids', 'Roadster', '/assets/kt7.png', 66, 26, 1, 1, 1, 'Boy', 'Superhero', 'KT7', 'Superhero theme'),
('Boys Animal Print ', 399, 549, 'Tshirts', 'Kids', 'Puma', '/assets/kt8.png', 72, 27, 1, 1, 1, 'Boy', 'Animal', 'KT8', 'Cool animal print'),
('Boys Adventure Tee ', 409, 559, 'Tshirts', 'Kids', 'Adidas', '/assets/kt9.png', 68, 27, 1, 1, 1, 'Boy', 'Adventure', 'KT9', 'Adventure theme'),
('Boys Urban Style ', 439, 589, 'Tshirts', 'Kids', 'STREET 9', '/assets/kt10.png', 62, 25, 1, 1, 1, 'Boy', 'Urban', 'KT10', 'Urban streetwear style');

-- ============================================================
-- GIRLS JEANS (g1-g10) - 10 products
-- ============================================================
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Brand, Image, StockQuantity, Discount, IsActive, ShowOnHomePage, ShowInShopPage, KidType, Type, SKU, Description) VALUES
('Girls Skinny Jeans ', 799, 1099, 'Jeans', 'Kids', 'Levis', '/assets/g1.png', 60, 27, 1, 1, 1, 'Girl', 'Skinny', 'GJ1', 'Perfect skinny fit'),
('Girls Straight Fit ', 749, 1049, 'Jeans', 'Kids', 'Roadster', '/assets/g2.png', 65, 29, 1, 1, 1, 'Girl', 'Straight', 'GJ2', 'Comfortable straight'),
('Girls Flared Jeans ', 849, 1199, 'Jeans', 'Kids', 'Puma', '/assets/g3.png', 55, 29, 1, 1, 1, 'Girl', 'Flared', 'GJ3', 'Trendy flared style'),
('Girls Bootcut ', 799, 1099, 'Jeans', 'Kids', 'Calvin Klein', '/assets/g4.png', 58, 27, 1, 1, 1, 'Girl', 'Bootcut', 'GJ4', 'Classic bootcut'),
('Girls High Waist ', 829, 1149, 'Jeans', 'Kids', 'Levis', '/assets/g5.png', 52, 28, 1, 1, 1, 'Girl', 'High Waist', 'GJ5', 'Trendy high waist'),
('Girls Ripped Jeans ', 869, 1219, 'Jeans', 'Kids', 'Roadster', '/assets/g6.png', 50, 29, 1, 1, 1, 'Girl', 'Ripped', 'GJ6', 'Cool ripped style'),
('Girls Printed Jeans ', 899, 1249, 'Jeans', 'Kids', 'Puma', '/assets/g7.png', 48, 28, 1, 1, 1, 'Girl', 'Printed', 'GJ7', 'Fun printed design'),
('Girls Slim Fit ', 779, 1079, 'Jeans', 'Kids', 'Calvin Klein', '/assets/g8.png', 62, 28, 1, 1, 1, 'Girl', 'Slim', 'GJ8', 'Elegant slim fit'),
('Girls Cargo Jeans ', 919, 1269, 'Jeans', 'Kids', 'Adidas', '/assets/g9.png', 54, 27, 1, 1, 1, 'Girl', 'Cargo', 'GJ9', 'Multi-pocket cargo'),
('Girls Premium Denim ', 939, 1299, 'Jeans', 'Kids', 'STREET 9', '/assets/g10.png', 46, 28, 1, 1, 1, 'Girl', 'Premium', 'GJ10', 'Premium quality');

-- ============================================================
-- GIRLS T-SHIRTS (j1-j10) - 10 products
-- ============================================================
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Brand, Image, StockQuantity, Discount, IsActive, ShowOnHomePage, ShowInShopPage, KidType, Type, SKU, Description) VALUES
('Girls Printed Tee ', 399, 549, 'Tshirts', 'Kids', 'Roadster', '/assets/j1.png', 70, 27, 1, 1, 1, 'Girl', 'Printed', 'GT1', 'Cute printed design'),
('Girls Graphic Tee2', 379, 529, 'Tshirts', 'Kids', 'Nike', '/assets/j2.png', 75, 28, 1, 1, 1, 'Girl', 'Graphic', 'GT2', 'Fun graphic print'),
('Girls Casual T', 349, 499, 'Tshirts', 'Kids', 'Puma', '/assets/j3.png', 80, 30, 1, 1, 1, 'Girl', 'Casual', 'GT3', 'Everyday casual'),
('Girls Premium Cotton ', 429, 579, 'Tshirts', 'Kids', 'Calvin Klein', '/assets/j4.png', 64, 26, 1, 1, 1, 'Girl', 'Cotton', 'GT4', 'Premium soft cotton'),
('Girls Character Tee ', 389, 539, 'Tshirts', 'Kids', 'Levis', '/assets/j5.png', 70, 28, 1, 1, 1, 'Girl', 'Character', 'GT5', 'Fun character design'),
('Girls Princess Tee ', 419, 569, 'Tshirts', 'Kids', 'Adidas', '/assets/j6.png', 66, 26, 1, 1, 1, 'Girl', 'Princess', 'GT6', 'Princess theme tee'),
('Girls Floral Design ', 399, 549, 'Tshirts', 'Kids', 'Roadster', '/assets/j7.png', 72, 27, 1, 1, 1, 'Girl', 'Floral', 'GT7', 'Beautiful floral'),
('Girls Sparkle Tee ', 409, 559, 'Tshirts', 'Kids', 'Puma', '/assets/j8.png', 68, 27, 1, 1, 1, 'Girl', 'Sparkle', 'GT8', 'Glittery sparkle'),
('Girls Rainbow Tee ', 439, 589, 'Tshirts', 'Kids', 'Nike', '/assets/j9.png', 62, 25, 1, 1, 1, 'Girl', 'Rainbow', 'GT9', 'Colorful rainbow'),
('Girls Trendy Tee ', 449, 599, 'Tshirts', 'Kids', 'STREET 9', '/assets/j10.png', 60, 25, 1, 1, 1, 'Girl', 'Trendy', 'GT10', 'Latest trendy style');

-- ============================================================
-- SUMMARY AND VERIFICATION
-- ============================================================
SELECT '✅ ALL PRODUCTS ADDED SUCCESSFULLY!' as Status;
SELECT CONCAT('Total Products Added: ', COUNT(*)) as Summary FROM Products;
SELECT Category, Gender, KidType, COUNT(*) as Count FROM Products 
WHERE (Image LIKE '%mt%' OR Image LIKE '%kj%' OR Image LIKE '%kt%' OR Image LIKE '%g%' OR Image LIKE '%j%' OR Image LIKE '%41%' OR Image LIKE '%42%' OR Image LIKE '%44%' OR Image LIKE '%21%' OR Image LIKE '%43%')
GROUP BY Category, Gender, KidType
ORDER BY Category, Gender, KidType;
