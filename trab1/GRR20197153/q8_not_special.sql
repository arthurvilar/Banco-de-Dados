-- seleciona todas as linhas que contem 'special request'
select CUSTOMER.C_CUSTKEY, ORDERS.O_COMMENT from ORDERS join CUSTOMER on C_CUSTKEY = O_CUSTKEY where O_COMMENt like '%special request%' order by c_CUSTKEY;

-- conta quantos clientes fizeram 'special request'
select count(distinct(CUSTOMER.C_CUSTKEY)) from ORDERS join CUSTOMER on C_CUSTKEY = O_CUSTKEY where O_COMMENt like '%special request%';