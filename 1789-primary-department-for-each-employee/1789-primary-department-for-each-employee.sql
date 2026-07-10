# Write your MySQL query statement below
SELECT employee_id , department_id  
FROM Employee 
WHERE primary_flag = 'Y'
UNION
-- 2. query for emp having only single dept entry
SELECT employee_id , department_id 
FROM Employee 
WHERE employee_id IN ( 
    SELECT employee_id 
    FROM Employee 
    GROUP BY employee_id 
    HAVING COUNT(*) = 1
);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna