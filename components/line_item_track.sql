SELECT 
    a.InvoiceLineId,
    a.UnitPrice,
    t.Name
FROM InvoiceLine a
INNER JOIN Track t ON a.TrackId = t.TrackId