-- Names of songs that feature other artists ("feat." in the name).
SELECT name
FROM songs
WHERE name LIKE '%feat.%';
