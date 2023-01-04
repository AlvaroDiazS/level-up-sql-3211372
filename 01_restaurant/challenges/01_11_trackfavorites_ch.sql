-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

-- DishID 9
SELECT *
FROM Dishes 
WHERE Name = 'Quinoa Salmon Salad';

-- CustomerID 42
SELECT *
FROM Customers
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater';

UPDATE Customers
SET FavoriteDish = 9 -- can substitute per subquery
WHERE CustomerID = 42; -- can substitute per subquery

SELECT Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name 
FROM Customers 
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID
ORDER BY LastName;