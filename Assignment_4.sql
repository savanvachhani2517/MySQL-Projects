use org_worker;
#Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select replace(first_name,'a','A'), first_name from worker;

# Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by first_name asc, department desc;

#Write an SQL query to fetch the names of workers who earn the highest salary.
select first_name, last_name,max(salary) from worker;

#Write an SQL query to fetch the names of workers who earn the highest salary.
select * from worker where salary<50000;