{{
    config(
        materialized = 'view'

    )
}}

WITH customers AS (
    SELECT * FROM {{ source('jaffle_shop', 'customers') }}
)

SELECT 
    *
FROM customers
