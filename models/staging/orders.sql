{{
    config(
        materialized = 'view'

    )
}}

WITH orders AS (
    SELECT * FROM {{ source('jaffle_shop', 'orders')}}
)

SELECT
    *
FROM orders
