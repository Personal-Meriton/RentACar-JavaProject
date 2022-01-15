create table rentacar.vehicles
(
    id         int auto_increment
        primary key,
    brand      varchar(24) not null,
    model      varchar(24) not null,
    year       year        not null,
    ftype      varchar(24) not null,
    milage     varchar(24) not null,
    hp         int         not null,
    gear       varchar(24) not null,
    color      varchar(24) not null,
    plate      varchar(8)  not null,
    price      float       not null,
    locationid int         not null,
    constraint vehicles_ibfk_1
        foreign key (locationid) references rentacar.location (id)
);

create index locationid
    on rentacar.vehicles (locationid);

