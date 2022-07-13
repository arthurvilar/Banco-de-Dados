select count (*) 
	from (
		select c_custkey 
			from customer, orders 
		where c_custkey = o_custkey 
			and o_comment like '%special request%' 
		except 
		select c_custkey 
			from customer, orders 
		where c_custkey = o_custkey 
			and o_comment like '%unusual package%'
	);