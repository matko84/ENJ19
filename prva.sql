drop database if exists prva;
create database prva;
use prva;

create table tablica(
sifra			int 			not null 	primary key 	auto_increment,
naziv			varchar(50) 	not null,
opis			varchar(50),
aktivan			boolean 		not null,
datumunosa		datetime 		not null,
nadredena		int
);

alter table tablica add foreign key (nadredena) references tablica(sifra);

