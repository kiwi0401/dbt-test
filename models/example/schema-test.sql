{{ config(materialized='view') }}

select
    table_schema,
    table_name,
    column_name,
    data_type,
    is_nullable,
    ordinal_position
from information_schema.columns
where table_schema not in ('information_schema', 'pg_catalog')
order by
    table_schema,
    table_name,
    ordinal_position
