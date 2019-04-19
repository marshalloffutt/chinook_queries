select count(*) as LineItems
from InvoiceLine il
Group By il.InvoiceId