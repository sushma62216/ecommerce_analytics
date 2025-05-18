SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    TO_TIMESTAMP(InvoiceDate, 'DD-MM-YYYY HH24:MI') AS InvoiceDate,
    UnitPrice,
    CustomerID,
    Country
FROM {{ source('raw', 'online_retail') }}
