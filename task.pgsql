--1
CREATE OR REPLACE FUNCTION get_average_product_price()
RETURNS NUMERIC
AS $$
    SELECT AVG(unit_price) FROM products;
$$ LANGUAGE sql;
SELECT get_average_product_price();

--2
CREATE OR REPLACE FUNCTION get_dif_employees()
RETURNS TABLE (
    youngest_employee_id INT,
    youngest_employee_birth_date DATE,
    oldest_employee_id INT,
    oldest_employee_birth_date DATE
)
AS $$
    SELECT 
        MIN(employee_id) AS youngest_employee_id,
        MIN(birth_date) AS youngest_employee_birth_date,
        MAX(employee_id) AS oldest_employee_id,
        MAX(birth_date) AS oldest_employee_birth_date
    FROM employees;
$$ LANGUAGE sql;
SELECT * FROM get_dif_employees();
