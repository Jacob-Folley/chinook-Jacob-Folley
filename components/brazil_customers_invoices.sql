SELECT
    a.FirstName,
    a.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer a
INNER JOIN Invoice i ON a.CustomerId = i.CustomerId
WHERE a.Country = 'Brazil'