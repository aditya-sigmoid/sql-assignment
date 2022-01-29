create table question5 as
select listing_id,
max(price) as MAX_PRICE,
min(nullif(price,0)) as MIN_PRICE,
avg(price) as AVERAGE_PRICE
from new_data
group by listing_id;


select * from question5 order by listing_id;
select * from question5 order by listing_id