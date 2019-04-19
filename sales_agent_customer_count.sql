--sales_agent_customer_count.sql: Provide a query that
--shows the count of customers assigned to each sales agent.

select count(*) as NumberOfCustomers, [SalesRep] = e.[FirstName] + ' ' + e.[LastName]
from Employee e
join Customer c on e.EmployeeId = c.SupportRepId
group by e.EmployeeId, e.FirstName, e.LastName