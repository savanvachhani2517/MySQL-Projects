use org_worker;
# Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;

# Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select * from title;
select worker_title,affected_from,count(*) from title group by worker_title, affected_from having count(*)>1;

# How to remove duplicate rows from Employees table.
# Solution:The duplicate rows can be removed by DELETE FROM syntax;