use org_worker;
# Write an SQL query to fetch intersecting records of two tables.
select * from worker 
where worker.worker_id in (select raja_worker.worker_id from raja_worker);

# Write an SQL query to show records from one table that another table does not have.
select * from Worker;
Minus
select * from title;