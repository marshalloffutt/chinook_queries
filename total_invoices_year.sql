select count(*)
from Invoice i
where year (i.InvoiceDate) = '2009'
or year(i.InvoiceDate) = '2011'