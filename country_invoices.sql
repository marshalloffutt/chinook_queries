select count(*) as #OfInvoices, i.BillingCountry as Country
from Invoice i
Group By i.BillingCountry