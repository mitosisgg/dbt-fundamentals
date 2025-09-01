with film as (
    select * from {{ ref("stg_pagila__film") }}
),
actor as (
    select * from {{ ref("stg_pagila__actor") }}
),
film_actor as (
    select * from {{ ref("stg_pagila__film_actor") }}
),
combined as (
    select 
        f.film_id,
        f.title,
        f.release_year,
        f.rating,
        a.first_name,
        a.last_name
    from film f
    join film_actor fa on fa.film_id = f.film_id
    join actor a on a.actor_id = fa.actor_id
)

select * from combined