{{ config(materialized='table') }}
WITH CUSTOMERREVENUE AS (
    SELECT
        C."customer_id" AS CUSTOMER_ID,
        C."full_name" AS CUSTOMER_NAME,
        COUNT(DISTINCT O."order_id") AS ORDERCOUNT,
        SUM(OI."item_quantity" * OI."item_unit_price") AS REVENUE -- Assuming item_unit_price is in ORDERITEMS
    FROM M_LANDING.CUSTOMERS C
    JOIN M_LANDING.ORDERS O ON C."customer_id" = O."customer_id"
    JOIN M_LANDING.ORDERITEMS OI ON O."order_id" = OI."order_id"
    GROUP BY CUSTOMER_ID, CUSTOMER_NAME
    ORDER BY REVENUE DESC
)
SELECT CUSTOMER_ID, CUSTOMER_NAME, ORDERCOUNT, REVENUE
FROM CUSTOMERREVENUE
