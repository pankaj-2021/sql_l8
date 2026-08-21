

create database selfjoindb;

use selfjoindb;

create table employees(eid int,name varchar(20) , mid int);

insert into employees values(1, 'pankaj' , null), (2, 'ankit' , 1) , (3, 'aman', 1) , (4,'raj',2);

select * from employees;

select e.eid,e.name,e.mid from employees as e;

select m.eid,m.name from employees as m;

select e.eid,e.name,e.mid,m.eid,m.name from employees as e
join employees as m
on e.mid=m.eid;

select e.eid,e.name,e.mid,m.eid,m.name from employees as e
left join employees as m
on e.mid=m.eid;

select e.eid,e.name,e.mid,m.eid,m.name from employees as e
right join employees as m
on e.mid=m.eid;

select e.eid,e.name,e.mid,m.eid,m.name from employees as e
cross join employees as m














