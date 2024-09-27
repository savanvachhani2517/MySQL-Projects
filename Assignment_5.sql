use org_worker;
select*from worker;
insert into worker(worker_id,first_name,last_name,salary,joining_date,department)
values(9,'Vipul','sutariya',65000,'19-08-21 9:00:00', 'HR');
insert into worker(worker_id,first_name,last_name,salary,joining_date,department)
values(10,'Satish','Nehara',8900,'19-07-21 9:00:00','admin');
 # Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from worker table
 select * from worker where first_name not in ('Vipul','Satish');
 
# Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from Worker where FIRST_NAME like '_____h';

# Write a query to validate Email of Employee.
select * from EMPLOYE where EMAIL like '%@gmail.com';