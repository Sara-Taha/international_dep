create table int_dept (country_name text , country_code text ,indicator_name  text 
,indicator_code text , dept float )


COPY int_dept FROM 'C:\postsql\international_debt.csv' 	DELIMITER ',' CSV HEADER null 'NA' ;

SELECT * FROM int_dept;

select distinct count(country_code )
from int_dept;

select distinct sum(dept) , country_name 
from int_dept
group by  country_name;


select   sum(dept)
from int_dept ;

select  country_name , sum(dept) as high
from int_dept 
group by country_name
order by high desc
limit 1 ; 


select avg(dept)  , indicator_code 
from int_dept 
group by indicator_code


