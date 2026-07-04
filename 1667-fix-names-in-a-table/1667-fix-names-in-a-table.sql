# Write your MySQL query statement below
select user_id,concat(upper(substr(name,1,1)),lower(substr(name,2,length(name)))) as name 
from Users order by user_id

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna