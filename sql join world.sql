

use world;

select * from city;

select * from country;

select c.id, c.name ,c.countrycode from city as c;

select cn.code, cn.name from country as cn;

select c.id, c.name ,c.countrycode , cn.code, cn.name from city as c
join country as cn;

select c.id, c.name ,c.countrycode , cn.code, cn.name from city as c
join country as cn
on c.countrycode=cn.code;

select c.id, c.name ,c.countrycode , cn.code, cn.name from city as c
left join country as cn
on c.countrycode=cn.code;

select c.id, c.name ,c.countrycode , cn.code, cn.name from city as c
right join country as cn
on c.countrycode=cn.code;

select c.id, c.name ,c.countrycode , cn.code, cn.name from city as c
cross join country as cn;

select count(*) from city;

select count(*) from country;

select count(*) from city as a join country as cn;

select c.id, c.name ,c.countrycode , cn.code, cn.name from city as c
join country as cn
on c.countrycode=cn.code;

select c.id, c.name ,c.countrycode , cn.code, cn.name from city as c
natural join country as cn













