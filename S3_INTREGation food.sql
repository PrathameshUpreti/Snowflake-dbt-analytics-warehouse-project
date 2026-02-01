create or replace STORAGE INTEGRATION s3_food
TYPE= EXTERNAL_STAGE
STORAGE_PROVIDER= 'S3'
ENABLED=TRUE
STORAGE_AWS_ROLE_ARN='arn:aws:iam::396541281648:role/snowflake-dbt'
STORAGE_ALLOWED_LOCATIONS= ('s3://food-delivery-lake/raw/')
COMMENT= 'Optional Commet';

desc integration s3_food;