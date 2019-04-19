--invoices_line_item_count.sql: Provide a query 
--that shows all Invoices but includes the # of 
--invoice line items.

select i.*, count(il.InvoiceLineId) LineItems
from Invoice as i
join InvoiceLine il On i.InvoiceId = il.InvoiceId
group by i.InvoiceId