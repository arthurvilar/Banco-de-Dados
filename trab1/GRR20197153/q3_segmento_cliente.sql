select 
    c_mktsegment, count(*) 
from 
    CUSTOMER 
group by 
    c_mktsegment;
