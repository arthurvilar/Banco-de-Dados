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

------------------------------------------------------------------------------------------------------------------------------------------
select O_CUSTKEY, count(*) from (select O_ORDERKEY, O_CUSTKEY from ORDERS order by O_CUSTKEY) group by O_CUSTKEY;

select C_NATIONKEY, PEDIDOS from (select O_CUSTKEY, count(*) as PEDIDOS from (select O_ORDERKEY, O_CUSTKEY from ORDERS order by O_CUSTKEY) group by O_CUSTKEY) inner join CUSTOMER on O_CUSTKEY = CUSTOMER.C_CUSTKEY;