-- The average energy of songs by Drake, without assuming his artist id.
SELECT AVG(energy)
FROM songs
JOIN artists ON songs.artist_id = artists.id
WHERE artists.name = 'Drake';
