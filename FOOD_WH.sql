CREATE DATABASE food_db;

create warehouse food_wh
with warehouse_size='XSMALL'
AUTO_SUSPEND=60
AUTO_RESUME=TRUE;


use database food_db;
use warehouse food_wh;
create schema raw;

