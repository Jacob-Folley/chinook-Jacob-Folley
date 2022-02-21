SELECT
    a.EmployeeId,
    a.LastName,
    a.FirstName,
    a.Title,
    a.ReportsTo,
    a.BirthDate,
    a.HireDate,
    a.Address,
    a.City,
    a.State,
    a.Country,
    a.PostalCode,
    a.Phone,
    a.Fax,
    a.Email
FROM Employee a WHERE a.Title == 'Sales Support Agent'