create table rentacar.location
(
    id      int auto_increment
        primary key,
    name    varchar(24) not null,
    city    varchar(24) not null,
    address varchar(24) not null
);

