Create table Bank(
	Cust_id int auto_increment primary key,
    Cust_name varchar(20),
    Bank_balance float,
    Active_status varchar(10)
);
select * from Bank;
insert into Bank(Cust_name, Bank_balance,Active_status)
values ('Jonathan',0,'Active'), ('Logesh',900.50,'Active'), ('Akshay',400.25,'Active'), ('Sundar',800,'Active'), ('Praveen',2000,'Active');

set sql_safe_updates = 0;
Update Bank set Active_status = 'Inactive' where Bank_balance < 500;
select * from Bank;

Delete from Bank where Bank_balance = 0 or Active_status = 'Inactive';
select * from Bank;
