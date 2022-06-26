select 
    N_NAME, QTD_ENCOMENDAS 
from 
(
    select 
        C_NATIONKEY, count(*) as QTD_ENCOMENDAS 
    from 
    (
        select 
            O_CUSTKEY, C_NATIONKEY 
        from 
            ORDERS 
        inner join CUSTOMER on 
            ORDERS.O_CUSTKEY = CUSTOMER.C_CUSTKEY 
        group by 
            O_CUSTKEY
    ) 
    group by 
        C_NATIONKEY
) 
inner join NATION on 
    C_NATIONKEY = NATION.N_NATIONKEY 
group by 
    N_NAME 
order by 
    QTD_ENCOMENDAS desc;
