-- List aggregated sales by year
SELECT 
  year_of_release,
  SUM(na_sales) AS total_na_sales,
  SUM(eu_sales) AS total_eu_sales,
  SUM(jp_sales) AS total_jp_sales,
  SUM(other_sales) AS total_other_sales,
  SUM(worldwide_sales) AS total_worldwide_sales
FROM all_video_game_sales
GROUP BY year_of_release
ORDER BY year_of_release ASC;

-- List agregated sales by total worldwide sales in decending order 
SELECT 
  year_of_release,
  SUM(na_sales) AS total_na_sales,
  SUM(eu_sales) AS total_eu_sales,
  SUM(jp_sales) AS total_jp_sales,
  SUM(other_sales) AS total_other_sales,
  SUM(worldwide_sales) AS total_worldwide_sales
FROM all_video_game_sales
GROUP BY year_of_release
ORDER BY total_worldwide_sales DESC;

-- Number of entries by year of release
SELECT 
  year_of_release,
  COUNT(*) AS total_entries
FROM all_video_game_sales
GROUP BY year_of_release
ORDER BY year_of_release ASC;

-- Boxplot of worldwide sales
CREATE EXTENSION IF NOT EXISTS pgplot;

SELECT pg_boxplot(worldwide_sales)
FROM all_video_game_sales;

-- Top performing genere by region 
SELECT 
  SUBSTRING(MAX(CONCAT(na_sales, '|', genre)) FROM '\|(.*?)$') AS top_na_genre,
  SUBSTRING(MAX(CONCAT(eu_sales, '|', genre)) FROM '\|(.*?)$') AS top_eu_genre,
  SUBSTRING(MAX(CONCAT(jp_sales, '|', genre)) FROM '\|(.*?)$') AS top_jp_genre,
  SUBSTRING(MAX(CONCAT(other_sales, '|', genre)) FROM '\|(.*?)$') AS top_other_genre
FROM all_video_game_sales;

-- Top performing game by genre
SELECT vg.name, vg.platform, vg.year_of_release, vg.genre, vg.publisher, vg.worldwide_sales
FROM all_video_game_sales vg
INNER JOIN (
  SELECT genre, MAX(worldwide_sales) AS max_sales
  FROM all_video_game_sales
  GROUP BY genre
) t ON vg.genre = t.genre AND vg.worldwide_sales = t.max_sales
ORDER BY vg.worldwide_sales DESC;

-- Top grossing games of all time (top 10)
SELECT name, platform, year_of_release, genre, publisher, worldwide_sales
FROM all_video_game_sales
ORDER BY worldwide_sales DESC
LIMIT 10;

-- Top selling platforms
SELECT platform, SUM(worldwide_sales) AS total_worldwide_sales
FROM all_video_game_sales
GROUP BY platform
ORDER BY total_worldwide_sales DESC;

