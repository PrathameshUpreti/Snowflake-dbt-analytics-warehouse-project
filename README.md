# 🍔 Food Delivery Analytics Warehouse (Snowflake + dbt)

An end-to-end Analytics Engineering project that builds a modern data warehouse using Snowflake and dbt.

This project demonstrates how raw data is transformed into analytics-ready tables using staging, marts, snapshots, and KPI layers.

---

## 🚀 Architecture

S3 → Snowflake (RAW) → STAGING → SNAPSHOTS (SCD2) → MARTS → ANALYTICS → BI Dashboard

### Layers

1. **RAW**
   - Ingested from S3 using COPY INTO

2. **STAGING**
   - Data cleaning & standardization
   - Views only

3. **SNAPSHOTS**
   - SCD Type 2 history tracking
   - Customer/Rider/Restaurant changes tracked over time

4. **MARTS**
   - Star schema (Fact + Dimensions)
   - Incremental fact models

5. **ANALYTICS**
   - Pre-aggregated KPI tables for dashboards

---

## 🧱 Tech Stack

- Snowflake (Data Warehouse)
- dbt (Transformations)
- SQL
- Power BI (Visualization)
- Git/GitHub

---

## 📂 Project Structure
models/
├── staging/
├── marts/
├── analytics/
└── sources.yml

snapshots/
tests/
macros/
snowflake/ (setup scripts)

dbt_project.yml
README.md


---

## 📊 Data Models

### Staging
- stg_customers
- stg_orders
- stg_riders
- stg_restaurants

### Snapshots (SCD2)
- customers_snapshot
- riders_snapshot
- restaurants_snapshot

### Marts
- dim_customers
- dim_riders
- dim_restaurants
- fct_orders (incremental)

### Analytics
- daily_kpis
- city_performance
- rider_performance

---

## ⚡ Key Features

- Modular dbt architecture
- Incremental fact table for performance
- SCD Type 2 snapshots for history tracking
- Star schema design
- Automated data quality tests
- Clean lineage and dependency management
- Production-ready folder structure

---

## 🛠️ Setup Instructions

### 1. Install dbt


pip install dbt-snowflake


### 2. Configure profiles.yml
Create your local `profiles.yml` with Snowflake credentials.

### 3. Run project


dbt snapshot
dbt build
dbt test


### 4. View lineage


dbt docs generate
dbt docs serve


---

## 📈 Example Analytics Questions Answered

- Daily revenue trends
- Orders per city
- Rider performance metrics
- Historical customer location changes
- Restaurant rating history

---

## 🎯 What This Project Demonstrates

This project showcases:

- Data Engineering (Snowflake ingestion)
- Analytics Engineering (dbt transformations)
- Data Modeling (star schema)
- Historical tracking (SCD2)
- Performance optimization (incremental models)
- BI-ready analytics tables

---

## 🧑‍💻 Author

Prathamesh Upreti  
Aspiring Analytics / Data Engineer

