USE ROLE movies_reader;
USE DATABASE movies;

SHOW SCHEMAS;

USE SCHEMA staging;

SHOW TABLES;

USE WAREHOUSE dev_wh;

SELECT * FROM netflix LIMIT 10;

DESC TABLE netflix;

SELECT COUNT(*) FROM netflix;