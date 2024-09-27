use org_worker;
# Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(first_name) from worker;
select first_name from worker;

# Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length
select distinct length(department) as length, department from worker;

# Write an SQL query to fetch nth max salaries from a table
select SALARY from Worker order by SALARY desc limit 4,1;
# Limit clause has two components, First component is to skip  number of rows from top and second component is display number of rows we want. 