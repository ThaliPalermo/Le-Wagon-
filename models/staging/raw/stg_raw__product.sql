with

    source as (select * from {{ source("raw", "product") }}),

    renamed as (select products_id, purchse_price as purchase_price_1 from source)

select *
from renamed
