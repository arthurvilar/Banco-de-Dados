select count(distinct(c_custkey)) from customer, orders, nation where c_custkey = o_custkey and c_nationkey = n_nationkey and o_totalprice > 300000 and n_name = 'BRAZIL';
