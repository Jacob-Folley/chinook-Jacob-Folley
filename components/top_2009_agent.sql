SELECT e.FirstName, e.LastName, Max(Total_Sales)
FROM (
    SELECT
        e.FirstName,
        e.LastName,
        SUM(i.Total) AS Total_Sales
    FROM Employee e 
    INNER JOIN Customer c ON c.SupportRepId = e.EmployeeId
    INNER JOIN Invoice i ON i.CustomerID = c.CustomerID
    WHERE i.InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 00:00:00'
    GROUP BY e.EmployeeId ) e