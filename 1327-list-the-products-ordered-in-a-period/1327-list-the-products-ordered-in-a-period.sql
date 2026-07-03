# Write your MySQL query statement below
select p.product_name, sum(o.unit) as unit
from Products p
join Orders o on p.product_id = o.product_id
where order_date like '2020-02%' 
group by p.product_id 
having sum(unit) >= 100;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna