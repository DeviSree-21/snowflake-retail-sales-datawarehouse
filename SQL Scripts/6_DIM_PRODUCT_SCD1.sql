-- ==========================================================
-- Project : Retail Sales Data Warehouse
-- File    : 06_DIM_PRODUCT_SCD1.sql
-- ==========================================================

MERGE INTO DIM_PRODUCT D
USING
(
    SELECT DISTINCT
        PRODUCT_ID,
        PRODUCT_NAME,
        CATEGORY
    FROM STG_SALES
) S
ON D.PRODUCT_ID = S.PRODUCT_ID

WHEN MATCHED THEN
UPDATE SET
    D.PRODUCT_NAME = S.PRODUCT_NAME,
    D.CATEGORY = S.CATEGORY

WHEN NOT MATCHED THEN
INSERT
(
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY
)
VALUES
(
    S.PRODUCT_ID,
    S.PRODUCT_NAME,
    S.CATEGORY
);
