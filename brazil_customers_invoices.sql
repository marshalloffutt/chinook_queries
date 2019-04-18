select i.CustomerId, i.InvoiceId, i.InvoiceDate, i.BillingCountry
From Invoice as i
Join Customer c on c.CustomerId = i.CustomerId
Where c.Country = 'Brazil'