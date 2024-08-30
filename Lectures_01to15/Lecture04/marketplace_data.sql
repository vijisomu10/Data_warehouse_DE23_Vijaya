USE DATABASE CRUNCHBASE_BASIC_COMPANY_DATA;

SHOW SCHEMAS;

USE SCHEMA PUBLIC;

SHOW TABLES;

SHOW VIEWS;

SELECT * FROM ORGANIZATION_SUMMARY LIMIT 5;

DESC VIEW ORGANIZATION_SUMMARY;

SELECT COUNT(*) AS NUMBER_ROIWS FROM ORGANIZATION_SUMMARY;

SELECT DISTINCT TYPE FROM ORGANIZATION_SUMMARY;

SELECT COUNT(DISTINCT name) AS NUMBER_UNIQUE_NAMES 
FROM ORGANIZATION_SUMMARY
LIMIT 5;

SELECT COUNT(DISTINCT COUNTRY_CODE) FROM ORGANIZATION_SUMMARY;

SELECT DISTINCT COUNTRY_CODE FROM ORGANIZATION_SUMMARY;

-- check number of organizations in different countries
SELECT
    country_code,
    COUNT(*) AS number_organizations
FROM organization_summary
GROUP BY country_code
ORDER BY number_organizations DESC;

-- check organizations in nordic countries 
SELECT
    country_code,
    COUNT(*) AS number_organizations
FROM organization_summary
GROUP BY country_code
HAVING country_code IN ('SWE', 'DNK', 'NOR', 'FIN', 'ISL')
ORDER BY number_organizations DESC;

-- check organizations in regions in nordic countries
SELECT
    country_code,
    region,
    COUNT(*) AS number_organizations
FROM organization_summary
GROUP BY country_code, region
HAVING country_code IN ('SWE', 'DNK', 'NOR', 'FIN', 'ISL')
ORDER BY number_organizations DESC;