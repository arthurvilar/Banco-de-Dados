select count(*) 
	from (
		select o_custkey 
			from orders 
		except 
		select o_custkey 
			from orders, customer 
		where c_custkey = o_custkey 
			and o_comment like '%special request%'
	);
