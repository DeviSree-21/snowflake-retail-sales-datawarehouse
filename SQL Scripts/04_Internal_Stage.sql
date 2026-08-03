-- ==========================================================
-- Project : Retail Sales Data Warehouse
-- File    : 04_Internal_Stage.sql
-- ==========================================================

CREATE OR REPLACE STAGE SALES_STAGE
FILE_FORMAT = SALES_CSV_FORMAT;
