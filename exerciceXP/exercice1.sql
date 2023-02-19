-- Exercice 1

-- 1. All items, ordered by price (lowest to highest).
SELECT * FROM items ORDER BY dbl_iteprice;

-- 2. Items with a price above 80 (80 included), ordered by price (highest to lowest).
SELECT * FROM items WHERE dbl_iteprice <= 80 ORDER BY dbl_iteprice DESC;

-- 3. The first 3 customers in alphabetical order of the first name (A-Z) – exclude the primary key column from the results.
SELECT str_cusfirst_name, str_cuslast_name FROM customers ORDER BY str_cusfirst_name LIMIT 3;

-- 4. All last names (no other columns!), in reverse alphabetical order (Z-A)
SELECT str_cuslast_name FROM customers ORDER BY str_cuslast_name DESC;