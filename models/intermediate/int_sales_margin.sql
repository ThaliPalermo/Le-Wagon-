
SELECT
    stg_raw__sales.*,
    stg_raw__product.purchase_price_1,
    CAST(quantity AS INT) * CAST(purchase_price_1 AS DECIMAL) AS purchase_cost,
    ROUND (revenue - (CAST(quantity AS INT) * CAST(purchase_price_1 AS DECIMAL))) AS Margin
FROM
    {{ ref("stg_raw__product") }} 
LEFT JOIN
    {{ ref("stg_raw__sales") }}
USING (products_id)
