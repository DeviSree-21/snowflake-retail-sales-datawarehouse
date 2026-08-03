-- ==========================================================
-- Project : Retail Sales Data Warehouse
-- File    : 07_DIM_CUSTOMER_SCD2.sql
-- ==========================================================

-- Step 1 : Expire old records

UPDATE DIM_CUSTOMER D
SET
END_DATE = CURRENT_DATE - 1,
IS_CURRENT = 'N'

FROM STG_SALES S

WHERE D.CUSTOMER_ID = S.CUSTOMER_ID
AND D.IS_CURRENT='Y'
AND
(
D.CITY<>S.CITY
OR
D.STATE<>S.STATE
);

-- Step 2 : Insert new customers and changed customers

INSERT INTO DIM_CUSTOMER
(
CUSTOMER_ID,
CUSTOMER_NAME,
CITY,
STATE,
EFFECTIVE_DATE,
END_DATE,
IS_CURRENT
)

SELECT DISTINCT

S.CUSTOMER_ID,
S.CUSTOMER_NAME,
S.CITY,
S.STATE,
CURRENT_DATE,
NULL,
'Y'

FROM STG_SALES S

LEFT JOIN DIM_CUSTOMER D

ON S.CUSTOMER_ID=D.CUSTOMER_ID
AND D.IS_CURRENT='Y'

WHERE D.CUSTOMER_ID IS NULL

OR

(
D.CITY<>S.CITY
OR
D.STATE<>S.STATE
);
