--top_2009_agent.sql: Which sales agent 
--made the most in sales in 2009? HINT: MAX

drop table #sales
select Top 1 sum(i.total) as TotalSales, e.[FirstName] + ' ' + e.[LastName] SalesRep
into #sales
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on i.CustomerId = c.CustomerId
where year (i.InvoiceDate) = '2009' and
e.Title = 'Sales Support Agent'
group by e.FirstName, e.LastName

select max(TotalSales), SalesRep
from #sales
group by SalesRep
