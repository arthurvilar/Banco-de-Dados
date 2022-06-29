-- quantidade de clientes que fizeram ordem de compra
select count(distinct CUSTOMER.C_CUSTKEY) from ORDERS join CUSTOMER on C_CUSTKEY = O_CUSTKEY;