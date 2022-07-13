select n_name, sum(l_quantity) as qtd 
from orders, lineitem, customer, nation 
where l_orderkey = o_orderkey 
    and c_custkey = o_custkey 
    and n_nationkey = c_nationkey 
group by n_name 
having qtd > 62000 
order by qtd desc;