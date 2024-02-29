
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
where id = 1


-- insert into {{ ref('my_first_dbt_model') }} (id)
-- values (2), (3);
