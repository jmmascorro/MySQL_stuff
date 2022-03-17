-- find all products 
Select * From products;
 
-- find all products that cost $1400
 Select * From products Where price = 1400;
 
-- find all products that cost $11.99 or $13.99
 Select * From products Where price = 11.99 or price = 13.99;
 
-- find all products that do NOT cost 11.99 - using NOT
 Select * From products Where NOT price = 11.99;
 
-- find  all products and sort them by price from greatest to least
 Select * From products ORDER BY Price DESC;
 
-- find all employees who don't have a middle initial
Select * From employees Where MiddleInitial is Null;

-- find distinct product prices
Select Distinct(Price) from products;
 
-- find all employees whose first name starts with the letter ‘j’
Select * From employees Where firstName Like 'j%';
 
-- find all Macbooks
Select * From products Where Name Like '%macbook%';
 
-- find all products that are on sale
Select * From products Where OnSale = 1;
 
-- find the average price of all products 
Select AVG(Price) From products;
 
-- find all Geek Squad employees who don't have a middle initial 
Select * From employees Where Title Like '%Geek Squad%' AND MiddleInitial is Null;
 
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
Select * From products Where StockLevel between 500 AND 1200 ORDER BY Price ASC;
