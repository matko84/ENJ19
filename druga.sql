drop database if exists druga;
create database druga;
use druga;

create table kontakt(
sifra			int				not null	primary key 	auto_increment,
vrsta			int,	
vrijednost		varchar(50)		not null,
aktivan			boolean			not null,
datumunosa		datetime		not null
);

create table vrsta(
sifra			int				not null	primary key		auto_increment,
naziv			varchar(50)		not null
);

alter table kontakt add foreign key (vrsta) references vrsta(sifra);
