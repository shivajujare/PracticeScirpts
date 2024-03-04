-- Databricks notebook source
create database retail;
show databases;

-- COMMAND ----------

create external table retail.orders_rejects
(
    order_id    string,
    order_date string,
    customer_id string,
    order_status string,
    ingest_date string
)USING PARQUET
PARTITIONED BY (ingest_date)
OPTIONS (path '/mnt/retailadls218/rejects/orders/')


-- COMMAND ----------

use database retail;
REFRESH TABLE orders_rejects;
select * from orders_rejects;

-- COMMAND ----------

drop  table retail.orders_rejects

-- COMMAND ----------


