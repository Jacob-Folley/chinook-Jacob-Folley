SELECT 
    SUM(i.InvoiceId) AS Sum,
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry