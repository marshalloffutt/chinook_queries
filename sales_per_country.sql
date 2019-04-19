--sales_per_country.sql: Provide a query that
--shows the total sales per country.

select sum(i.Total) as TotalSales, i.BillingCountry as Country
from Invoice i
group by i.BillingCountry
