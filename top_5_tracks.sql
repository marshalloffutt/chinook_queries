--top_5_tracks.sql: Provide a query that shows
--the top 5 most purchased songs.

select top 5 t.Name, Count(t.TrackId) TimesOrdered
from Invoice i
join InvoiceLine il on il.InvoiceId = i.InvoiceId
join Track t on t.TrackId = il.TrackId
group by t.Name
order by timesOrdered Desc
