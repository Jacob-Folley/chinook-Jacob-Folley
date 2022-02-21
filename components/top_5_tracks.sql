SELECT
    t.Name,
    COUNT(l.TrackId) AS Total_Purchased
FROM Invoice i
INNER JOIN InvoiceLine l ON i.InvoiceId = l.InvoiceId
INNER JOIN Track t ON l.TrackId = t.TrackId
GROUP BY l.TrackId
ORDER BY Total_Purchased DESC
LIMIT 5;


