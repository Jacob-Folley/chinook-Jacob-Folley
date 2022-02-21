SELECT
    e.FirstName,
    e.LastName,
    SUM(i.Total)
FROM Employee e 
INNER JOIN Customer c ON c.SupportRepId = e.EmployeeId
INNER JOIN Invoice i ON i.CustomerID = c.CustomerID
GROUP BY e.EmployeeId

