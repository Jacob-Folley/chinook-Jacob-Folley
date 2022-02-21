SELECT 
    COUNT(i.PlaylistId),
    p.Name
FROM Playlist p
INNER JOIN PlaylistTrack i ON p.PlaylistId = i.PlaylistId
GROUP BY i.PlaylistId