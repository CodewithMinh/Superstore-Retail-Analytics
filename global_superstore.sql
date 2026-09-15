-- 1. Doanh thu và lợi nhuận thay đổi thế nào theo năm?
select global_superstore.year
	, sum(global_superstore.sales) as total_sales
	, sum(global_superstore.profit) as total_profit
from global_superstore
group by global_superstore.year
order by global_superstore.year;


-- 2. Category nào tạo ra nhiều doanh thu/lợi nhuận nhất?
SELECT
    category,
    total_sales,
    total_profit,
    RANK() OVER (
        ORDER BY total_sales DESC
    ) AS sales_rank
FROM (
    SELECT
        category,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit
    FROM global_superstore
    GROUP BY category
) AS category_performance
ORDER BY sales_rank;


-- 3. Region nào có hiệu quả kinh doanh tốt nhất?
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM global_superstore
GROUP BY region
ORDER BY total_sales DESC;


-- 4. Sản phẩm nào có hiệu quả kinh doanh tốt nhất?
select product_id
	, product_name
	, category
	, sub_category
	, sum(sales) as total_sales
	, sum(profit) as total_profit
	, sum(quantity) as total_quantity
from global_superstore
group by 1,2,3,4
order by total_sales DESC;


-- 5. Discount ảnh hưởng như thế nào đến lợi nhuận?
SELECT
    CASE
        WHEN discount = 0 THEN '0%'
        WHEN discount <= 0.10 THEN '0%-10%'
        WHEN discount <= 0.20 THEN '10%-20%'
        WHEN discount <= 0.30 THEN '20%-30%'
        ELSE '>30%'
    END AS discount_group,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM global_superstore
GROUP BY 1
ORDER BY
    MIN(discount);


-- 6. Segment khách hàng nào mang lại giá trị kinh doanh cao nhất?
SELECT
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM global_superstore
GROUP BY segment
ORDER BY total_profit DESC;


-- 7. Top 10 khách hàng có tổng lợi nhuận cao nhất là ai?
SELECT
    customer_id,
    customer_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM global_superstore
WHERE customer_id IS NOT NULL
GROUP BY
    customer_id,
    customer_name
ORDER BY total_profit DESC
LIMIT 10;


-- 8. Sản phẩm bán chạy nhất trong từng Category là sản phẩm nào?
WITH product_sales AS (
    SELECT
        category,
        product_id,
        product_name,
        SUM(quantity) AS total_quantity,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit
    FROM global_superstore
    WHERE category IS NOT NULL
      AND product_id IS NOT NULL
      AND product_name IS NOT NULL
    GROUP BY
        category,
        product_id,
        product_name
),
ranked_products AS (
    SELECT
        *,
        RANK() OVER (
            PARTITION BY category
            ORDER BY total_quantity DESC
        ) AS rnk
    FROM product_sales
)
SELECT
    category,
    product_id,
    product_name,
    total_quantity,
    total_sales,
    total_profit,
	rnk
FROM ranked_products
WHERE rnk = 1
ORDER BY category;


-- 9. Những sản phẩm nào có doanh thu cao nhưng lại bị lỗ?
SELECT
    product_id,
    product_name,
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM global_superstore
WHERE product_id IS NOT NULL
GROUP BY
    product_id,
    product_name,
    category,
    sub_category
HAVING SUM(profit) < 0
ORDER BY total_sales DESC;


-- 10. Ship Mode nào mang lại hiệu quả kinh doanh tốt nhất?
SELECT
    ship_mode,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_pct,
    ROUND(
        AVG(shipping_cost),
        2
    ) AS avg_shipping_cost
FROM global_superstore
WHERE ship_mode IS NOT NULL
GROUP BY ship_mode
ORDER BY total_profit DESC;