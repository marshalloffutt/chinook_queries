select c.FirstName, c.CustomerId, c.Country
from dbo.Customer as c
where c.Country <> 'USA'