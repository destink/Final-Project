CREATE TABLE video_game_sales (
    name VARCHAR(100) PRIMARY KEY,
    na_sales NUMERIC(10, 2) NOT NULL,
    eu_sales NUMERIC(10, 2) NOT NULL,
    jp_sales NUMERIC(10, 2) NOT NULL,
    other_sales NUMERIC(10, 2) NOT NULL,
    global_sales NUMERIC(10, 2) NOT NULL
);

CREATE TABLE video_game_reviews (
    name VARCHAR(100) PRIMARY KEY,
    critic_score NUMERIC(3, 1),
    critic_count INTEGER,
    user_score NUMERIC(3, 1),
    user_count INTEGER
);

CREATE TABLE video_game_details (
    name VARCHAR(100) PRIMARY KEY,
    year INTEGER,
    platform VARCHAR(50),
    year_of_release INTEGER,
    genre VARCHAR(50),
    publisher VARCHAR(50),
    developer VARCHAR(50),
    rating VARCHAR(10)
);