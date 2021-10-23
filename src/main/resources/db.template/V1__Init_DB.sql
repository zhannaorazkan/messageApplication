create sequence hibernate_sequence start 1 increment 1;

create table message (
    id int8 not null,
    tag varchar(255),
    text varchar(2048),
    user_id int8,
    primary key (id));

create table user_role (
    user_id int8 not null,
    roles varchar(255));

create table usr (
    id int8 not null,
    active boolean not null,
    password varchar(255) not null ,
    username varchar(255) not null ,
    primary key (id));

alter table if exists message
    add constraint message_user_fk
        foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
        foreign key (user_id) references usr;