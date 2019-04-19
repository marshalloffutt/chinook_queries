select il.*, t.Name, ar.Name
from InvoiceLine il
join Track t on t.TrackId = il.TrackId
join Album a on a.AlbumId = t.AlbumId
join Artist ar on ar.ArtistId = a.ArtistId
Order By il.InvoiceId