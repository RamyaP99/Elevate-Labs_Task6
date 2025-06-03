
SELECT
    YEAR(o.order_purchase_timestamp) AS order_year,
    MONTH(o.order_purchase_timestamp) AS order_month,
    MONTHNAME(o.order_purchase_timestamp) AS month_name,
    ROUND(SUM(oi.price), 2) AS monthly_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM
    olist_ecommerce.olist_orders_dataset AS o
JOIN
    olist_ecommerce.olist_order_items_dataset AS oi ON o.order_id = oi.order_id
where
    o.order_status = 'delivered'
    AND YEAR(o.order_purchase_timestamp) IN (2017, 2018)
GROUP BY
    order_year,
    order_month,
    MONTHNAME(o.order_purchase_timestamp)
ORDER BY
    order_year,
    order_month;
