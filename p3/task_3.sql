use hw_2;

SELECT 
categories.id as category_id,
categories.name as category_name, 
categories.description as category_description, 
products.id as product_id,
products.name as product_name,
products.supplier_id,
products.unit as product_unit,
products.price as product_price,
suppliers.name as supplier_name,
suppliers.contact as supplier_contact,
suppliers.address as supplier_address,
suppliers.city as supplier_city,
suppliers.postal_code as supplier_postal_code,
suppliers.country as supplier_country,
suppliers.phone as supplier_phone,
order_details.id as order_details_id,
order_details.order_id,
order_details.quantity,
orders.customer_id,
orders.employee_id,
orders.date as order_date,
orders.shipper_id,
shippers.name as shipper_name,
shippers.phone as shipper_phone,
employees.last_name as employee_last_name,
employees.first_name as employee_first_name,
employees.birthdate as employee_birthdate,
employees.photo as employee_photo,
employees.notes as employee_notes,
customers.name as customer_name,
customers.contact as customer_contact,
customers.address as customer_address,
customers.city as customer_city,
customers.postal_code as customer_postal_code,
customers.country as customer_country
FROM categories
INNER JOIN products ON categories.id = products.category_id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN order_details ON order_details.product_id = products.id
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN shippers ON shippers.id = orders.shipper_id
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN customers ON customers.id = orders.customer_id;

