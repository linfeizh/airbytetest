
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with pro_model as (

    select `商品标题` as title,`型号` as model, `商品ID` as id from `竞品型号匹配表`

)

select *
from pro_model

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
