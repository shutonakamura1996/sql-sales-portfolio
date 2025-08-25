-- 1) Total revenue
SELECT ROUND(SUM(unit_price * quantity * (1 - discount)), 2) AS total_revenue
FROM order_items;

-- 2) Average order value
WITH order_revenue AS (
  SELECT order_id, SUM(unit_price * quantity * (1 - discount)) AS rev
  FROM order_items GROUP BY order_id
)
SELECT ROUND(AVG(rev),2) AS avg_order_value FROM order_revenue;

-- 3) Revenue by month
SELECT strftime('%Y-%m', o.order_date) AS year_month,
       ROUND(SUM(oi.unit_price*oi.quantity*(1-oi.discount)),2) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id=o.order_id
GROUP BY year_month
ORDER BY year_month;

-- 4) Top 5 customers by revenue
SELECT c.company_name,
       ROUND(SUM(oi.unit_price*oi.quantity*(1-oi.discount)),2) AS revenue
FROM orders o
JOIN customers c ON c.customer_id=o.customer_id
JOIN order_items oi ON oi.order_id=o.order_id
GROUP BY c.company_name
ORDER BY revenue DESC LIMIT 5;

-- 5) Best-selling products
SELECT p.product_name,
       SUM(oi.quantity) AS units_sold,
       ROUND(SUM(oi.unit_price*oi.quantity*(1-oi.discount)),2) AS revenue
FROM order_items oi
JOIN products p ON p.product_id=oi.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- 6) Revenue by category
SELECT cat.category_name,
       ROUND(SUM(oi.unit_price*oi.quantity*(1-oi.discount)),2) AS revenue
FROM order_items oi
JOIN products p ON p.product_id=oi.product_id
JOIN categories cat ON cat.category_id=p.category_id
GROUP BY cat.category_name
ORDER BY revenue DESC;
