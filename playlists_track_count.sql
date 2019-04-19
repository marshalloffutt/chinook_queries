--playlists_track_count.sql: Provide a query that shows the total 
--number of tracks in each playlist. The Playlist name should be 
--include on the resulant table.

select count(plt.TrackId) as TrackCount, pl.Name
from Playlist as pl
join PlayListTrack as plt on plt.PlaylistId = pl.PlaylistId
Group By pl.Name
