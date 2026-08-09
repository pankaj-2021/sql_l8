
show databases;

use world;

describe country;

select * from country;

select name, continent from country;

select * from country
where continent='Asia';

select * from country
where name='india';

select * from country
where continent='europe';

select * from country where continent='europe'
or indepyear>1900;

select code, name from country where continent='africa' and region ='central africa';

select name, continent, population from country where continent='asia' or continent='africa';
 
select name, region, population, population+1.1 from country where indepyear>1950