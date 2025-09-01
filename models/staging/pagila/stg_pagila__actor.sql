with 

source as (

    select * from {{ source('pagila', 'actor') }}

),

renamed as (

    select
        actor_id,
        first_name,
        last_name,
        last_update

    from source

)

select * from renamed
