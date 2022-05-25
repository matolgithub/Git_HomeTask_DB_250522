SELECT style_id, COUNT(singer_id) FROM style_singer 
	GROUP BY style_id 
	ORDER BY style_id;
	
SELECT COUNT(album_id) FROM track_list t 
	JOIN album_list a ON t.album_id = a.id
	WHERE a.release_year BETWEEN 2019 AND 2020; 

SELECT album_id, AVG(track_time) FROM track_list 
	GROUP BY album_id
	ORDER BY album_id;
