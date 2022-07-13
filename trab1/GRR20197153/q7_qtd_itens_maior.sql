select N_NAME, QTD
from (
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
)
where QTD > 62000
order by QTD desc;
  
select n_name, sum(l_quantity) as qtd 
from orders, lineitem, customer, nation 
where l_orderkey = o_orderkey 
    and c_custkey = o_custkey 
    and n_nationkey = c_nationkey 
group by n_name 
having qtd > 62000 
order by qtd desc;