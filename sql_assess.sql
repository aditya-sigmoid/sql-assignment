create table question3 as
select listing_id,
case available
		when 't' then 1
        else 0
        end is_available,
case available 
		when 'f' then 1
        else 0
        end is_not_available
from new_data;

select * from question3;

create table ques3 as 
select listing_id, sum(is_available) as AVAILABLE_DAYS,
sum(is_not_available) as NOT_AVAILABLE_DAYS,
sum(is_available)/(sum(is_available)+sum(is_not_available)) as FRACTION
from question3
group by listing_id;

select * from ques3;