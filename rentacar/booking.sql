create table rentacar.booking
(
    id         int auto_increment
        primary key,
    costumerid int                  not null,
    vehicleid  int                  not null,
    plocation  int                  not null,
    dlocation  int                  not null,
    pdate      date                 not null,
    ddate      date                 not null,
    payment    tinyint(1) default 0 not null,
    constraint booking_ibfk_1
        foreign key (vehicleid) references rentacar.vehicles (id),
    constraint booking_ibfk_2
        foreign key (costumerid) references rentacar.costumer (id),
    constraint booking_ibfk_3
        foreign key (plocation) references rentacar.location (id),
    constraint booking_ibfk_4
        foreign key (dlocation) references rentacar.location (id)
);

create index costumerid
    on rentacar.booking (costumerid);

create index dlocation
    on rentacar.booking (dlocation);

create index plocation
    on rentacar.booking (plocation);

create index vehicleid
    on rentacar.booking (vehicleid);

