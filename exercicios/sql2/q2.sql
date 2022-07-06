select count(*) from lineitem join orders on o_orderkey = l_orderkey where o_orderstatus = 'O' and l_shipdate >= '11-11-1998' and l_shipdate <= '31-12-1998';
