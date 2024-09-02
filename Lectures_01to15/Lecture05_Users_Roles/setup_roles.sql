USE ROLE USERADMIN;

SELECT CURRENT_ROLE();

SELECT CURRENT_USER();

CREATE ROLE ice_cream_reader COMMENT = "Able to read ice_cream database";

CREATE ROLE ice_cream_writer COMMENT = "Able to CRUD operations ice_cream database";

CREATE ROLE ice_cream_analyst COMMENT = "Able to create views ice_cream database";

USE ROLE SECURITYADMIN;

GRANT USAGE ON WAREHOUSE dev_wh TO ROLE ice_cream_reader;

GRANT USAGE ON database ice_cream_db TO ROLE ice_cream_reader;

SHOW GRANTS TO ROLE ice_cream_reader;

GRANT USAGE ON ALL SCHEMAS IN DATABASE ice_cream_db TO ROLE ice_cream_reader;

GRANT SELECT ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_reader;

GRANT SELECT ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_reader;

SHOW GRANTS TO ROLE ice_cream_reader;

SHOW FUTURE GRANTS IN SCHEMA ice_cream_db.public;

GRANT ROLE ice_cream_reader TO ROLE ice_cream_writer;

SHOW GRANTS TO ROLE ice_cream_writer;

GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;

GRANT INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;

GRANT CREATE TABLE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;

SHOW FUTURE GRANTS IN SCHEMA ice_cream_db.public;

SHOW GRANTS TO ROLE ice_cream_writer;

USE ROLE ice_cream_writer;

GRANT ROLE ice_cream_writer TO USER vijisoma10;

USE ROLE ice_cream_writer;