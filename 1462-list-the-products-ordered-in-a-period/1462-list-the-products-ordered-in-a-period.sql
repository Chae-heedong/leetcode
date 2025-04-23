# Write your MySQL query statement below
SELECT P.product_name AS product_name
    ,SUM(O.unit) AS unit
From Orders AS O
    ,Products AS P
WHERE O.product_id=P.product_id 
    AND O.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP by product_name
Having unit>=100