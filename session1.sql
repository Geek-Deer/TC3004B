-- Counting records on customers table

SELECT count(*) FROM sh.CUSTOMERS;

--
SELECT cu.CUST_ID, sum(sa.AMOUNT_SOLD) as total 
FROM sh.CUSTOMERS cu, sh.SALES sa
WHERE cu.CUST_ID = sa.CUST_ID
GROUP BY cu.CUST_ID
ORDER BY total;

SELECT * FROM sh.sales;