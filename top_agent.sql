--top_agent.sql: Which sales agent made the most in sales over all?

select Top 1 e.[FirstName] + ' ' + e.[LastName] SalesRep, sum(i.total) as TotalSales
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on i.CustomerId = c.CustomerId
where e.Title = 'Sales Support Agent'
group by e.FirstName, e.LastName