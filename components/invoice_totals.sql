SELECT
    a.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.FirstName,
    e.LastName
FROM Invoice a 
INNER JOIN Customer c ON a.CustomerId = c.CustomerId
INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId