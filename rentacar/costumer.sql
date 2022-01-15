create table rentacar.costumer
(
    id      int auto_increment
        primary key,
    name    varchar(24) not null,
    surname varchar(24) not null,
    age     int(2)      not null,
    email   varchar(24) not null,
    phone   varchar(24) not null,
    drln    varchar(24) not null
);

