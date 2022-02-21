SELECT 
    i.InvoiceId,
    COUNT(i.InvoiceLineId)
FROM InvoiceLine i
GROUP BY i.InvoiceId