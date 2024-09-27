use org_worker;
# Write an SQL query to show only odd rows from a table.
select * from worker where MOD(worker_id,2)<>0;

#Write an SQL query to clone a new table from another table.
Create table raja_worker like worker;
