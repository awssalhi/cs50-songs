-- Names of songs by Post Malone, without assuming his artist id.
SELECT name
FROM songs
WHERE artist_id = (
    SELECT id
    FROM artists
    WHERE name = 'Post Malone'
);
