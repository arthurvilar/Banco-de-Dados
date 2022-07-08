select p_type, avg(p_retailprice) from part group by p_type having avg(p_retailprice) > 1595.1;
