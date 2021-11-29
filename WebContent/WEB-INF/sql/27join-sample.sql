SELECT * FROM Categories;
SELECT * FROM Products;

SELECT p.ProductID, p.ProductName, c.CategoryName, p.Unit, p.Price
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY 3, 2;
