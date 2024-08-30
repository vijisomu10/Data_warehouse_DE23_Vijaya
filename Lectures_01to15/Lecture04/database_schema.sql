Show databases;

CREATE DATABASE IF NOT EXISTS DEMO_DB;

Show databases;

CREATE SCHEMA IF NOT EXISTS DEMO_DB.STAGING;

SHOW SCHEMAs IN DATABASE DEMO_DB;

-- Also can specify schema in which schema we are ongoing
USE DATABASE demo_db;

CREATE SCHEMA IF NOT EXISTS WAREHOUSE_TEST;

-- however doing without IF NOT EXISTS will give an error
CREATE SCHEMA STAGING;

SHOW SCHEMAS;

CREATE TABLE IF NOT EXISTS Customer (
    Customer_Id integer PRIMARY KEY,
    Age integer,
    Email varchar(50)
    );

SHOW TABLES;

USE WAREHOUSE COMPUTE_WH;

-- insert some data into Customer table 
INSERT INTO Customer (Customer_Id, Age, Email)
VALUES
(1, 32, 'abc@gmail.com'),
(2, 23, 'cdc@gmail.com');

SELECT * FROM CUSTOMER;

-- Also possible to create under STAGING if we want, without changing context
CREATE TABLE IF NOT EXISTS STAGING.Stg_Customer (
    Customer_Id integer PRIMARY KEY,
    Age integer,
    Email varchar(50)
    );


SHOW TABLES IN DATABASE DEMO_DB;