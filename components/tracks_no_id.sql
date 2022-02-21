SELECT 
    a.Title AS Album, 
    m.Name AS MediaType,
    g.Name AS Genre
FROM Track t 
INNER JOIN Album a ON t.AlbumId = a.AlbumId
INNER JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
INNER JOIN Genre g ON g.GenreId = t.GenreId