SELECT 
    a.InvoiceLineId,
    a.UnitPrice,
    t.Name,
    e.Name
FROM InvoiceLine a
INNER JOIN Track t ON a.TrackId = t.TrackId
INNER JOIN Album a ON a.AlbumId = t.AlbumId
INNER JOIN Artist e ON a.ArtistId = e.ArtistId