CREATE TABLE merged_sales AS
SELECT 
  vgs.id,
  vgd.name AS game_name,
  vgd.platform,
  vgd.year_of_release,
  vgd.genre,
  vgs.na_sales,
  vgs.eu_sales,
  vgs.jp_sales,
  vgs.other_sales,
  vgs.global_sales
FROM video_game_sales vgs
INNER JOIN video_game_details vgd ON vgs.id = vgd.id;

SELECT 
  year_of_release,
  SUM(na_sales) AS total_na_sales,
  SUM(eu_sales) AS total_eu_sales,
  SUM(jp_sales) AS total_jp_sales,
  SUM(other_sales) AS total_other_sales,
  SUM(global_sales) AS total_global_sales
FROM merged_sales
GROUP BY year_of_release
ORDER BY year_of_release ASC;

SELECT 
  year_of_release,
  COUNT(*) AS total_entries
FROM merged_sales
GROUP BY year_of_release
ORDER BY year_of_release ASC;

SELECT 
  SUBSTRING(MAX(CONCAT(na_sales, '|', genre)) FROM '\|(.*?)$') AS top_na_genre,
  SUBSTRING(MAX(CONCAT(eu_sales, '|', genre)) FROM '\|(.*?)$') AS top_eu_genre,
  SUBSTRING(MAX(CONCAT(jp_sales, '|', genre)) FROM '\|(.*?)$') AS top_jp_genre,
  SUBSTRING(MAX(CONCAT(other_sales, '|', genre)) FROM '\|(.*?)$') AS top_other_genre
FROM merged_sales;