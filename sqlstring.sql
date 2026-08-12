use world;

show tables;

select name ,continent from country;

select name ,continent , concat(continent, 'have' , name ,'country') from country;

select name ,continent , concat_ws(' ',continent, 'have' , name ,'country') from country;

select name ,upper(name),substr(name,2) from country;

select name ,substr(name,2), substr(name,2,4) from country;

select name ,substr(name,2), substr(name,2,4) from country where name ='Colombia';

select name ,substr(name,-4) from country where name ='colombia';

select name ,substr(name,-4,2) from country where name ='colombia';

select name ,length(name), char_length(name) from country where name ='colombia';

select name, replace(name,'a','@') from country;

select trim('  hel lo  ');

select name, lpad(name,6,'@') from country;

select name, rpad(name,7,'@') from country;

select now();

select now(), adddate(now(),2);

select * from sakila.payment;

select payment_date from sakila.payment;

select payment_date , adddate(payment_date,3) from sakila.payment;

select payment_date , adddate(payment_date,-6) from sakila.payment;

select payment_date , adddate(payment_date, interval 1 month) from sakila.payment;

select payment_date , adddate(payment_date, interval 4 year) from sakila.payment;

select payment_date , extract(year from payment_date) from sakila.payment;

select payment_date , extract(month from payment_date) from sakila.payment;

select payment_date , extract(day from payment_date) from sakila.payment;

select payment_date , extract(hour from payment_date) from sakila.payment;

select payment_date , extract(minute from payment_date) from sakila.payment;

select now(), date_format( now()  ,'%m');


select now(), date_format( now()  ,'%M');

select now(), date_format( now()  ,'%w');

select now(), date_format( now()  ,'%W');



