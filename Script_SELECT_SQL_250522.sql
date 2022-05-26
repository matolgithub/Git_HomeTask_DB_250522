SELECT style_id, COUNT(singer_id) FROM style_singer 
	GROUP BY style_id 
	ORDER BY style_id;
	
SELECT COUNT(album_id) FROM track_list t 
	JOIN album_list a ON t.album_id = a.id
	WHERE a.release_year BETWEEN 2019 AND 2020; 

SELECT album_id, AVG(track_time) FROM track_list 
	GROUP BY album_id
	ORDER BY album_id;

SELECT singer_id FROM singer_album sa 
	JOIN album_list al ON sa.album_id = al.id 
	WHERE al.release_year != 2020;

SELECT collection_name FROM collection c 
	JOIN collection_track ct ON c.id = ct.collection_id 
	JOIN track_list tl ON ct.track_id = tl.id 
	JOIN album_list al ON tl.album_id = al.id 
	JOIN singer_album sa ON al.id = sa.album_id 
	JOIN singer_list sl ON sa.singer_id = sl.id 
	WHERE sl.singer_name = 'Trololo'
	ORDER BY collection_name; 

SELECT album_name FROM album_list al 
	JOIN singer_album sa ON al.id = sa.album_id 
	JOIN singer_list sl ON sa.singer_id = sl.id
	JOIN style_singer ss ON sl.id = ss.singer_id 
	JOIN style_list sl2 ON ss.style_id = sl2.id
	GROUP BY album_name 
	HAVING COUNT(style_id) > 1
	ORDER BY album_name;
	
SELECT track_name FROM track_list tl 
	LEFT JOIN collection_track ct ON tl.id = ct.track_id 
	WHERE ct.track_id IS NULL 
	ORDER BY track_name;