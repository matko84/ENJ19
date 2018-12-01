# mysql -uedunova -pedunova --default_character_set=utf8 < D:\utakmica.sql

drop database if exists utakmica;
create database utakmica character set utf8 collate utf8_general_ci;
use utakmica;

create table stadion(
sifra			int				not null		primary key		auto_increment,
naziv			varchar(50)		not null,
pocetak			datetime		not null,
domacin			int				not null,		
gost			int				not null
);

create table momcad(
sifra			int				not null		primary key		auto_increment,
naziv			varchar(50)		not null,
izbornik		varchar(50)		not null
);

create table igrac(
sifra			int				not null		primary key		auto_increment,
ime				varchar(50)		not null,
prezime			varchar(50)		not null,
momcad			int				not null	
);

alter table stadion add foreign key (domacin) 	references momcad(sifra);
alter table stadion add foreign key (gost) 		references momcad(sifra);
alter table igrac 	add foreign key (momcad) 	references momcad(sifra);

insert into momcad	(sifra,naziv,izbornik) values
					(null,'Osijek','Pero'),
					(null,'Zagreb','Janko'),
					(null,'Split','Keko'),
					(null,'Rijeka','Jovo');

insert into igrac 	(sifra,ime,prezime,momcad) values
					(null,'Igrac_1','Prezime_1',1),
					(null,'Igrac_2','Prezime_2',1),
					(null,'Igrac_3','Prezime_3',1),
					(null,'Igrac_4','Prezime_4',1),
					(null,'Igrac_5','Prezime_5',1),
					(null,'Igrac_6','Prezime_6',1),
					(null,'Igrac_7','Prezime_7',1),
					(null,'Igrac_8','Prezime_8',1);

insert into stadion	(sifra,naziv,pocetak,domacin,gost) values
					(null,'Gradski vrt','2018-10-10',1,2),
					(null,'Maksimir','2018-10-20',2,3);