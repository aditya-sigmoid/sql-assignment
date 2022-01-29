select listing_id,AVERAGE_PRICE
from question5
where AVERAGE_PRICE > 500.00
ORDER BY listing_id;