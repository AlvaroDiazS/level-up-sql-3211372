-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT Patrons.FirstName, Patrons.Email, COUNT(Loans.LoanID) as NumberLoans
FROM Patrons JOIN Loans ON Patrons.PatronID = Loans.PatronID
GROUP BY Patrons.PatronID
ORDER BY NumberLoans ASC
LIMIT 10;
