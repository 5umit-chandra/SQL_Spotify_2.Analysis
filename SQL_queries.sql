USE spotify_2023;

-- Checking streams and artists names not null
SELECT COUNT( * )
FROM spotify_data
WHERE 'streams' IS NULL OR 'artists_name' IS NULL
;
-- result 0

-- Q1: Which artist has the most songs in the top streamed list?
SELECT artists_name, COUNT(*) as song_count
FROM spotify_data
WHERE released_year = 2023
GROUP BY artists_name
ORDER BY song_count DESC
LIMIT 1
;

-- Q2: What is the average number of streams for songs released in each month of 2023?
SELECT released_month, ROUND(AVG(streams),0) as avg_streams
FROM spotify_data
WHERE released_year = 2023
GROUP BY released_month
ORDER BY released_month
;

-- Q3: Are songs with higher danceability percentages generally more popular (i.e. have more streams)?
SELECT CASE
	WHEN danceability_persent <= 25 THEN '0-25%'
	WHEN danceability_persent <= 50 THEN '26-50%'
	WHEN danceability_persent <= 75 THEN '51-75%'
	ELSE '76-100%'
END AS danceability_group, AVG(streams) as avg_streams
FROM spotify_data
GROUP BY danceability_group
ORDER BY avg_streams DESC
;

-- Q4: What percentage of songs in the 'Top Spotify Songs 2023' were actually released in 2023?
WITH SongCounts AS (
	SELECT 	COUNT(*) AS total_count, 
			SUM(CASE WHEN released_year = 2023 THEN 1 ELSE 0 END) AS count_2023
	FROM spotify_data
    )
SELECT (
	count_2023 * 100.0 / total_count) AS percentage_released_in_2023
	FROM SongCounts
    ;
    
/* 
Conclusion:
Firstly, the dataset underscores country singer Morgan Wallen as the dominant artist, securing eight tracks from his latest album in the top streamed list.
Secondly, January emerges as the pinnacle month for streams in the current year.
Thirdly, it's noteworthy that danceability doesn't consistently correlate with song popularity; however, the 26-50% danceability range garners the highest stream counts.
Finally, only 18% of the top songs in 2023 were actually released in the same year, adding a layer of intrigue to the streaming landscape.
*/

----END----