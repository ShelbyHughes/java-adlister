use adlister_db;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(320),
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT uc_email UNIQUE (email)
);


CREATE TABLE IF NOT EXISTS ads(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title       VARCHAR(40),
    description VARCHAR(255),
    user_id     INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    PRIMARY KEY (id)
);