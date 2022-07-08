select p_type, avg(p_retailprice) from part where p_retailprice >= 1895.10 and p_retailprice <= 2097.90 group by p_type;

