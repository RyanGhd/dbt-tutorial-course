-- FILEPATH: /Users/rghadiri/Documents/mp/pdp/dbt-tutorial-course/lessons/models/staging/stg_ecommerce__orders.sql

{{ config(materialized='view') }}

WITH source AS (
    SELECT *
    FROM {{ source('thelook_ecommerce', 'orders') }}
)

SELECT
    order_id,
    user_id,
    created_at,
    returned_at,
    delivered_at,
    shipped_at,
    status,
    num_of_item
FROM source
