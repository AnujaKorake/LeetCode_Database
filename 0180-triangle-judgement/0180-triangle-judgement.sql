# Write your MySQL query statement below
select *,
    CASE 
        when  x + y > z and x+z > y and y + z > x
        then 'Yes'
        else 'No'
    END as triangle
from Triangle;


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna