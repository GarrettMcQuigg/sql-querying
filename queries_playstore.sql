SELECT app_name FROM analytics WHERE id = 1880;
-- find app with id 1880 -- 

SELECT app_name, id FROM analytics WHERE last_updated = '2018-08-01';
-- check which apps were updated on August 01, 2018 --

SELECT category, COUNT(*) FROM analytics GROUP BY category;
-- count per category --

SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;
-- 5 most reviewed apps --

SELECT * FROM analytics WHERE rating > 4.8 ORDER BY rating DESC LIMIT 1;
-- highest rated app woth most reviews --

SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;
-- avg rating of categories --

SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
-- most expensive app with lower than 3.0 rating --

SELECT * FROM analytics WHERE min_installs < 50 AND rating > 0 ORDER BY rating DESC;
-- less than 50 installs ordered by highest rated --

SELECT * FROM analytics WHERE rating < 3 AND reviews > 10000;
-- apps with more than 10000 reviews and less than 3.0 rating --

SELECT * FROM analytics WHERE price BETWEEN .1 AND 1 ORDER BY reviews DESC LIMIT 10;
-- apps between $1 and $0.01 --

SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);
-- most out of date app --

SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);
-- most expensive app --

SELECT SUM(reviews) FROM analytics;
-- sum of all reviews --

SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
-- categories with more than 300 apps --

SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;