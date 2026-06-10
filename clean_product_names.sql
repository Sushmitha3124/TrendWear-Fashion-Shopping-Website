-- Clean up Product Names - Remove trailing numbers and identifiers
UPDATE Products SET Name = 'Women Skinny Jeans' WHERE Name LIKE '%Women Skinny Jeans%';
UPDATE Products SET Name = 'Women Straight Fit Jeans' WHERE Name LIKE '%Women Straight Fit Jeans%';
UPDATE Products SET Name = 'Women Slim Fit Jeans' WHERE Name LIKE '%Women Slim Fit Jeans%';
UPDATE Products SET Name = 'Women Ripped Jeans' WHERE Name LIKE '%Women Ripped Jeans%';
UPDATE Products SET Name = 'Women Boyfriend Jeans' WHERE Name LIKE '%Women Boyfriend Jeans%';
UPDATE Products SET Name = 'Women High Waist Jeans' WHERE Name LIKE '%Women High Waist Jeans%';
UPDATE Products SET Name = 'Women Distressed Jeans' WHERE Name LIKE '%Women Distressed Jeans%';
UPDATE Products SET Name = 'Women Bootcut Jeans' WHERE Name LIKE '%Women Bootcut Jeans%';
UPDATE Products SET Name = 'Women Flare Jeans' WHERE Name LIKE '%Women Flare Jeans%';
UPDATE Products SET Name = 'Women Wide Leg Jeans' WHERE Name LIKE '%Women Wide Leg Jeans%';
UPDATE Products SET Name = 'Women Cargo Jeans' WHERE Name LIKE '%Women Cargo Jeans%';
UPDATE Products SET Name = 'Women Mom Jeans' WHERE Name LIKE '%Women Mom Jeans%';
UPDATE Products SET Name = 'Women Low Rise Jeans' WHERE Name LIKE '%Women Low Rise Jeans%';
UPDATE Products SET Name = 'Women Embellished Jeans' WHERE Name LIKE '%Women Embellished Jeans%';
UPDATE Products SET Name = 'Women Printed Jeans' WHERE Name LIKE '%Women Printed Jeans%';
UPDATE Products SET Name = 'Women Patchwork Jeans' WHERE Name LIKE '%Women Patchwork Jeans%';
UPDATE Products SET Name = 'Women Mid Rise Jeans' WHERE Name LIKE '%Women Mid Rise Jeans%';
UPDATE Products SET Name = 'Women Destroyed Jeans' WHERE Name LIKE '%Women Destroyed Jeans%';

UPDATE Products SET Name = 'Men Slim Fit Jeans' WHERE Name LIKE '%Men Slim Fit Jeans%';
UPDATE Products SET Name = 'Men Straight Fit Jeans' WHERE Name LIKE '%Men Straight Fit Jeans%';
UPDATE Products SET Name = 'Men Skinny Fit Jeans' WHERE Name LIKE '%Men Skinny Fit Jeans%';
UPDATE Products SET Name = 'Men Bootcut Jeans' WHERE Name LIKE '%Men Bootcut Jeans%';
UPDATE Products SET Name = 'Men Cargo Jeans' WHERE Name LIKE '%Men Cargo Jeans%';
UPDATE Products SET Name = 'Men Distressed Jeans' WHERE Name LIKE '%Men Distressed Jeans%';
UPDATE Products SET Name = 'Men Slim Tapered Jeans' WHERE Name LIKE '%Men Slim Tapered Jeans%';
UPDATE Products SET Name = 'Men Relaxed Fit Jeans' WHERE Name LIKE '%Men Relaxed Fit Jeans%';
UPDATE Products SET Name = 'Men Destroyed Jeans' WHERE Name LIKE '%Men Destroyed Jeans%';

UPDATE Products SET Name = 'Women Round Neck Tshirt' WHERE Name LIKE '%Women Round Neck%';
UPDATE Products SET Name = 'Women Graphic Tshirt' WHERE Name LIKE '%Women Graphic Tshirt%';
UPDATE Products SET Name = 'Women V-Neck Tshirt' WHERE Name LIKE '%Women V-Neck%';
UPDATE Products SET Name = 'Women Polo Tshirt' WHERE Name LIKE '%Women Polo%';
UPDATE Products SET Name = 'Women Oversized Tshirt' WHERE Name LIKE '%Women Oversized%';
UPDATE Products SET Name = 'Women Crop Top' WHERE Name LIKE '%Women Crop%';
UPDATE Products SET Name = 'Women Long Sleeve' WHERE Name LIKE '%Women Long Sleeve%';
UPDATE Products SET Name = 'Women Printed Tshirt' WHERE Name LIKE '%Women Printed Tshirt%';
UPDATE Products SET Name = 'Women Basic Tshirt' WHERE Name LIKE '%Women Basic%';

UPDATE Products SET Name = 'Men Polo Tshirt' WHERE Name LIKE '%Men Polo%' AND Gender = 'Men';
UPDATE Products SET Name = 'Men Round Neck' WHERE Name LIKE '%Men Round Neck%';
UPDATE Products SET Name = 'Men Graphic Tshirt' WHERE Name LIKE '%Men Graphic Tshirt%';
UPDATE Products SET Name = 'Men Slim Fit' WHERE Name LIKE '%Men Slim Fit%' AND Category = 'Tshirts';
UPDATE Products SET Name = 'Men Oversized' WHERE Name LIKE '%Men Oversized%';
UPDATE Products SET Name = 'Men Printed' WHERE Name LIKE '%Men Printed%';
UPDATE Products SET Name = 'Men V-Neck' WHERE Name LIKE '%Men V-Neck%';
UPDATE Products SET Name = 'Men Long Sleeve' WHERE Name LIKE '%Men Long Sleeve%';
UPDATE Products SET Name = 'Men Crop Top' WHERE Name LIKE '%Men Crop Top%';
UPDATE Products SET Name = 'Men Basic' WHERE Name LIKE '%Men Basic%';

UPDATE Products SET Name = 'Boys Slim Jeans' WHERE Name LIKE '%Boys Slim Jeans%';
UPDATE Products SET Name = 'Boys Straight Fit' WHERE Name LIKE '%Boys Straight%';
UPDATE Products SET Name = 'Boys Skinny Fit' WHERE Name LIKE '%Boys Skinny%';
UPDATE Products SET Name = 'Boys Cargo Jeans' WHERE Name LIKE '%Boys Cargo%';
UPDATE Products SET Name = 'Boys Ripped Jeans' WHERE Name LIKE '%Boys Ripped%';
UPDATE Products SET Name = 'Boys Bootcut' WHERE Name LIKE '%Boys Bootcut%';
UPDATE Products SET Name = 'Boys Distressed' WHERE Name LIKE '%Boys Distressed%';
UPDATE Products SET Name = 'Boys Slim Tapered' WHERE Name LIKE '%Boys Slim Tapered%';
UPDATE Products SET Name = 'Boys Relaxed Fit' WHERE Name LIKE '%Boys Relaxed%';
UPDATE Products SET Name = 'Boys Destroyed Jeans' WHERE Name LIKE '%Boys Destroyed%';

UPDATE Products SET Name = 'Boys Graphic Tshirt' WHERE Name LIKE '%Boys Graphic Tshirt%';
UPDATE Products SET Name = 'Boys Round Neck' WHERE Name LIKE '%Boys Round Neck%' AND Gender = 'Kids';
UPDATE Products SET Name = 'Boys Polo' WHERE Name LIKE '%Boys Polo%';
UPDATE Products SET Name = 'Boys Printed' WHERE Name LIKE '%Boys Printed%';
UPDATE Products SET Name = 'Boys V-Neck' WHERE Name LIKE '%Boys V-Neck%';
UPDATE Products SET Name = 'Boys Long Sleeve' WHERE Name LIKE '%Boys Long Sleeve%';
UPDATE Products SET Name = 'Boys Oversized' WHERE Name LIKE '%Boys Oversized%';
UPDATE Products SET Name = 'Boys Crop Top' WHERE Name LIKE '%Boys Crop Top%';
UPDATE Products SET Name = 'Boys Basic' WHERE Name LIKE '%Boys Basic%';

UPDATE Products SET Name = 'Girls Skinny Jeans' WHERE Name LIKE '%Girls Skinny Jeans%';
UPDATE Products SET Name = 'Girls Straight Fit' WHERE Name LIKE '%Girls Straight%';
UPDATE Products SET Name = 'Girls Slim Fit' WHERE Name LIKE '%Girls Slim%';
UPDATE Products SET Name = 'Girls Ripped' WHERE Name LIKE '%Girls Ripped%';
UPDATE Products SET Name = 'Girls Cargo' WHERE Name LIKE '%Girls Cargo%';
UPDATE Products SET Name = 'Girls Bootcut' WHERE Name LIKE '%Girls Bootcut%';
UPDATE Products SET Name = 'Girls Distressed' WHERE Name LIKE '%Girls Distressed%';
UPDATE Products SET Name = 'Girls Slim Tapered' WHERE Name LIKE '%Girls Slim Tapered%';
UPDATE Products SET Name = 'Girls Relaxed Fit' WHERE Name LIKE '%Girls Relaxed%';
UPDATE Products SET Name = 'Girls Destroyed' WHERE Name LIKE '%Girls Destroyed%';

UPDATE Products SET Name = 'Girls Printed Tshirt' WHERE Name LIKE '%Girls Printed%';
UPDATE Products SET Name = 'Girls Round Neck' WHERE Name LIKE '%Girls Round Neck%';
UPDATE Products SET Name = 'Girls Graphic' WHERE Name LIKE '%Girls Graphic%';
UPDATE Products SET Name = 'Girls Polo' WHERE Name LIKE '%Girls Polo%';
UPDATE Products SET Name = 'Girls Crop Top' WHERE Name LIKE '%Girls Crop Top%';
UPDATE Products SET Name = 'Girls V-Neck' WHERE Name LIKE '%Girls V-Neck%';
UPDATE Products SET Name = 'Girls Long Sleeve' WHERE Name LIKE '%Girls Long Sleeve%';
UPDATE Products SET Name = 'Girls Oversized' WHERE Name LIKE '%Girls Oversized%';
UPDATE Products SET Name = 'Girls Basic' WHERE Name LIKE '%Girls Basic%';

-- Verify the changes
SELECT DISTINCT Name FROM Products WHERE IsActive = 1 ORDER BY Name;
