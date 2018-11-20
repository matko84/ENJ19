drop database if exists trgovina;
create database trgovina;
use trgovina;

create table racun(
sifra		int				not null	primary key		auto_increment,
rednibroj	int				not null,
datum		datetime		not null,
operater	int				not null
);

create table operater(
sifra		int				not null	primary key		auto_increment,
ime			varchar(50)		not null,
prezime		varchar(50)		not null,
nabolovanju	boolean			not null
);

create table stavka(
racun		int				not null,
proizvod	int				not null,
kolicina	int				not null
);

create table proizvod(
sifra		int				not null	primary key		auto_increment,
naziv		varchar(50)		not null,
jedmjera	varchar(50)		not null,
cijena		decimal(10,2)	not null
);

alter table stavka add foreign key (proizvod) references proizvod(sifra);
alter table racun add foreign key (operater) references operater(sifra);
alter table stavka add foreign key (racun) references racun(sifra);

#1-2
insert into operater (sifra,ime,prezime,nabolovanju) values
(null,1,'Janko',false),
(null,2,'Marko',true);

insert into racun (sifra,rednibroj,datum,operater) values
(null,1,'2018-10-10',1),
(null,2,'2018-10-11',2),
(null,3,'2018-10-12',2);

#1-5
insert into proizvod (sifra,naziv,jedmjera,cijena) values
(null,'jaja','kom',2),
(null,'banana','kg',7.5),
(null,'cokolada','kom',10),
(null,'jogurt_1l','kom',2),
(null,'mlijeko_1l','kom',2);

insert into stavka (racun,proizvod,kolicina) values 
(1,1,1),
(1,2,2),
(3,5,3),
(1,3,4),
(2,3,5),
(3,4,6),
(1,4,7),
(2,2,8),
(2,1,9),
(3,3,10);

