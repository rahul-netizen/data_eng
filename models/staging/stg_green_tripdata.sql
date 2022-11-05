{{ config(materialized='table') }}

-- select * from trip_data_all.green_trip_data;
select * from {{ source('staging','external_green_tripdata')}}
limit 100