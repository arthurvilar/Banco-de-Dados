select 
    N_NAME, 
    sum(L_QUANTITY) as QTD 
from ORDERS 
join LINEITEM 
    on LINEITEM.L_ORDERKEY = ORDERS.O_ORDERKEY 
join CUSTOMER 
    on CUSTOMER.C_CUSTKEY = ORDERS.O_CUSTKEY 
join NATION 
    on NATION.N_NATIONKEY = CUSTOMER.C_NATIONKEY 
group by N_NAME
order by QTD desc
limit 10;