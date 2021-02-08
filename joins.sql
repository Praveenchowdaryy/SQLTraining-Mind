use praveen;
create table orders (order_id int primary key not null ,order_name varchar(30),order_date date);
insert into orders values(101,'phone','2021-01-13');
insert into orders values(102,'watch','2020-08-10');
insert into orders values(103,'band','2020-11-15');
insert into orders values(104,'trimmer','2019-08-13');
insert into orders values(105,'camera','2021-01-19');
select * from orders;
create table customer (customer_id int primary key not null ,customer_name varchar(50) ,order_id int,amount double ,foreign key (order_id) references orders(order_id));

insert into customer values(1029,'sam',101,30000);
insert into customer values(1028,'john',101,35500);
insert into customer values(1027,'ramesh',101,30500);
insert into customer values(1026,'suresh',103,1500);
insert into customer values(1022,'rajesh',105,50000);
insert into customer values(1024,'pavan',101,35000);
insert into customer values(1023,'sai',102,3000);

select * from customer;

select customer.customer_name, orders.order_id ,orders.order_name ,customer.amount from orders inner join customer on orders.order_id=customer.order_id;