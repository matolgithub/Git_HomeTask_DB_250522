SELECT style_id, COUNT(singer_id) FROM style_singer 
	GROUP BY style_id 
	ORDER BY style_id; 