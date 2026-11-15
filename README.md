# CS50 Songs – SQL queries

Eight SQL queries on `songs.db`, the 100 most-streamed songs on Spotify in 2018.

## 1. List the names of all songs
```sql
SELECT name
FROM songs;
```

## 2. List the names of all songs in increasing order of tempo
```sql
SELECT name
FROM songs
ORDER BY tempo;
```

## 3. List the names of the five longest songs, longest first
```sql
SELECT name
FROM songs
ORDER BY duration_ms DESC
LIMIT 5;
```

## 4. List songs with danceability, energy and valence all above 0.75
```sql
SELECT name
FROM songs
WHERE danceability > 0.75 AND energy > 0.75 AND valence > 0.75;
```

## 5. Average energy of all songs
```sql
SELECT AVG(energy)
FROM songs;
```

## 6. Names of songs by Post Malone (subquery)
```sql
SELECT name
FROM songs
WHERE artist_id = (
    SELECT id
    FROM artists
    WHERE name = 'Post Malone'
);
```

## 7. Average energy of songs by Drake (JOIN)
```sql
SELECT AVG(energy)
FROM songs
JOIN artists ON songs.artist_id = artists.id
WHERE artists.name = 'Drake';
```

## 8. Names of songs that feature other artists
```sql
SELECT name
FROM songs
WHERE name LIKE '%feat.%';
```
