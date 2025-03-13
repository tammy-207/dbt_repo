select
patent_number, patent_date, patent_title , LENGTH(patent_title) as patent_title_length
from {{ source("patents_transform", "patents") }} where not _fivetran_deleted 