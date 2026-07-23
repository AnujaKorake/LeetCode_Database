# Write your MySQL query statement below
SELECT 
    Department.name AS Department,
    ranking.name AS Employee,
    ranking.salary AS Salary
FROM (
    SELECT
        name,
        salary,
        departmentid,
        DENSE_RANK() OVER(
            PARTITION BY departmentId
            ORDER BY Salary DESC
        ) AS salary_rank
    FROM Employee
) AS ranking
JOIN Department
ON ranking.departmentId = Department.id
WHERE salary_rank <= 3
;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna