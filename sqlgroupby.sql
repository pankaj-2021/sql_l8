use world;

select distinct(continent) from country;

select continent from country group by continent;

select continent from country group by continent;

select distinct(continent) ,name from country;

select count(name) from country where continent ='asia';

select count(name) from country where continent ='africa';

select continent, count(name) from country group by continent;

select name, count(name) from country group by name;

select * from city where district='zuid-holland';

select name from city where district='zuid-holland';

select count(name) from city where district='zuid-holland';

select district,count(district) from city group by district;

select district,count(district), sum(population) from city group by district;

select * from city where countrycode='afg';

select count(name) from city where countrycode='afg';

select countrycode,count(name) from city group by countrycode;

select * from country;

select count(name) from country where LifeExpectancy between 71.1 and 83.5;

select name,count(name) from country where LifeExpectancy between 71.1 and 83.5;

select sum(population) from country where indepyear>=1990;

select count(name) from country where indepyear is null;

select region,count(name),sum(surfacearea) from country group by region;

select continent, count(name) from country group by continent;

select continent, region,count(name) from country group by continent,region;















