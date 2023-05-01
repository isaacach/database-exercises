USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                       user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist VARCHAR(65) NOT NULL,
                       name VARCHAR(65) NOT NULL,
                       release_date int NOT NULL,
                       sales FLOAT NOT NULL,
                       genre VARCHAR(65) NOT NULL,
                       PRIMARY KEY (user_id)
);