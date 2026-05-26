create table products(
                         id serial primary key,
                         name varchar(50) ,
                         category varchar(50),
                         price decimal(10,2) check(price > 0),
                         stock int check(stock >=0)
);
insert into products(name, category, price, stock) values
                                                       ('Laptop Dell', 'Electronics', 1500.00, 5),
                                                       ('Chuột Logitech', 'Electronics', 25.50, 50),
                                                       ('Bàn phím Razer', 'Electronics', 120.00, 20),
                                                       ('Tủ lạnh LG', 'Home Appliances', 800.00, 3),
                                                       ('Máy giặt Samsung', 'Home Appliances', 600.00, 2);
--1
insert into products(name, category, price, stock) values
    ('Điều hòa Panasonic','Home Appliances',400.00,10);

--2
update products
set stock = 7
where name = 'Laptop Dell';

--3
delete from products where stock=0;

--4
select name,price
from products  order by price asc ;

--5
select distinct category from products;

--6
select name,price from products where price between 100 and 1000;

--7
select name from products where name ilike '%LG%' or name ilike '%Samsung%';

--8a
select name,price from products order by price desc limit 2;

--8b
select name,price from products order by id asc limit 2 offset 1;


