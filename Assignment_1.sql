create database if not exists org_worker;
show databases;
use org_worker;

create table worker(
worker_id int,
first_name varchar(255),
last_name varchar(255),
salary int,
joining_date datetime,
department varchar(255)
);
alter table worker change worker_id worker_id int auto_increment;

INSERT INTO worker VALUES(001,'Rakesh','Singh',85000,'20-08-21 09.00.00','HR');
INSERT INTO worker VALUES(002,'Rupel','Patel',75000,'14-09-21 09.00.00','Admin');
INSERT INTO worker VALUES(003,'Deval','Singhal',30000,'16-09-21 09.00.00','HR');
INSERT INTO worker VALUES(004,'Amitabh','Pandey',50000,'18-10-21 09.00.00','Admin');
INSERT INTO worker VALUES(005,'Vivek','Bhati',450000,'14-11-21 09.00.00','Admin');
INSERT INTO worker VALUES(006,'Vipul','Kim',28000,'15-12-21 09.00.00','Account');
INSERT INTO worker VALUES(007,'Satish','Devnal',74000,'18-08-21 09.00.00','Account');
INSERT INTO worker VALUES(008,'Geetika','Singh',10000,'14-06-21 09.00.00','Admin');

CREATE TABLE Bonus(
        worker_ref_id INT,
        bonus_amount INT,
        bonus_date DATETIME,
        FOREIGN KEY (worker_ref_id)
				REFERENCES worker(worker_id)
		ON DELETE CASCADE
);

INSERT INTO Bonus VALUES(001,5000,'16-02-20');
INSERT INTO Bonus VALUES(002,3000,'16-06-11');
INSERT INTO Bonus VALUES(003,4000,'16-02-20');
INSERT INTO Bonus VALUES(001,4500,'16-02-20');
INSERT INTO Bonus VALUES(002,3500,'16-06-11');

select * from Worker;
delete from Bonus where  WORKER_REF_ID=3; 
select * from bonus;

CREATE TABLE title(
        worker_ref_id INT,
        worker_title varchar(255),
        affected_from DATETIME,
        FOREIGN KEY (worker_ref_id)
				REFERENCES worker(worker_id)
		ON DELETE CASCADE
);

INSERT INTO Title VALUES(001,'Manager','2016-02-20 00:00:00');
INSERT INTO Title VALUES(002,'Executive','2016-06-11 00:00:00');
INSERT INTO Title VALUES(008,'Executive','2016-06-11 00:00:00');
INSERT INTO Title VALUES(005,'Manager','2016-06-11 00:00:00');
INSERT INTO Title VALUES(004,'Asst. Manager','2016-06-11 00:00:00');
INSERT INTO Title VALUES(007,'Executive','2016-06-11 00:00:00');
INSERT INTO Title VALUES(006,'Lead','2016-06-11 00:00:00');
INSERT INTO Title VALUES(003,'Lead','2016-02-20 00:00:00');

select * from Title;
select * from Bonus;
select * from Worker;

# Question_1
select first_name as worker_name from worker;
# Question_2
select distinct department from worker;
# Question_3
select * from Worker order by worker_id desc limit 5;

