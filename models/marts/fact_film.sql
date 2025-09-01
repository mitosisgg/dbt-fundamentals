with film as (
    select * from {{ ref("stg_public__film") }}
)

select * from film