-- creating a database
create database company;
-- to use this database
use company;
-- creating a database
create table employee(
employeeid int, name varchar(20),gender varchar(20), salary int,department varchar(50),experience int);
insert into employee values(1, "sagar wavhal","male", 35000, "boss", 8),(2, "tessa", "female", 75000, "finance", 3),(3, "bob", "male", 28000, "hr", 5), (4, "abhi wavhal","male",95000,"it",2), (5, "priya sharma","female",45000,"it",2), (6,"nisha","female",55000,"marketing",4), (7,"rahul","male",65000,"sales",5), (8,"vikram","male",75000,"finance",2),(9,"aarti","female",50000,"it",3);

--  question -- 
--   1. find departments with an sum salary greater than a 80000;
select department, sum(salary) as totalsalary
from employee
group by department
having sum(salary) > 80000;

--   2. find departments with an average salary greater than a certain 50000; 
select department, avg(salary) as averagesalary
from employee
group by department
having avg(salary) > 50000;

--   3. find departments with more than 2 employees;
select department, count(*) as totalemployees 
from employee
group by department
having count(*) > 2; 

--   4.find departments with more than 3 employees and an average salary greater than 70000;
select department, count(*) as totalemployees, avg(salary) as averagesalary
from employee
group by department
having count(*) >3
and avg(salary) >70000; 
 