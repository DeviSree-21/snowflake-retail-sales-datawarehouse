-- ==========================================================
-- Project : Retail Sales Data Warehouse
-- File    : 05_Copy_Into_STG.sql
-- ==========================================================

COPY INTO STG_SALES
FROM @SALES_STAGE
FILE_FORMAT = SALES_CSV_FORMAT
ON_ERROR = 'CONTINUE';
