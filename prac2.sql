show databases;
use college_db;
show create table student;
show create table employee;
desc employee;
desc student;
alter table employee modify emp_id int primary key;

rename table student_details to student;
alter table student rename column joining_year to j_year;

alter table employee add check (age>18); -- add constraint

create table Student_details(id int, name varchar(30), marks int, check (marks between 0 and 100)); -- add constraint
show create table Student_details;
alter table Student_details add age int;
alter table Student_details add constraint chk_age check (age>18); -- add constraint

alter table employee drop check employee_chk_1; -- 
alter table Student_details drop check chk_age;



