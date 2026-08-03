-- ==========================================================
-- Project : Retail Sales Data Warehouse
-- File    : 10_Task.sql
-- ==========================================================

CREATE OR REPLACE TASK SALES_ETL_TASK

WAREHOUSE = COMPUTE_WH

SCHEDULE = 'USING CRON 0 8 * * * UTC'

AS

CALL LOAD_SALES_ETL();

ALTER TASK SALES_ETL_TASK RESUME;
