SHOW WAREHOUSES;

CREATE WAREHOUSE demo_warehouse
WITH
WAREHOUSE_SIZE = 'X-Small' --t-shirt sizes
AUTO_SUSPEND = 300
AUTO_RESUME = TRUE
INITIALLY_SUSPENDED = TRUE
COMMENT = "Demo warehouse created through worksheet";

Show WAREHOUSES;

USE WAREHOUSE COMPUTE_WH;

-- DDL operation: ALTER to modify compute resources (warehouses) and database objects
ALTER WAREHOUSE compute_wh
SET AUTO_SUSPEND = 60; -- to decrease cost 

-- Scaling out - horizantal scaling
ALTER WAREHOUSE DEMO_WAREHOUSE
SET MAX_CLUSTER_COUNT = 3;

DROP warehouse demo_warehouse;

SHOW warehouses;

CREATE WAREHOUSE demo_wh_trial
WITH
WAREHOUSE_SIZE = 'X-Small' --t-shirt sizes
AUTO_SUSPEND = 300
AUTO_RESUME = TRUE
INITIALLY_SUSPENDED = TRUE
COMMENT = "demo_wh_trial created through worksheet";

