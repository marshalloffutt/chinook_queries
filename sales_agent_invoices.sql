select [name] = e.[FirstName] + ' ' + e.[LastName], i.*
from Employee e, Customer c
Join Invoice i on i.CustomerId = c.CustomerId
Where c.SupportRepId = e.EmployeeId
Order By c.SupportRepId