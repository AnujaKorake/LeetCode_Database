# Write your MySQL query statement below
with cte as(
select product_id,max(change_date) change_date from products where change_date<='2019-08-16' group by
product_id)
select p.product_id,p.new_price price from
products p right outer join cte
on p.product_id=cte.product_id
and p.change_Date=cte.change_date

union

select p.product_id,10 price from
products p where p.product_id not in(select product_id from cte)

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna