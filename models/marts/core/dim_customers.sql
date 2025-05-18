SELECT
    CAST(CustomerID AS INT) AS customer_id,
    MIN(Country) AS country  -- If needed, can join with geo later
FROM {{ ref('stg_online_retail') }}
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
