--top_2013_track.sql: Provide a query that
--shows the most purchased track of 2013.

select top 1 t.Name, Count(t.TrackId) TimesOrdered
from Invoice i
join InvoiceLine il on il.InvoiceId = i.InvoiceId
join Track t on t.TrackId = il.TrackId
where year (i.InvoiceDate) = 2013
group by t.Name
order by timesOrdered Desc