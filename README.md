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

