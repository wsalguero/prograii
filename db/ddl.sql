drop database if exists hotelesapp;

create database hotelesapp;

use hotelesapp;

create table users(
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT, UNSIGNED NOT NULL AUTO_INCREMENT,
    fullname varchar (100),
    user_address varchar(250),
    email varchar(50),
    dpi varchar (20),
    nit varchar (20),
    rol enum("admin","guest"),
    user_status tinyint,
    user_password varchar(300), 
    primary key(id)
);

create table type_registers(
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT, UNSIGNED NOT NULL AUTO_INCREMENT,
    type_description varchar(300),
    type_key enum("reservation","consumption","assignment","in","out"),
    primary key(id)
);

create table bills(
    num bigint UNSIGNED NOT NULL AUTO_INCREMENT, UNSIGNED NOT NULL AUTO_INCREMENT,,
    id_user bigint,
    bills_date datetime,
    total decimal,
    primary key(num),
    foreign key(id_user) references(users)
);

create table bills_details(
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT,,
    num bigint,
    id_registers bigint,
    primary key(id),
    foreign key(num) references(bills)
);

create table register(
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT,,
    id_user bigint,
    id_room bigint,
    type_registers bigint,
    amount decimal,
    pending_payment tinyint,
    detail varchar(250),
    create_at datetime,
    update_at datetime,
    deleted_at datetime,
    primary key(id),
    foreign key(id_user) references(users),
    foreign key(id_room) references(rooms),
    foreign key(type_registers) references(type_registers)
);

create table rooms(
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT,,
    rooms_description varchar(300),
    price decimal,
    status_ tinyint,
    id_type bigint,
    primary key(id),
    foreign key(id_type) references(types_rooms)
);