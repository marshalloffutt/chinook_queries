select i.Total, [customerName] = c.[FirstName] + ' ' + c.[LastName], i.BillingCountry, [employeeName] = e.[FirstName] + ' ' + e.[LastName]
from Invoice i, Customer c
join Employee e on e.EmployeeId = c.SupportRepId
Where c.CustomerId = i.CustomerId