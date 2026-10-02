use hw_2;

SELECT COUNT(*) AS row_count
FROM categories
INNER JOIN products ON categories.id = products.category_id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN order_details ON order_details.product_id = products.id
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN customers ON customers.id = orders.customer_id;

SELECT COUNT(*)
FROM categories
INNER JOIN products ON categories.id = products.category_id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN order_details ON order_details.product_id = products.id
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
RIGHT JOIN customers ON customers.id = orders.customer_id;

SELECT 
categories.name as category_name, 
COUNT(*) as row_count, 
AVG(order_details.quantity) as quantity
FROM categories
INNER JOIN products ON categories.id = products.category_id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN order_details ON order_details.product_id = products.id
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN customers ON customers.id = orders.customer_id
WHERE employees.employee_id > 3 AND employees.employee_id <= 10
GROUP BY categories.name
HAVING quantity > 21
ORDER BY row_count DESC
LIMIT 4 OFFSET 1;


