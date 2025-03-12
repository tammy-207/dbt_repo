select
    *,
    case
        when pa_outcome ilike 'Approved'
        then 'Approved'
        when pa_outcome ilike '%Denied%'
        then 'Denied'
        else 'None'
    end as pa_actual_outcome,
    UPPER(brand) as BRAND_NAME
from {{ source("postgres_test", "brand_summary") }}