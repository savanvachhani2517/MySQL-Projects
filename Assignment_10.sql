use org_worker;
# Write an SQL query to determine the 5th highest salary without using TOP or limit method.
SELECT 
    Salary
FROM
    Worker W1
WHERE
    5 = (SELECT 
            COUNT(DISTINCT (W2.salary))
        FROM
            Worker W2
        WHERE
            W2.Salary >= W1.Salary);

# Write an SQL query to fetch the list of employees with the same salary.
SELECT DISTINCT
    W.WORKER_ID, W.FIRST_NAME, W.Salary
FROM
    Worker W,
    Worker W1
WHERE
    W.Salary = W1.Salary
        AND W.WORKER_ID != W1.WORKER_ID
        