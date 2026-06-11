-- This query analyzes product profit margins using a subquery
SELECT 
    product_name,
    category,
    cost_price,
    selling_price,
    (selling_price - cost_price) AS raw_profit
FROM 
    inventory_table
WHERE 
    (selling_price - cost_price) > (
        SELECT AVG(selling_price - cost_price) 
        FROM inventory_table
    );
