use org_worker;
select first_name from worker;
# Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
select substring(first_name,1,3) as short_name from Worker;

# Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
select instr(first_name,'a') from Worker where first_name ='Amitabh';

# Write an SQL query to print the name of employees having the highest salary in each department.
SELECT 
    worker_id, first_name, last_name, MAX(salary), department
FROM
    worker
GROUP BY department;