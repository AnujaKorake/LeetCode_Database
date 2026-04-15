# Write your MySQL query statement below
select 
    d.name as Department, 
    e.name as Employee, 
    e.salary as Salary 
from Employee e
join Department d on d.id = e.departmentId
where (e.departmentID, e.salary) in (
    select departmentID, max(salary) 
    from Employee
    group by departmentID
);