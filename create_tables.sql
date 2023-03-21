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

