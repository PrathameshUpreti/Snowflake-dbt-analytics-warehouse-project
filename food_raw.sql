USE DATABASE food_db;
use warehouse food_wh;
USE SCHEMA raw;

create or replace stage food_stage
url='s3://food-delivery-lake/raw/'
STORAGE_INTEGRATION= s3_food
FILE_FORMAT = (TYPE = CSV SKIP_HEADER = 1); 

LIST @food_stage

CREATE OR REPLACE TABLE customers (
    customer_id INT,
    email STRING,
    city STRING,
    age INT,
    signup_date DATE
);
CREATE OR REPLACE TABLE restaurants (
    restaurant_id INT,
    name STRING,
    city STRING,
    cuisine STRING,
    rating FLOAT
);
CREATE OR REPLACE TABLE riders (
    rider_id INT,
    city STRING,
    vehicle_type STRING,
    status STRING
);

CREATE OR REPLACE TABLE orders (
    order_id INT,
    customer_id INT,
    restaurant_id INT,
    rider_id INT,
    order_ts TIMESTAMP,
    amount FLOAT,
    payment_method STRING,
    status STRING
);


COPY INTO customers FROM @food_stage/customers.csv;
COPY INTO restaurants FROM @food_stage/restaurants.csv;
COPY INTO riders FROM @food_stage/riders.csv;
COPY INTO orders FROM @food_stage/orders.csv;

SELECT COUNT(*) FROM raw.orders;


select * from marts.dim_restaurants

select * from analytics.city_performance