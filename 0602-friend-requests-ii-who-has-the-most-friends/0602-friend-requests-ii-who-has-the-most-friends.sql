# Write your MySQL query statement below
WITH CTE AS(
SELECT requester_id , accepter_id
FROM RequestAccepted
UNION ALL
SELECT accepter_id , requester_id
FROM RequestAccepted
)
SELECT requester_id id, count(accepter_id) num
FROM CTE
group by 1
ORDER BY 2 DESC
LIMIT 1

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna