SELECT genre g, COUNT(name) FROM artist a 
GROUP BY g;

SELECT COUNT(t."name") FROM track t
JOIN album a ON a.id  = t.album 
WHERE "year" BETWEEN 2019 AND 2020;

SELECT a."name", AVG(t.length) al FROM track t
JOIN album a ON a.id = t.album 
GROUP BY a."name"
ORDER BY al DESC;

SELECT a."name" FROM artist a
JOIN album a2 ON a.id = a2.id 
WHERE a2."year" != 2020;

SELECT c."name" FROM collection c
JOIN track_collection tc ON c.id = tc.collection_id
JOIN track t ON track_id = t.id 
JOIN artist_album aa ON album = aa.artist_id
JOIN artist a ON artist_id = a.id 
WHERE a.name LIKE 'Andrea Bocelli';

SELECT a."name" FROM album a 
JOIN artist_album aa ON a.id = aa.artist_id
JOIN artist_genre ag ON aa.artist_id = ag.artist_id
JOIN artist a2 ON ag.artist_id = a2.id 
GROUP BY a."name" 
HAVING count(*) > 1;

SELECT t."name" FROM track t 
JOIN track_collection tc ON t.id = tc.track_id 
GROUP BY t."name" 
HAVING count(*) = 0;

SELECT a."name", MIN(t.length) FROM artist a 
JOIN artist_album aa ON a.id = aa.album_id  
JOIN album a2 ON aa.album_id = a2.id 
JOIN track t ON a2.id = t.album
GROUP BY a."name" 
ORDER BY min
LIMIT 1;

SELECT c."name", COUNT(t."name") FROM collection c 
JOIN track_collection tc ON c.id = tc.collection_id 
JOIN track t ON tc.track_id = t.id 
GROUP BY c."name" 
ORDER BY count
LIMIT 3;

















 





 









