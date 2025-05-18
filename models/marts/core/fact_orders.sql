SELECT
    InvoiceNo AS order_id,
    CAST(CustomerID AS INT) AS customer_id,
    InvoiceDate,
    SUM(Quantity * UnitPrice) AS order_amount,
    COUNT(*) AS total_items,
    MIN(Country) AS country
FROM {{ ref('stg_online_retail') }}
WHERE CustomerID IS NOT NULL
GROUP BY InvoiceNo, CustomerID, InvoiceDate
