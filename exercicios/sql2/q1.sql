select p_name, p_retailprice, ps_suppkey from part join partsupp on p_partkey = ps_partkey where p_retailprice > 1900;
