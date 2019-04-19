--sales_agent_total_sales.sql: Provide a query that 
--shows total sales made by each sales agent.

select sum(i.Total) TotalSales, e.[FirstName] + ' ' + e.[LastName] SalesRep
from Invoice i
join Customer c on c.CustomerId = i.CustomerId
join Employee e on e.EmployeeId = c.SupportRepId
where e.Title = 'Sales Support Agent'
group by e.FirstName, e.LastName