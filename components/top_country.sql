SELECT MAX(i.BillingCountry) AS Highest_Spent
FROM (
    SELECT
        SUM(i.Total) AS Total_Sales,
        i.BillingCountry
    FROM Invoice i
    GROUP BY i.BillingCountry ) i