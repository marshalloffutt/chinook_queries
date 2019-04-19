--top_country.sql: Which country's
--customers spent the most?

select top 1 sum(i.Total) as TotalSales, i.BillingCountry as Country
from Invoice i
group by i.BillingCountry
Order By TotalSales Desc