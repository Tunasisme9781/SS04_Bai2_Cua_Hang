create table products(
                         id serial primary key,
                         name varchar(50) ,
                         category varchar(50),
                         price decimal(10,2),
                         stock int
);
insert into products(name, category, price, stock) values
                                                       ('Laptop Dell', 'Electronics', 1500.00, 5),
                                                       ('Chuột Logitech', 'Electronics', 25.50, 50),
                                                       ('Bàn phím Razer', 'Electronics', 120.00, 20),
                                                       ('Tủ lạnh LG', 'Home Appliances', 800.00, 3),
                                                       ('Máy giặt Samsung', 'Home Appliances', 600.00, 2);
insert into products(name, category, price, stock) values
    ('Điều hòa Panasonic','Home Appliances',400.00,10);
update products
set stock = 7
where name = 'Laptop Dell';
delete from products where stock=0;
select *from products  order by price asc ;
select distinct category from products;
select name,price from products where price between 100 and 1000;
select name from products where name like '%LG%' or name like '%Samsung%';
select name,price from products order by price desc limit 2;
select name,price from products order by id asc limit 2 offset 1;

select *from products;
