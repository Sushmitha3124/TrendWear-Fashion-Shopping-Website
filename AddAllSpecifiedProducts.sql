-- Complete Product Seed Script with All Specified Images
-- Run: mysql -u root -p312004 ClothesCorrectB < backend/AddAllSpecifiedProducts.sql

USE ClothesCorrectB;

-- Clear existing products
DELETE FROM Products WHERE Id > 0;

-- WOMEN JEANS (01.png, 1.png, 2-6.png, 8-16.png, 61-71.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color) VALUES
('Women Skinny Jeans', 1299, 1623, 'Women', 'Women', 'Jeans', 'Levis', '/assets/products/01.png', 50, 20, '26,28,30,32', 1, 1, 1, 'Comfortable skinny fit jeans for women', 4.5, 'Blue'),\n('Women Straight Fit Jeans', 1199, 1411, 'Women', 'Women', 'Jeans', 'Roadster', '/assets/products/1.png', 45, 15, '26-34', 1, 1, 1, 'Classic straight fit jeans', 4.3, 'Black'),\n
('Women Slim Fit Jeans', 1399, 1865, 'Women', 'Women', 'Jeans', 'Puma', '/assets/products/2.png', 40, 25, '24-32', 1, 1, 1, 'Slim fit jeans with modern styling', 4.6, 'Dark Blue'),
('Women Ripped Jeans', 1499, 2142, 'Women', 'Women', 'Jeans', 'Levis', '/assets/products/3.png', 35, 30, '26-34', 1, 1, 1, 'Trendy ripped jeans for fashion-forward women', 4.4, 'Light Blue'),
('Women Boyfriend Jeans', 1350, 1730, 'Women', 'Women', 'Jeans', 'Calvin Klein', '/assets/products/4.png', 55, 22, '28-36', 1, 1, 1, 'Relaxed boyfriend fit jeans', 4.5, 'Grey'),\n('Women High Waist Jeans', 1250, 1525, 'Women', 'Women', 'Jeans', 'Roadster', '/assets/products/5.png', 60, 18, '26-34', 1, 1, 1, 'High waist jeans for perfect fit', 4.2, 'Black'),\n
('Women Distressed Jeans', 1450, 2014, 'Women', 'Women', 'Jeans', 'Levis', '/assets/products/6.png', 30, 28, '28-36', 1, 1, 1, 'Distressed jeans with vintage look', 4.7, 'Blue'),\n('Women Bootcut Jeans', 1320, 1650, 'Women', 'Women', 'Jeans', 'Puma', '/assets/products/8.png', 48, 20, '26-34', 1, 1, 1, 'Classic bootcut jeans', 4.3, 'Navy Blue'),\n
('Women Flare Jeans ', 1280, 1525, 'Women', 'Women', 'Jeans', 'Roadster', '/assets/products/9.png', 52, 16, '28-36', 1, 1, 1, 'Flare jeans with retro vibe', 4.4, 'White'),
('Women Wide Leg Jeans ', 1420, 1866, 'Women', 'Women', 'Jeans', 'Calvin Klein', '/assets/products/10.png', 42, 24, '26-34', 1, 1, 1, 'Wide leg jeans for comfort', 4.5, 'Beige'),
('Women Cargo Jeans ', 1550, 2281, 'Women', 'Women', 'Jeans', 'Puma', '/assets/products/11.png', 38, 32, '28-36', 1, 1, 1, 'Cargo style jeans with pockets', 4.6, 'Olive'),
('Women Mom Jeans ', 1180, 1342, 'Women', 'Women', 'Jeans', 'Levis', '/assets/products/12.png', 65, 12, '26-34', 1, 1, 1, 'Vintage mom jeans style', 4.1, 'Light Blue'),
('Women Low Rise Jeans ', 1370, 1855, 'Women', 'Women', 'Jeans', 'Roadster', '/assets/products/13.png', 47, 26, '24-32', 1, 1, 1, 'Low rise jeans for modern look', 4.3, 'Black'),
('Women Embellished Jeans ', 1620, 2485, 'Women', 'Women', 'Jeans', 'Gucci', '/assets/products/14.png', 25, 35, '28-36', 1, 1, 1, 'Designer embellished jeans', 4.8, 'Blue'),
('Women Printed Jeans ', 1330, 1685, 'Women', 'Women', 'Jeans', 'STREET 9', '/assets/products/15.png', 51, 21, '26-34', 1, 1, 1, 'Printed pattern jeans', 4.4, 'Multicolor'),
('Women Patchwork Jeans ', 1480, 2083, 'Women', 'Women', 'Jeans', 'Levis', '/assets/products/16.png', 33, 29, '28-36', 1, 1, 1, 'Unique patchwork design jeans', 4.5, 'Mixed'),
('Women Mid Rise Jeans ', 1260, 1519, 'Women', 'Women', 'Jeans', 'Puma', '/assets/products/61.png', 58, 17, '26-34', 1, 1, 1, 'Mid rise comfort fit jeans', 4.2, 'Grey'),
('Women Destroyed Jeans ', 1510, 2099, 'Women', 'Women', 'Jeans', 'Calvin Klein', '/assets/products/62.png', 29, 31, '28-36', 1, 1, 1, 'Heavily destroyed jeans', 4.7, 'Blue'),
('Women Slim Fit Jeans ', 1390, 1840, 'Women', 'Women', 'Jeans', 'Roadster', '/assets/products/63.png', 42, 24, '26-34', 1, 1, 1, 'Slim fit with perfect stretch', 4.4, 'Black'),
('Women Bootcut Jeans ', 1325, 1656, 'Women', 'Women', 'Jeans', 'Levis', '/assets/products/64.png', 50, 20, '26-34', 1, 1, 1, 'Bootcut jeans for all occasions', 4.3, 'Navy'),
('Women High Waist Jeans ', 1270, 1545, 'Women', 'Women', 'Jeans', 'Puma', '/assets/products/65.png', 55, 18, '26-34', 1, 1, 1, 'High waist with great support', 4.2, 'White'),
('Women Ripped Jeans', 1470, 2040, 'Women', 'Women', 'Jeans', 'STREET 9', '/assets/products/66.png', 32, 28, '28-36', 1, 1, 1, 'Ripped jeans with attitude', 4.6, 'Blue'),
('Women Flare Jeans ', 1295, 1580, 'Women', 'Women', 'Jeans', 'Calvin Klein', '/assets/products/67.png', 48, 18, '28-36', 1, 1, 1, 'Flare jeans with elegant cut', 4.3, 'Beige'),
('Women Mom Jeans ', 1195, 1360, 'Women', 'Women', 'Jeans', 'Roadster', '/assets/products/68.png', 62, 12, '26-34', 1, 1, 1, 'Classic mom jeans style', 4.1, 'Light Wash'),
('Women Cargo Jeans ', 1560, 2300, 'Women', 'Women', 'Jeans', 'Gucci', '/assets/products/69.png', 28, 32, '28-36', 1, 1, 1, 'Designer cargo jeans', 4.8, 'Khaki'),
('Women Wide Leg Jeans ', 1430, 1875, 'Women', 'Women', 'Jeans', 'Levis', '/assets/products/70.png', 40, 24, '26-34', 1, 1, 1, 'Wide leg comfort jeans', 4.4, 'Grey'),
('Women Embellished Jeans ', 1630, 2500, 'Women', 'Women', 'Jeans', 'Puma', '/assets/products/71.png', 24, 35, '28-36', 1, 1, 1, 'Premium embellished jeans', 4.7, 'Blue');

-- WOMEN T-SHIRTS (31-35.png, 51-60.png, 72-80.png, t4.png, t5.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color) VALUES
('Women Graphic T-Shirt ', 599, 799, 'Women', 'Women', 'T-Shirts', 'H&M', '/assets/products/31.png', 75, 25, 'S,M,L,XL', 1, 1, 1, 'Cool graphic print t-shirt', 4.3, 'White'),
('Women Striped T-Shirt ', 649, 866, 'Women', 'Women', 'T-Shirts', 'Zara', '/assets/products/32.png', 70, 25, 'S,M,L,XL', 1, 1, 1, 'Classic striped t-shirt', 4.4, 'Navy White'),
('Women Plain T-Shirt ', 499, 666, 'Women', 'Women', 'T-Shirts', 'Uniqlo', '/assets/products/33.png', 80, 25, 'S,M,L,XL,XXL', 1, 1, 1, 'Basic plain t-shirt', 4.2, 'Black'),
('Women V-Neck T-Shirt ', 699, 933, 'Women', 'Women', 'T-Shirts', 'Gap', '/assets/products/34.png', 65, 25, 'S,M,L,XL', 1, 1, 1, 'Elegant V-neck t-shirt', 4.5, 'Grey'),
('Women Crop T-Shirt ', 549, 733, 'Women', 'Women', 'T-Shirts', 'Forever 21', '/assets/products/35.png', 60, 25, 'S,M,L', 1, 1, 1, 'Trendy crop top t-shirt', 4.6, 'Pink'),
('Women Printed T-Shirt ', 649, 866, 'Women', 'Women', 'T-Shirts', 'H&M', '/assets/products/51.png', 72, 25, 'S,M,L,XL', 1, 1, 1, 'Beautiful printed design', 4.4, 'White'),
('Women Floral T-Shirt ', 699, 933, 'Women', 'Women', 'T-Shirts', 'Zara', '/assets/products/52.png', 68, 25, 'S,M,L,XL', 1, 1, 1, 'Floral pattern t-shirt', 4.5, 'Light Blue'),
('Women Tie-Dye T-Shirt ', 599, 799, 'Women', 'Women', 'T-Shirts', 'Uniqlo', '/assets/products/53.png', 75, 25, 'S,M,L,XL', 1, 1, 1, 'Colorful tie-dye design', 4.3, 'Multicolor'),
('Women Oversized T-Shirt ', 749, 999, 'Women', 'Women', 'T-Shirts', 'Gap', '/assets/products/54.png', 55, 25, 'M,L,XL,XXL', 1, 1, 1, 'Comfortable oversized fit', 4.6, 'Black'),
('Women Sports T-Shirt ', 649, 866, 'Women', 'Women', 'T-Shirts', 'Nike', '/assets/products/55.png', 70, 25, 'S,M,L,XL', 1, 1, 1, 'Athletic performance t-shirt', 4.4, 'Grey'),
('Women Polo T-Shirt ', 799, 1066, 'Women', 'Women', 'T-Shirts', 'Puma', '/assets/products/56.png', 60, 25, 'S,M,L,XL', 1, 1, 1, 'Classic polo style', 4.5, 'White'),
('Women Henley T-Shirt ', 699, 933, 'Women', 'Women', 'T-Shirts', 'H&M', '/assets/products/57.png', 65, 25, 'S,M,L,XL', 1, 1, 1, 'Henley neck t-shirt', 4.3, 'Navy'),
('Women Long Sleeve T-Shirt ', 849, 1132, 'Women', 'Women', 'T-Shirts', 'Uniqlo', '/assets/products/58.png', 58, 25, 'S,M,L,XL', 1, 1, 1, 'Long sleeve comfort', 4.4, 'Black'),
('Women Thermal T-Shirt ', 749, 999, 'Women', 'Women', 'T-Shirts', 'Gap', '/assets/products/59.png', 62, 25, 'S,M,L,XL', 1, 1, 1, 'Warm thermal fabric', 4.2, 'Grey'),
('Women Designer T-Shirt ', 1299, 1732, 'Women', 'Women', 'T-Shirts', 'Gucci', '/assets/products/60.png', 40, 25, 'S,M,L,XL', 1, 1, 1, 'Designer label t-shirt', 4.8, 'White'),
('Women Boho T-Shirt ', 649, 866, 'Women', 'Women', 'T-Shirts', 'Zara', '/assets/products/72.png', 68, 25, 'S,M,L,XL', 1, 1, 1, 'Boho style t-shirt', 4.4, 'Cream'),
('Women Lace T-Shirt ', 799, 1066, 'Women', 'Women', 'T-Shirts', 'Forever 21', '/assets/products/73.png', 55, 25, 'S,M,L', 1, 1, 1, 'Lace detail t-shirt', 4.5, 'White'),
('Women Metallic T-Shirt ', 899, 1199, 'Women', 'Women', 'T-Shirts', 'H&M', '/assets/products/74.png', 50, 25, 'S,M,L,XL', 1, 1, 1, 'Metallic finish t-shirt', 4.6, 'Silver'),
('Women Sheer T-Shirt ', 699, 933, 'Women', 'Women', 'T-Shirts', 'Uniqlo', '/assets/products/75.png', 60, 25, 'S,M,L,XL', 1, 1, 1, 'Sheer fabric t-shirt', 4.3, 'Black'),
('Women Off-Shoulder T-Shirt ', 749, 999, 'Women', 'Women', 'T-Shirts', 'Gap', '/assets/products/76.png', 58, 25, 'S,M,L,XL', 1, 1, 1, 'Off-shoulder style', 4.4, 'Pink'),
('Women Ruffled T-Shirt ', 849, 1132, 'Women', 'Women', 'T-Shirts', 'Zara', '/assets/products/77.png', 52, 25, 'S,M,L', 1, 1, 1, 'Ruffled neck t-shirt', 4.5, 'White'),
('Women Asymmetrical T-Shirt ', 799, 1066, 'Women', 'Women', 'T-Shirts', 'Forever 21', '/assets/products/78.png', 55, 25, 'S,M,L,XL', 1, 1, 1, 'Asymmetrical hem design', 4.4, 'Grey'),
('Women Pocket T-Shirt ', 649, 866, 'Women', 'Women', 'T-Shirts', 'H&M', '/assets/products/79.png', 70, 25, 'S,M,L,XL', 1, 1, 1, 'T-shirt with pocket', 4.2, 'Navy'),
('Women Collar T-Shirt ', 899, 1199, 'Women', 'Women', 'T-Shirts', 'Puma', '/assets/products/80.png', 48, 25, 'S,M,L,XL', 1, 1, 1, 'Collar neck t-shirt', 4.5, 'White'),
('Women Trendy T-Shirt ', 699, 933, 'Women', 'Women', 'T-Shirts', 'Zara', '/assets/products/t4.png', 65, 25, 'S,M,L,XL', 1, 1, 1, 'Trendy design t-shirt', 4.4, 'Black'),
('Women Fashion T-Shirt ', 749, 999, 'Women', 'Women', 'T-Shirts', 'Forever 21', '/assets/products/t5.png', 60, 25, 'S,M,L,XL', 1, 1, 1, 'Fashion forward t-shirt', 4.5, 'Red');

-- MEN T-SHIRTS (41.png, 42.png, 44.png, mt1.png to mt10.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color) VALUES
('Men Classic T-Shirt ', 599, 799, 'Men', 'Men', 'T-Shirts', 'Nike', '/assets/products/41.png', 80, 25, 'M,L,XL,XXL', 1, 1, 1, 'Classic fit t-shirt', 4.3, 'White'),
('Men Polo T-Shirt ', 799, 1066, 'Men', 'Men', 'T-Shirts', 'Puma', '/assets/products/42.png', 70, 25, 'M,L,XL,XXL', 1, 1, 1, 'Polo style t-shirt', 4.5, 'Navy'),
('Men Graphic T-Shirt ', 649, 866, 'Men', 'Men', 'T-Shirts', 'Adidas', '/assets/products/44.png', 75, 25, 'M,L,XL,XXL', 1, 1, 1, 'Graphic print t-shirt', 4.4, 'Black'),
('Men Plain T-Shirt ', 549, 733, 'Men', 'Men', 'T-Shirts', 'Nike', '/assets/products/mt1.png', 85, 25, 'M,L,XL,XXL', 1, 1, 1, 'Basic plain t-shirt', 4.2, 'White'),
('Men Striped T-Shirt ', 649, 866, 'Men', 'Men', 'T-Shirts', 'Puma', '/assets/products/mt2.png', 78, 25, 'M,L,XL,XXL', 1, 1, 1, 'Striped pattern t-shirt', 4.3, 'Blue White'),
('Men V-Neck T-Shirt ', 699, 933, 'Men', 'Men', 'T-Shirts', 'Adidas', '/assets/products/mt3.png', 72, 25, 'M,L,XL,XXL', 1, 1, 1, 'V-neck style t-shirt', 4.4, 'Grey'),
('Men Henley T-Shirt ', 749, 999, 'Men', 'Men', 'T-Shirts', 'Nike', '/assets/products/mt4.png', 68, 25, 'M,L,XL,XXL', 1, 1, 1, 'Henley neck t-shirt', 4.5, 'Black'),
('Men Printed T-Shirt ', 699, 933, 'Men', 'Men', 'T-Shirts', 'Puma', '/assets/products/mt5.png', 75, 25, 'M,L,XL,XXL', 1, 1, 1, 'Printed design t-shirt', 4.3, 'White'),
('Men Sports T-Shirt ', 799, 1066, 'Men', 'Men', 'T-Shirts', 'Adidas', '/assets/products/mt6.png', 70, 25, 'M,L,XL,XXL', 1, 1, 1, 'Athletic performance t-shirt', 4.6, 'Grey'),
('Men Long Sleeve T-Shirt ', 849, 1132, 'Men', 'Men', 'T-Shirts', 'Nike', '/assets/products/mt7.png', 65, 25, 'M,L,XL,XXL', 1, 1, 1, 'Long sleeve t-shirt', 4.4, 'Navy'),
('Men Thermal T-Shirt ', 899, 1199, 'Men', 'Men', 'T-Shirts', 'Puma', '/assets/products/mt8.png', 60, 25, 'M,L,XL,XXL', 1, 1, 1, 'Thermal fabric t-shirt', 4.2, 'Black'),
('Men Designer T-Shirt ', 1299, 1732, 'Men', 'Men', 'T-Shirts', 'Gucci', '/assets/products/mt9.png', 45, 25, 'M,L,XL,XXL', 1, 1, 1, 'Designer label t-shirt', 4.8, 'White'),
('Men Premium T-Shirt ', 999, 1332, 'Men', 'Men', 'T-Shirts', 'Adidas', '/assets/products/mt10.png', 55, 25, 'M,L,XL,XXL', 1, 1, 1, 'Premium quality t-shirt', 4.7, 'Grey');

-- MEN JEANS (21-30.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color) VALUES
('Men Slim Fit Jeans ', 1599, 2132, 'Men', 'Men', 'Jeans', 'Levis', '/assets/products/21.png', 60, 25, '30-38', 1, 1, 1, 'Slim fit jeans for men', 4.5, 'Blue'),
('Men Straight Fit Jeans ', 1499, 1999, 'Men', 'Men', 'Jeans', 'Roadster', '/assets/products/22.png', 55, 25, '30-38', 1, 1, 1, 'Classic straight fit', 4.3, 'Black'),
('Men Skinny Fit Jeans ', 1699, 2265, 'Men', 'Men', 'Jeans', 'Puma', '/assets/products/23.png', 50, 25, '28-36', 1, 1, 1, 'Skinny fit jeans', 4.6, 'Dark Blue'),
('Men Ripped Jeans ', 1799, 2398, 'Men', 'Men', 'Jeans', 'Levis', '/assets/products/24.png', 45, 25, '30-38', 1, 1, 1, 'Ripped style jeans', 4.4, 'Light Blue'),
('Men Bootcut Jeans ', 1550, 2066, 'Men', 'Men', 'Jeans', 'Calvin Klein', '/assets/products/25.png', 58, 25, '32-40', 1, 1, 1, 'Bootcut jeans', 4.5, 'Grey'),
('Men Cargo Jeans ', 1650, 2200, 'Men', 'Men', 'Jeans', 'Roadster', '/assets/products/26.png', 52, 25, '30-38', 1, 1, 1, 'Cargo style jeans', 4.6, 'Olive'),
('Men Distressed Jeans', 1750, 2333, 'Men', 'Men', 'Jeans', 'Puma', '/assets/products/27.png', 48, 25, '30-38', 1, 1, 1, 'Distressed jeans', 4.7, 'Blue'),
('Men Slim Tapered Jeans ', 1620, 2160, 'Men', 'Men', 'Jeans', 'Levis', '/assets/products/28.png', 54, 25, '28-36', 1, 1, 1, 'Slim tapered fit', 4.3, 'Black'),
('Men Relaxed Fit Jeans ', 1520, 2026, 'Men', 'Men', 'Jeans', 'Roadster', '/assets/products/29.png', 60, 25, '32-40', 1, 1, 1, 'Relaxed comfort fit', 4.2, 'Navy'),
('Men Destroyed Jeans ', 1820, 2426, 'Men', 'Men', 'Jeans', 'STREET 9', '/assets/products/30.png', 42, 25, '30-38', 1, 1, 1, 'Destroyed style jeans', 4.8, 'Blue');

-- KIDS BOYS JEANS (kj1.png to kj10.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color, KidType) VALUES
('Boys Slim Fit Jeans ', 899, 1199, 'Kids', 'Kids', 'Jeans', 'Levis Kids', '/assets/products/kj1.png', 40, 25, 'Kid-2-3Y,Kid-3-4Y,Kid-4-5Y', 1, 1, 1, 'Slim fit jeans for boys', 4.4, 'Blue', 'Boys'),
('Boys Straight Fit Jeans ', 849, 1132, 'Kids', 'Kids', 'Jeans', 'Puma Kids', '/assets/products/kj2.png', 45, 25, 'Kid-3-4Y,Kid-4-5Y,Kid-5-6Y', 1, 1, 1, 'Straight fit jeans for boys', 4.3, 'Black', 'Boys'),
('Boys Cargo Jeans ', 949, 1266, 'Kids', 'Kids', 'Jeans', 'Roadster Kids', '/assets/products/kj3.png', 38, 25, 'Kid-4-5Y,Kid-5-6Y,Kid-6-7Y', 1, 1, 1, 'Cargo style jeans for boys', 4.5, 'Khaki', 'Boys'),
('Boys Ripped Jeans', 999, 1332, 'Kids', 'Kids', 'Jeans', 'Levis Kids', '/assets/products/kj4.png', 35, 25, 'Kid-5-6Y,Kid-6-7Y,Kid-7-8Y', 1, 1, 1, 'Ripped jeans for boys', 4.6, 'Blue', 'Boys'),
('Boys Distressed Jeans ', 979, 1306, 'Kids', 'Kids', 'Jeans', 'Puma Kids', '/assets/products/kj5.png', 42, 25, 'Kid-6-7Y,Kid-7-8Y,Kid-8-9Y', 1, 1, 1, 'Distressed jeans for boys', 4.4, 'Light Blue', 'Boys'),
('Boys Bootcut Jeans ', 899, 1199, 'Kids', 'Kids', 'Jeans', 'Calvin Klein Kids', '/assets/products/kj6.png', 40, 25, 'Kid-7-8Y,Kid-8-9Y,Kid-9-10Y', 1, 1, 1, 'Bootcut jeans for boys', 4.3, 'Grey', 'Boys'),
('Boys Skinny Jeans ', 949, 1266, 'Kids', 'Kids', 'Jeans', 'Roadster Kids', '/assets/products/kj7.png', 37, 25, 'Kid-8-9Y,Kid-9-10Y,Kid-10-11Y', 1, 1, 1, 'Skinny fit jeans for boys', 4.5, 'Dark Blue', 'Boys'),
('Boys Relaxed Fit Jeans ', 879, 1172, 'Kids', 'Kids', 'Jeans', 'Levis Kids', '/assets/products/kj8.png', 44, 25, 'Kid-9-10Y,Kid-10-11Y,Kid-11-12Y', 1, 1, 1, 'Relaxed fit jeans for boys', 4.2, 'Navy', 'Boys'),
('Boys Tapered Jeans ', 929, 1240, 'Kids', 'Kids', 'Jeans', 'Puma Kids', '/assets/products/kj9.png', 39, 25, 'Kid-10-11Y,Kid-11-12Y', 1, 1, 1, 'Tapered jeans for boys', 4.4, 'Black', 'Boys'),
('Boys Destroyed Jeans ', 1099, 1466, 'Kids', 'Kids', 'Jeans', 'STREET 9 Kids', '/assets/products/kj10.png', 33, 25, 'Kid-11-12Y', 1, 1, 1, 'Destroyed style jeans for boys', 4.7, 'Blue', 'Boys');

-- KIDS BOYS T-SHIRTS (43.png, kt1.png to kt10.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color, KidType) VALUES
('Boys Graphic T-Shirt ', 499, 666, 'Kids', 'Kids', 'T-Shirts', 'Nike Kids', '/assets/products/43.png', 55, 25, 'Kid-4-5Y,Kid-5-6Y,Kid-6-7Y', 1, 1, 1, 'Graphic print t-shirt for boys', 4.3, 'White', 'Boys'),
('Boys Plain T-Shirt ', 399, 533, 'Kids', 'Kids', 'T-Shirts', 'Puma Kids', '/assets/products/kt1.png', 60, 25, 'Kid-2-3Y,Kid-3-4Y,Kid-4-5Y', 1, 1, 1, 'Plain t-shirt for boys', 4.2, 'Blue', 'Boys'),
('Boys Striped T-Shirt ', 449, 599, 'Kids', 'Kids', 'T-Shirts', 'Adidas Kids', '/assets/products/kt2.png', 58, 25, 'Kid-3-4Y,Kid-4-5Y,Kid-5-6Y', 1, 1, 1, 'Striped t-shirt for boys', 4.4, 'Red White', 'Boys'),
('Boys Printed T-Shirt ', 499, 666, 'Kids', 'Kids', 'T-Shirts', 'Nike Kids', '/assets/products/kt3.png', 52, 25, 'Kid-4-5Y,Kid-5-6Y,Kid-6-7Y', 1, 1, 1, 'Printed design t-shirt for boys', 4.5, 'Green', 'Boys'),
('Boys Sports T-Shirt ', 549, 733, 'Kids', 'Kids', 'T-Shirts', 'Puma Kids', '/assets/products/kt4.png', 50, 25, 'Kid-5-6Y,Kid-6-7Y,Kid-7-8Y', 1, 1, 1, 'Sports t-shirt for boys', 4.6, 'Grey', 'Boys'),
('Boys Polo T-Shirt ', 599, 799, 'Kids', 'Kids', 'T-Shirts', 'Adidas Kids', '/assets/products/kt5.png', 48, 25, 'Kid-6-7Y,Kid-7-8Y,Kid-8-9Y', 1, 1, 1, 'Polo style t-shirt for boys', 4.4, 'Navy', 'Boys'),
('Boys Cartoon T-Shirt ', 499, 666, 'Kids', 'Kids', 'T-Shirts', 'Disney Kids', '/assets/products/kt6.png', 55, 25, 'Kid-7-8Y,Kid-8-9Y,Kid-9-10Y', 1, 1, 1, 'Cartoon print t-shirt for boys', 4.3, 'Yellow', 'Boys'),
('Boys Dinosaur T-Shirt ', 549, 733, 'Kids', 'Kids', 'T-Shirts', 'Nike Kids', '/assets/products/kt7.png', 53, 25, 'Kid-8-9Y,Kid-9-10Y,Kid-10-11Y', 1, 1, 1, 'Dinosaur print t-shirt for boys', 4.5, 'Orange', 'Boys'),
('Boys Superhero T-Shirt ', 649, 866, 'Kids', 'Kids', 'T-Shirts', 'Marvel Kids', '/assets/products/kt8.png', 45, 25, 'Kid-9-10Y,Kid-10-11Y,Kid-11-12Y', 1, 1, 1, 'Superhero t-shirt for boys', 4.7, 'Red', 'Boys'),
('Boys Racing T-Shirt ', 599, 799, 'Kids', 'Kids', 'T-Shirts', 'Puma Kids', '/assets/products/kt9.png', 50, 25, 'Kid-10-11Y,Kid-11-12Y', 1, 1, 1, 'Racing theme t-shirt for boys', 4.4, 'Black', 'Boys'),
('Boys Space T-Shirt', 649, 866, 'Kids', 'Kids', 'T-Shirts', 'Adidas Kids', '/assets/products/kt10.png', 47, 25, 'Kid-11-12Y', 1, 1, 1, 'Space exploration t-shirt for boys', 4.6, 'Blue', 'Boys');

-- KIDS GIRLS JEANS (g1.png to g10.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color, KidType) VALUES
('Girls Slim Fit Jeans ', 899, 1199, 'Kids', 'Kids', 'Jeans', 'Levis Kids', '/assets/products/g1.png', 42, 25, 'Kid-2-3Y,Kid-3-4Y,Kid-4-5Y', 1, 1, 1, 'Slim fit jeans for girls', 4.4, 'Pink', 'Girls'),
('Girls Straight Fit Jeans ', 849, 1132, 'Kids', 'Kids', 'Jeans', 'Puma Kids', '/assets/products/g2.png', 45, 25, 'Kid-3-4Y,Kid-4-5Y,Kid-5-6Y', 1, 1, 1, 'Straight fit jeans for girls', 4.3, 'Light Blue', 'Girls'),
('Girls Skinny Jeans ', 949, 1266, 'Kids', 'Kids', 'Jeans', 'Roadster Kids', '/assets/products/g3.png', 38, 25, 'Kid-4-5Y,Kid-5-6Y,Kid-6-7Y', 1, 1, 1, 'Skinny fit jeans for girls', 4.5, 'Dark Wash', 'Girls'),
('Girls Ripped Jeans ', 999, 1332, 'Kids', 'Kids', 'Jeans', 'Levis Kids', '/assets/products/g4.png', 35, 25, 'Kid-5-6Y,Kid-6-7Y,Kid-7-8Y', 1, 1, 1, 'Ripped jeans for girls', 4.6, 'Blue', 'Girls'),
('Girls Distressed Jeans ', 979, 1306, 'Kids', 'Kids', 'Jeans', 'Puma Kids', '/assets/products/g5.png', 40, 25, 'Kid-6-7Y,Kid-7-8Y,Kid-8-9Y', 1, 1, 1, 'Distressed jeans for girls', 4.4, 'Light Blue', 'Girls'),
('Girls Bootcut Jeans ', 899, 1199, 'Kids', 'Kids', 'Jeans', 'Calvin Klein Kids', '/assets/products/g6.png', 42, 25, 'Kid-7-8Y,Kid-8-9Y,Kid-9-10Y', 1, 1, 1, 'Bootcut jeans for girls', 4.3, 'Grey', 'Girls'),
('Girls Flare Jeans ', 949, 1266, 'Kids', 'Kids', 'Jeans', 'Roadster Kids', '/assets/products/g7.png', 37, 25, 'Kid-8-9Y,Kid-9-10Y,Kid-10-11Y', 1, 1, 1, 'Flare jeans for girls', 4.5, 'Beige', 'Girls'),
('Girls Relaxed Fit Jeans ', 879, 1172, 'Kids', 'Kids', 'Jeans', 'Levis Kids', '/assets/products/g8.png', 44, 25, 'Kid-9-10Y,Kid-10-11Y,Kid-11-12Y', 1, 1, 1, 'Relaxed fit jeans for girls', 4.2, 'Navy', 'Girls'),
('Girls High Waist Jeans ', 929, 1240, 'Kids', 'Kids', 'Jeans', 'Puma Kids', '/assets/products/g9.png', 39, 25, 'Kid-10-11Y,Kid-11-12Y', 1, 1, 1, 'High waist jeans for girls', 4.4, 'Black', 'Girls'),
('Girls Embellished Jeans ', 1099, 1466, 'Kids', 'Kids', 'Jeans', 'STREET 9 Kids', '/assets/products/g10.png', 33, 25, 'Kid-11-12Y', 1, 1, 1, 'Embellished jeans for girls', 4.7, 'Blue', 'Girls');

-- KIDS GIRLS T-SHIRTS (j1.png to j10.png)
INSERT INTO Products (Name, Price, Mrp, Category, Gender, Type, Brand, Image, StockQuantity, Discount, Sizes, IsActive, ShowOnHomePage, ShowInShopPage, Description, Rating, Color, KidType) VALUES
('Girls Floral T-Shirt ', 449, 599, 'Kids', 'Kids', 'T-Shirts', 'Puma Kids', '/assets/products/j1.png', 55, 25, 'Kid-2-3Y,Kid-3-4Y,Kid-4-5Y', 1, 1, 1, 'Floral print t-shirt for girls', 4.4, 'Pink', 'Girls'),
('Girls Unicorn T-Shirt ', 499, 666, 'Kids', 'Kids', 'T-Shirts', 'Disney Kids', '/assets/products/j2.png', 50, 25, 'Kid-3-4Y,Kid-4-5Y,Kid-5-6Y', 1, 1, 1, 'Unicorn print t-shirt for girls', 4.6, 'White', 'Girls'),
('Girls Princess T-Shirt ', 549, 733, 'Kids', 'Kids', 'T-Shirts', 'Disney Kids', '/assets/products/j3.png', 48, 25, 'Kid-4-5Y,Kid-5-6Y,Kid-6-7Y', 1, 1, 1, 'Princess t-shirt for girls', 4.5, 'Purple', 'Girls'),
('Girls Rainbow T-Shirt ', 449, 599, 'Kids', 'Kids', 'T-Shirts', 'Nike Kids', '/assets/products/j4.png', 52, 25, 'Kid-5-6Y,Kid-6-7Y,Kid-7-8Y', 1, 1, 1, 'Rainbow colors t-shirt for girls', 4.3, 'Multicolor', 'Girls'),

('Girls Heart T-Shirt ', 449, 599, 'Kids', 'Kids', 'T-Shirts', 'Adidas Kids', '/assets/products/j6.png', 58, 25, 'Kid-7-8Y,Kid-8-9Y,Kid-9-10Y', 1, 1, 1, 'Heart pattern t-shirt for girls', 4.2, 'Red', 'Girls'),
('Girls Star T-Shirt ', 499, 666, 'Kids', 'Kids', 'T-Shirts', 'Nike Kids', '/assets/products/j7.png', 53, 25, 'Kid-8-9Y,Kid-9-10Y,Kid-10-11Y', 1, 1, 1, 'Star print t-shirt for girls', 4.5, 'Blue', 'Girls'),

('Girls Glitter T-Shirt ', 649, 866, 'Kids', 'Kids', 'T-Shirts', 'Forever Kids', '/assets/products/j9.png', 45, 25, 'Kid-10-11Y,Kid-11-12Y', 1, 1, 1, 'Glitter effect t-shirt for girls', 4.7, 'Silver', 'Girls'),
('Girls Sports T-Shirt ', 599, 799, 'Kids', 'Kids', 'T-Shirts', 'Adidas Kids', '/assets/products/j10.png', 47, 25, 'Kid-11-12Y', 1, 1, 1, 'Sports t-shirt for girls', 4.4, 'Grey', 'Girls');

-- Verification queries
SELECT 'TotalProducts' as Metric, COUNT(*) as Value FROM Products
UNION ALL
SELECT 'ProductsWithImages' as Metric, COUNT(*) as Value FROM Products WHERE Image IS NOT NULL AND Image != ''
UNION ALL
SELECT 'ProductsWithoutImages' as Metric, COUNT(*) as Value FROM Products WHERE Image IS NULL OR Image = '';

SELECT Id, Name, Image FROM Products LIMIT 10;