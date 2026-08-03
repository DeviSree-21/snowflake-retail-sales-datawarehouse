-- ==========================================================
-- Project : Retail Sales Data Warehouse
-- File    : 03_File_Format.sql
-- ==========================================================

CREATE OR REPLACE FILE FORMAT SALES_CSV_FORMAT
TYPE = CSV
FIELD_DELIMITER = ','
SKIP_HEADER = 1;
