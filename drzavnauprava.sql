drop database if exists drzavnauprava;
create database drzavnauprava character set utf8;

use drzavnauprava;

create table zupanija (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupan varchar(50) not null
);

create table mjesto (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupanija int not null,
brojstanovnika int not null
);

alter table mjesto add foreign key (zupanija) references zupanija(sifra);