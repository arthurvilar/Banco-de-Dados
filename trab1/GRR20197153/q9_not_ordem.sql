select count(*) 
	from (
		select c_custkey 
			from customer 
		except 
		select c_custkey 
			from customer, orders 
		where c_custkey = o_custkey
	);