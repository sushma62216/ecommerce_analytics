WITH dates AS (
    SELECT DISTINCT CAST(InvoiceDate AS DATE) AS date
    FROM {{ ref('stg_online_retail') }}
)

SELECT
    date,
    EXTRACT(year FROM date) AS year,
    EXTRACT(month FROM date) AS month,
    EXTRACT(day FROM date) AS day,
    EXTRACT(dow FROM date) AS day_of_week,
    TO_CHAR(date, 'Day') AS day_name,
    TO_CHAR(date, 'Month') AS month_name
FROM dates
