CREATE SEQUENCE source_id_seq;
CREATE SEQUENCE news_id_seq;

CREATE TABLE source(
    id INT NOT NULL DEFAULT nextval('source_id_seq'),
    identifier VARCHAR (50),
    name VARCHAR (50),
    PRIMARY KEY (id)
);

CREATE TABLE news(
    id INT NOT NULL DEFAULT nextval('news_id_seq'),
    title VARCHAR (255) NOT NULL,
    content VARCHAR NOT NULL,
    description VARCHAR,
    source_id INT,
    author VARCHAR (255),
    published_at TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (source_id) REFERENCES source (id)
);