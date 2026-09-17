# Superstore-Retail-Analytics

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
The raw dataset contains 51,290 records and 27 columns covering sales transactions across customers, products, regions, markets, and shipping methods.
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
* Removed the redundant 记录数 column.
* Converted Order.Date and Ship.Date into datetime format.
* Validated Sales, Profit, Discount, Quantity, and Shipping Cost values.
* Checked duplicate Row.ID, Customer ID, and Product ID values.
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








