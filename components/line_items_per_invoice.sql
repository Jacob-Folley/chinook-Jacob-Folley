SELECT COUNT(a.InvoiceLineId)
FROM InvoiceLine a
GROUP BY a.InvoiceId