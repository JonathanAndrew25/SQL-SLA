create table shoppings(
	product_id int auto_increment primary key,
    product_name varchar(20),
    price float
);
create table orders(
	product_id int primary key,
    order_status varchar(20),
    shipping_details int
);
insert into shoppings(product_name,price) values('mobile',15000),('laptop',35000),('monitor',10000),('keyboard',1000);
select * from shoppings;
insert into orders(product_id,order_status,shipping_details) values (1,'preparing',123450987),(2,'shipped',678905432),(3,'delivered',null);
select * from orders;

select shoppings.product_name,shoppings.price,orders.order_status,orders.shipping_details from shoppings left join orders on shoppings.product_id=orders.product_id;

select shoppings.product_name,shoppings.price,orders.order_status,orders.shipping_details from shoppings right join orders on shoppings.product_id=orders.product_id;

select shoppings.product_name,shoppings.price,orders.order_status,orders.shipping_details from shoppings inner join orders on shoppings.product_id=orders.product_id;

select shoppings.product_name,shoppings.price,orders.order_status,orders.shipping_details from shoppings left join orders on shoppings.product_id=orders.product_id
union
select shoppings.product_name,shoppings.price,orders.order_status,orders.shipping_details from shoppings right join orders on shoppings.product_id=orders.product_id;
