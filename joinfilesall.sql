create database joindb;

use joindb;

CREATE TABLE Departments ( 
DepartmentID INT PRIMARY KEY, 
DepartmentName VARCHAR(50) 
);

INSERT INTO Departments (DepartmentID, DepartmentName) 
VALUES 
(101, 'HR'), 
(102, 'IT'), 
(103, 'Finance'), 
(104, 'Marketing');

CREATE TABLE Employees ( 
EmployeeID INT PRIMARY KEY, 
EmployeeName VARCHAR(50), 
DepartmentID INT 
); 
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID) 
VALUES 
(1, 'Alice', 101), 
(2, 'Bob', 102), 
(3, 'Charlie', 105),   -- No matching department 
(4, 'David', NULL),    -- No department assigned 
(5, 'Eva', 101);

select * from departments;

select * from employees;

select e.employeeid,e.employeename,e.departmentid from employees as e;

select d.departmentid, d.departmentname from departments as d;

select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname
 from employees as e join departments as d;
 

-- old syntax


select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from employees as e join departments as d
where e.departmentid=d.departmentid;     

 
-- new syntax


select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from employees as e join departments as d
on e.departmentid=d.departmentid;  


-- using( )

select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from employees as e join departments as d
using(departmentid);  


select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from employees as e left join departments as d
on e.departmentid=d.departmentid;    

select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from  departments as d left join employees as e  
on e.departmentid=d.departmentid;   


select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from employees as e  right join departments as d
on e.departmentid=d.departmentid;  

select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from  departments as d right join employees as e  
on e.departmentid=d.departmentid;  

 select e.employeeid,e.employeename,e.departmentid ,d.departmentid, d.departmentname 
from employees as e  natural join departments as d




                       








