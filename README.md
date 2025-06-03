# Elevate-Labs_Task6

### Sales Trend Analysis: Brazilian E-commerce Dataset
This project performs a Sales Trend Analysis on the Brazilian E-commerce dataset from Kaggle, focusing on monthly revenue and order volume for delivered orders.

Using SQL ( MySQL), the analysis aggregates data from the olist_orders_dataset and olist_order_items_dataset to identify time-based trends. The deliverables include an SQL script to compute metrics and a results table summarizing findings for 2017–2018. The project leverages aggregation techniques (SUM, COUNT, GROUP BY) to support business insights like seasonal sales patterns.

**Key Findings:**

Revenue and order volume peak in November–December

2018 shows growth over 2017, indicating business expansion.

**Dataset**
dataset :  

The Brazilian E-commerce dataset includes:

olist_orders_dataset.csv:

         order_id: Unique order identifier.
         order_purchase_timestamp: Order date (used as order_date).
         order_status: Status (e.g., delivered).

olist_order_items_dataset.csv:

         order_id: Links to orders.
         price: Item price (used for revenue).
         order_item_id: Indicates multiple items per order.

  i have already
* created Database : "olist_ecommerce"
* Create tables for orders_dataset and order_items_dataset using create_tables.
* Imported olist_orders_dataset.csv and olist_order_items_dataset.csv into the respective tables.

#### Analysis Details
**Data Preprocessing**
* Joined olist_orders_dataset and olist_order_items_dataset on order_id to link order dates with item prices.
* Filtered for order_status = 'delivered' ensures only completed orders are counted.
* Limited to 2017–2018 for complete yearly data.

**SQL Techniques**

**Aggregations:**

  SUM(oi.price) for revenue.
  COUNT(DISTINCT o.order_id) for order volume.

**Grouping:** GROUP BY year, month and month_name

**Sorting:** ORDER BY year, month for chronological order.


**Results:**

The script outputs a table with:
* year, month, month_name
* total_revenue: Sum of price for delivered orders.
* order_volume: Count of distinct order_id.
  
Results are saved in Results_Table.csv
  

