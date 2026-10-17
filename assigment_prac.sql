-- SELF PRACTISE        ITI3 ADBMS Practical Assignment 1

-- create  databse and two tables in it
create database practise;
use practise;

create table employee (emp_id int primary key, emp_name varchar(30), city varchar(30), bdate date);
create table investor (inv_no int primary key, inv_name varchar(30), inv_date date, inv_amt int,emp_id int, foreign key (emp_id) references employee (emp_id));

/*ALTER TABLE child_table
ADD CONSTRAINT fk_name
FOREIGN KEY (column_name)
REFERENCES parent_table(parent_column);*/

-- insert 5 rows
insert into employee (emp_id, emp_name, city, bdate) values 
(1, "tom", "pune", "2005-11-28"),
(2, "jerry", "mumbai", "2004-08-19"),
(3, "raj", "goa", "2006-01-04"),
(4, "tina", "dehli", "2005-12-07"),
(5, "seema", "pune", "2005-10-08");

insert into investor (inv_no, inv_name, inv_date, inv_amt, emp_id) values 
(101,"john","2005-12-12",40000,1),
(102,"jax","2003-02-19",20000,2),
(103,"barney","2006-08-25",60000,3),
(104,"tanvi","2002-09-15",60000,4),
(105,"jahnvi","2005-05-08",30000,5);

--  Display all the information in the Employee table.
select * from employee;

-- Add columns ‘Age’ and ‘Salary’ to the Employee table; apply check constraints for
-- (Age<=50 and Salary>=10000).

alter table employee add age int, add  salary int;
alter table employee add constraint chk_age check (age<=50);
alter table employee add constraint chk_salary check (salary>=10000);

-- Add a column ‘Age’ to the Investor table.
alter table investor add age int;

-- Change the data type of inv_name from varchar to text in the Investor table
alter table investor modify inv_name text;

-- Change the name of the column/field Emp_id to E_id.
alter table employee rename column emp_id to eid;

-- Update the city of Emp_id-4 to the current city, Nagpur.
update employee set city="nagpur" where eid=4;
select* from employee;

-- Delete one record from the Investor table.
delete from investor where inv_no=101;
select* from investor;

-- Drop the column ‘Age’ from the Investor table.
alter table investor drop age ;

-- Drop the CHECK constraint on the ‘Age’ column from the Employee table.
alter table employee drop constraint chk_age;
show create table employee;

-- truncate
truncate table investor;

-- rename table
rename table employee to Employees;