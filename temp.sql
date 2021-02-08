
select 
c.customer_id ,
c.customer_name,
o.order_name
from customer c right join orders o on c.order_id=o.order_id;

 