select il.*, t.Name
from InvoiceLine il
join Track t on t.TrackId = il.TrackId
Order By il.InvoiceId