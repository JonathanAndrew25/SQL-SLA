create database E_Commerce;
Use E_Commerce;

create table Amazon(
	product_id int,
    Product_name varchar(20),
    price int,
    qty int
);
show tables;

insert into Amazon values (1001,'Keyboard',1500,2);
insert into Amazon values (1002,'Mouse',500,3);
insert into Amazon values (1003,'Monitor',7500,1);
describe Amazon;
select * from Amazon;

use E_commerce;
rename table e_commerce.Amazon to assignments.Amazon;
Drop database e_commerce;
