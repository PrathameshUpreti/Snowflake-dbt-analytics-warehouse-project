{% snapshot  rider_snapshot %}

{{
    config(
        target_schema= 'snapshots',
        unique_key='rider_id',
        strategy='check',
        check_cols= ['city','vehicle_type','rider_status']
        
        )
}}

select * from {{ref('stg_riders')}}

{% endsnapshot %}