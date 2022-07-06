select count(*) from customer left outer join orders on c_custkey = o_custkey where c_acctbal > 9900 and o_orderstatus is null;
