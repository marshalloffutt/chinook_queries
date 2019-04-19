--top_3_artists.sql: Provide a query that
--shows the top 3 best selling artists.

select top 3 ar.Name, count(al.ArtistId) TimesOrdered
from Invoice i
join InvoiceLine il on il.InvoiceId = i.InvoiceId
join Track t on t.TrackId = il.TrackId
join Album al on al.AlbumId = t.AlbumId
join Artist ar on ar.ArtistId = al.ArtistId
group by ar.Name
order by TimesOrdered Desc