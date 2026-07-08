# Write your MySQL query statement below
SELECT id,
CASE WHEN id%2 = 0 THEN
LAG(student,1) OVER (ORDER BY id)
WHEN id%2 = 1 THEN
IFNULL(LEAD(student,1) OVER (ORDER BY id),student)
END AS student
FROM Seat


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna