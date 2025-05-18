SELECT
    StockCode AS product_id,
    MIN(Description) AS product_name
FROM {{ ref('stg_online_retail') }}
WHERE StockCode IS NOT NULL
GROUP BY StockCode
