
CREATE TABLE online_sales (
    order_id    INT,
    order_date  DATE,
    amount      DECIMAL(10,2),
    product_id  INT
);

SELECT
    EXTRACT(YEAR  FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount)                   AS total_revenue,
    COUNT(DISTINCT order_id)      AS total_orders
FROM online_sales
GROUP BY 
    EXTRACT(YEAR  FROM order_date), 
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;
