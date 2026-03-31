# Write your MySQL query statement below
(
select u.name as results from Users as u
join MovieRating as m on u.user_id = m.user_id
group by u.user_id, u.name
order by u.name asc, count(m.movie_id) desc
limit 1
) 
union all
(
    select m.title as results from Movies m
    join MovieRating mr on m.movie_id = mr.movie_id
    where mr.created_at between '2020-02-01' and '2020-02-29'
    group by mr.movie_id, m.title
    order by avg(rating) desc, m.title asc
    limit 1
)
