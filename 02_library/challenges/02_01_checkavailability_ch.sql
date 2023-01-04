-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(*)
FROM Books 
WHERE Title = 'Dracula';

SELECT COUNT(*)
FROM Loans JOIN Books on Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' AND Loans.ReturnedDate IS NULL;

SELECT 
  (SELECT COUNT(*)
    FROM Books 
    WHERE Title = 'Dracula') -
  (SELECT COUNT(*)
    FROM Loans JOIN Books on Loans.BookID = Books.BookID
    WHERE Books.Title = 'Dracula' 
    AND Loans.ReturnedDate IS NULL)
AS TotalBooks;