create table CUSTOMERS
(
    id           int          not null auto_increment primary key,
    name         varchar(255) not null,
    surname      varchar(255) not null,
    age          int,
    phone_number varchar(255)
);

insert CUSTOMERS (name, surname, age, phone_number)
values ('Ivan', 'ivanov', 32, 123),
       ('Alexey', 'sidorov', 33, 1234),
       ('mikhail', 'sokolov', 33, 12345);

create table ORDERS
(
    id           int auto_increment primary key,
    date         date,
    customer_id  int,
    product_name varchar(255),
    amount       int,
    foreign key (customer_id)
        references CUSTOMERS (id)
);

insert ORDERS (date, customer_id, product_name, amount)
values (now(), 1, 'soap', 2),
       (now(), 2, 'shampoo', 1),
       (now(), 3, 'banana', 5);