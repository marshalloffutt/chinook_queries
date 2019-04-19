--tracks_no_id.sql: Provide a query that shows all the 
--Tracks, but displays no IDs. The result should include 
--the Album name, Media type and Genre.

select t.Name as Track, a.Title as Album, mt.Name as MediaType, g.Name as Genre
from Track as t
join Album as a on a.AlbumId = t.AlbumId
join Genre as g on g.GenreId = t.GenreId
join MediaType as mt on mt.MediaTypeId = t.MediaTypeId
Order By t.Name