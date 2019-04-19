--top_media_type.sql: Provide a query that
--shows the most purchased Media Type.

select top 1 mt.Name MediaType, count(mt.MediaTypeId) TimesOrdered
from Invoice i
join InvoiceLine il on il.InvoiceId = i.InvoiceId
join Track t on t.TrackId = il.TrackId
join MediaType mt on mt.MediaTypeId = t.MediaTypeId
group by mt.Name
order by TimesOrdered desc