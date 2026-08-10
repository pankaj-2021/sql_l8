
use world;

show tables;

describe city;

select * from city;

select district , population , population+1999 from city;

select * from city where name = 'kabul';

select district, population, countrycode from city where countrycode= 'nld';

 select name, district, population, countrycode from city where countrycode= 'ind' and population>2000000;
 
 select * from city where population>100000 and population<150000;
 
 select * from city where population = 129170 or population = 117196;
 
  select * from city where name like 'k%';
  
  select * from city where name like '%b';
  
   select * from city where name like 'k%a';
   
select * from city where name like '%a%';

 select * from city where name like 'a__';
 
  select * from city where name like 'k__%';
  
   select * from city where name like 'k%_';
   
    select * from city where name like '_a%_';
    
     select name, population from city where name like '%e%';
     
  select name, population from city where name like '%b_';
  
   select name, population from city where name like '_a%r_';
   
    select name, population from city where name like '%aa%';
    
select name, population from city where name like '_%e_e%_';
    
    