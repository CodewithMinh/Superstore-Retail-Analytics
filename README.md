# Superstore-Retail-Analytics

<img width="1908" height="997" alt="image" src="https://github.com/user-attachments/assets/d6b18e64-1f61-4444-9343-7db36dd3a780" />

Cleaning and exploring retail sales data with Python, analyzing revenue, profitability, customer and product performance using SQL, and building an interactive Power BI dashboard.

## 1. Project Overview

This project analyzes the Superstore retail dataset to understand business performance across different years, regions, customer segments, product categories, and shipping methods.

The project follows an end-to-end data analytics workflow, from raw data cleaning and exploratory data analysis to SQL-based business analysis and interactive Power BI dashboard development.

## 2. Business Problem

A global retail business needs to understand what drives revenue and profitability across its products, customers, regions, and operations.

The analysis aims to answer key business questions such as:

* How do revenue and profit change over time?
* Which product categories generate the highest revenue and profit?
* Which regions perform best?
* Which products generate the highest sales and profit?
* How does discount level affect profitability?
* Which customer segment creates the most business value?
* Which customers generate the highest profit?
* Which products sell the most within each category?
* Which products generate high revenue but result in losses?
* Which shipping methods provide the best business performance?

## 3. Dataset

The raw dataset contains **51,290 records and 27 columns** covering sales transactions across customers, products, regions, markets, and shipping methods.

Key fields include:

* Order Date
* Ship Date
* Customer ID
* Customer Name
* Product ID
* Product Name
* Category
* Sub-Category
* Segment
* Sales
* Profit
* Quantity
* Discount
* Region
* Country
* State
* Ship Mode
* Shipping Cost

## 4. Data Preparation & EDA

Python was used for data inspection, cleaning, validation, and exploratory analysis.

### Data Cleaning

The following checks and transformations were performed:

* Inspected dataset structure, data types, and descriptive statistics.
* Checked for duplicate records.
* Checked for missing values.
* Removed the redundant `记录数` column.
* Converted `Order.Date` and `Ship.Date` into datetime format.
* Validated Sales, Profit, Discount, Quantity, and Shipping Cost values.
* Checked duplicate `Row.ID`, Customer ID, and Product ID values.
* Reviewed categorical distributions across Category, Segment, Market, and Ship Mode.

### Exploratory Data Analysis

EDA included:

* Distribution analysis of Sales, Profit, Quantity, Discount, and Shipping Cost.
* Boxplot analysis to identify potential outliers.
* Correlation analysis between numerical variables.
* Category, segment, market, and shipping-mode distribution analysis.

Outliers were identified during EDA and reviewed as part of the analysis rather than automatically removing them.

## 5. SQL Analysis

SQL was used to answer business questions and generate aggregated datasets for analysis.

The analysis includes:

1. Revenue and profit trends by year.
2. Revenue and profit performance by category.
3. Business performance by region.
4. Product-level sales, profit, and quantity analysis.
5. Profitability across discount levels.
6. Customer segment performance.
7. Top 10 customers by total profit.
8. Best-selling product within each category.
9. High-revenue products generating negative profit.
10. Shipping-mode performance.

The SQL analysis uses aggregation, filtering, ranking, CTEs, `CASE WHEN`, `RANK()`, `GROUP BY`, and other analytical SQL techniques.

## 6. Key Metrics

The Power BI dashboard uses business-focused KPIs including:

* Total Revenue
* Total Profit
* Profit Margin
* Total Orders
* Total Customers
* Average Order Value (AOV)
* Total Quantity
* Profit per Unit
* Revenue Share

These metrics are used across the dashboard to evaluate overall business performance and identify areas requiring attention.

## 7. Power BI Dashboard

The dashboard is divided into three analytical pages.

### Overview

Provides a high-level view of:

* Revenue and profit trends
* Profit margin trends
* Regional performance
* Segment performance
* Revenue share by category
* Key business insights and actions

![Overview](screenshots/overview.png)

### Customer Analysis

Focuses on customer and segment performance, including:

* Customer KPIs
* Orders by segment
* Revenue and profit by segment
* Average Order Value by category
* Customer distribution by country
* Regional customer performance
* Customer-level detail

![Customer Analysis](screenshots/customer-analysis.png)

### Product Analysis

Focuses on product and category performance, including:

* Revenue and profit KPIs
* Quantity sold
* Profit per unit
* Revenue share by category
* Top-selling products
* Loss-making products

![Product Analysis](screenshots/product-analysis.png)

## 8. Key Insights & Actions

### Insight 1 — Revenue growth does not automatically mean stronger profitability

Revenue and profit should be evaluated together because higher sales volume does not necessarily translate into proportional profit growth.

**Action:** Monitor profit margin alongside revenue when evaluating yearly and regional performance.

### Insight 2 — Discount levels can have a significant impact on profitability

The SQL analysis compares revenue, profit, and profit margin across different discount ranges, allowing high-discount segments to be evaluated against their profitability.

**Action:** Review high-discount products and categories to identify cases where additional sales volume is not generating sufficient profit.

### Insight 3 — High-revenue products are not always profitable

The analysis specifically identifies products with high sales but negative total profit.

**Action:** Review pricing, discounting, product costs, and shipping-related expenses for loss-making products before increasing their sales volume.

## 9. Tools & Technologies

* **Python** — Data cleaning, validation, EDA
* **Pandas / NumPy** — Data manipulation and analysis
* **Matplotlib / Seaborn** — Exploratory visualization
* **SQL** — Business analysis and aggregation
* **Power BI** — Interactive dashboard development
* **DAX** — KPI and analytical measures
* **Git / GitHub** — Version control and project portfolio

## 10. Repository Structure

```text
superstore-retail-analytics/
│
├── README.md
│
├── data/
│   ├── superstore.csv
│   └── superstore_cleaned.csv
│
├── python/
│   └── superstore_project.ipynb
│
├── sql/
│   └── global_superstore.sql
│
├── dashboard/
│   └── superstore.pbix
│
└── screenshots/
    ├── overview.png
    ├── customer-analysis.png
    └── product-analysis.png
```

## 11. Project Workflow

```text
Raw Data
   ↓
Data Inspection
   ↓
Data Cleaning & Validation
   ↓
Exploratory Data Analysis
   ↓
SQL Business Analysis
   ↓
DAX Measures
   ↓
Power BI Dashboard
   ↓
Business Insights & Actions
```

## 12. Conclusion

This project demonstrates an end-to-end Data Analyst workflow using Python, SQL, and Power BI to transform raw retail transaction data into business-focused analysis and interactive dashboards.

The analysis focuses not only on reporting sales performance, but also on understanding profitability, customer segments, product performance, discount impact, and operational factors that can support business decision-making.
