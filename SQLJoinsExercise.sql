/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
Select products.Name, categories.Name
From products
Inner Join categories
On categories.CategoryID = products.CategoryID
WHERE categories.Name = 'Computers';

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 Select products.Name, products.Price, reviews.Rating
 From products
 Inner JOIN reviews 
 On reviews.ProductID = products.ProductID
 WHERE reviews.Rating = '5';
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
Select employees.FirstName, employees.LastName, Sum(sales.Quantity) AS Total
From sales
INNER JOIN employees
ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY Total DESC
Limit 2;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select departments.Name, categories.Name
from categories
LEFT JOIN departments
ON departments.DepartmentID = categories.DepartmentID
WHERE categories.Name = 'Appliances' OR categories.Name = 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 Select products.Name, Sum(sales.Quantity) AS 'Total Sold', Sum(sales.Quantity * sales.PricePerUnit) AS 'Total Price'
 from products
 INNER JOIN sales
 ON sales.ProductID = products.ProductID
 WHERE Name = 'Eagles: Hotel California';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
From reviews
INNER JOIN products
ON products.ProductID = reviews.ProductID
WHERE reviews.Rating = '1' AND products.Name = 'Visio TV';

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
Select employees.EmployeeID, employees.FirstName, employees.LastName, products.Name, Sum(sales.Quantity) AS TotalSold
From sales
INNER JOIN employees
ON employees.EmployeeID = sales.EmployeeID
INNER JOIN products
ON products.ProductID = sales.ProductID
GROUP BY employees.EmployeeID, products.ProductID;

