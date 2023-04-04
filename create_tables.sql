CREATE TABLE video_game_sales (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    na_sales NUMERIC(10, 2) NOT NULL,
    eu_sales NUMERIC(10, 2) NOT NULL,
    jp_sales NUMERIC(10, 2) NOT NULL,
    other_sales NUMERIC(10, 2) NOT NULL,
    global_sales NUMERIC(10, 2) NOT NULL
);
-- drop table video_game_reviews
CREATE TABLE video_game_reviews (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    critic_score NUMERIC(3, 1),
    critic_count NUMERIC,
    user_score NUMERIC(3, 1),
    user_count NUMERIC
);

CREATE TABLE video_game_details (
    id SERIAL PRIMARY KEY,
    name VARCHAR(1000) NOT NULL,
    platform VARCHAR(50),
    year_of_release INTEGER,
    genre VARCHAR(500),
    publisher VARCHAR(500),
    developer VARCHAR(500),
    rating VARCHAR(10)
);

select * from video_game_details
select * from video_game_sales
select * from video_game_reviews

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

SELECT * FROM merged_sales

CREATE TABLE all_video_game_sales (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  platform VARCHAR(50) NOT NULL,
  year_of_release INTEGER NOT NULL,
  genre VARCHAR(50),
  publisher VARCHAR(255),
  na_sales NUMERIC(10,2),
  eu_sales NUMERIC(10,2),
  jp_sales NUMERIC(10,2),
  other_sales NUMERIC(10,2),
  worldwide_sales NUMERIC(10,2)
);


