SELECT
    orders_id
    ,MAX(date_date) AS date_date
    ,ROUND (sum (revenue), 2) AS revenue
    ,ROUND (sum (quantity), 2) AS quantity
    ,ROUND (sum (purchase_cost), 2) AS purchase_cost
    ,ROUND (sum (Margin), 2) AS Margin
FROM {{ ref("int_sales_margin") }} 
GROUP BY 
    orders_id
ORDER BY 
    orders_id DESC

