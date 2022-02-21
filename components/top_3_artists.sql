SELECT
    a.Name,
    COUNT(l.TrackId) AS Total_Purchased
FROM Invoice i
INNER JOIN InvoiceLine l ON i.InvoiceId = l.InvoiceId
INNER JOIN Track t ON l.TrackId = t.TrackId
INNER JOIN Album al ON t.AlbumId = al.AlbumId
INNER JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY a.ArtistId
ORDER BY Total_Purchased DESC
LIMIT 3;
