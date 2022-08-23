INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
-- add chair --

INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);
-- add stool --

INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124, false);
-- add table --

SELECT * FROM products;
-- display all rows and columns --

SELECT name FROM products;
-- display only name of products -- 

SELECT name, price FROM products;
-- display price and name --

INSERT INTO products (name, price, can_be_returned) VALUES ('pot', 15, true);
-- add new product --

SELECT name FROM products WHERE can_be_returned = true;
-- display returnable items --

SELECT * from products WHERE price < 44;
-- prices less than 44.00 --

SELECT * from products WHERE price < 99.99 AND price > 22.5;
-- prices between 22.5 and 99.99 --

UPDATE products SET price = price - 20;
-- $20 off sale --

DELETE FROM products WHERE name='pot';
-- pots have sold out --

UPDATE products SET price = price + 20;
-- end of sale --

UPDATE products SET can_be_returned = true;
-- new company policy -- 