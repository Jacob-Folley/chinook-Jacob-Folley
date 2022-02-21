SELECT 
    Name, 
    MAX(media_count) as top_media_count
FROM (
    SELECT 
        mt.Name, 
        COUNT(t.MediaTypeId) as media_count
    FROM Track t
    JOIN MediaType mt on t.MediaTypeId = mt.MediaTypeId
    GROUP BY t.MediaTypeId
);