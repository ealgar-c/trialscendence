CREATE DATABASE my_database;

CREATE USER my_user WITH PASSWORD 'my_password';

ALTER USER my_user WITH PASSWORD 'my_password';

GRANT ALL PRIVILEGES ON DATABASE my_database TO my_user;

\c my_database;

CREATE TABLE mytable (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);
GRANT SELECT ON TABLE mytable TO my_user;

INSERT INTO mytable (name) VALUES ('John');
INSERT INTO mytable (name) VALUES ('Jane');
