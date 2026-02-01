{% snapshot restaurants_snapshot %}

{{
    config(
        target_schema='snapshots',

        unique_key='restaurant_id',
        strategy='check',

        check_cols=['restaurant_name','city','cuisine','rating']
    )
}}

select *
from {{ ref('stg_restaurants') }}

{% endsnapshot %}
