SELECT
    t.Name,
    COUNT(l.TrackId) AS Total_Purchased
FROM Invoice i
INNER JOIN InvoiceLine l ON i.InvoiceId = l.InvoiceId
INNER JOIN Track t ON l.TrackId = t.TrackId
WHERE i.InvoiceDate BETWEEN '2013-01-01 00:00:00' AND '2013-12-31 00:00:00'
GROUP BY t.Name
ORDER BY Total_Purchased DESC

