drop database if exists TRGOVINA;
create database TRGOVINA;
use TRGOVINA;

create table RACUN(
		sifra			int				not null		primary key			auto_increment,
		redni_broj		int				not null,
		datum			datetime		not null,
		operater		int
		);

create table OPERATER(
		sifra			int				not null		primary key			auto_increment,
		ime				varchar(50)		not null,
		prezime			varchar(50)		not null,
		na_bolovanju	boolean			not null
		);

create table STAVKA(
		racun			int				not null,
		proizvod		int				not null,
		kolicina		decimal(10,2)	not null
		);

create table PROIZVOD(
		sifra			int				not null		primary key			auto_increment,
		naziv			varchar(50)		not null,
		jedinicna_mjera	varchar(50)		not null,
		cijena			decimal(10,2)	not null
		);

alter table 	RACUN 	add foreign key (operater)		references OPERATER(sifra);
alter table 	STAVKA 	add foreign key (racun)			references RACUN(sifra);
alter table 	STAVKA 	add foreign key (proizvod)		references PROIZVOD(sifra);

	#	bitan je redosljed upisivanja naredbe into -> ne mogu se prvo upisati vrijednosti za racun
	# 	jer nema iz cega povlaciti operatere
	
	
insert into OPERATER(sifra,ime,prezime,na_bolovanju) values
		(null,'Pero','Peric',false),
		(null,'Janko','Strizic',true);
		
	#	kod naredbe boolean true znači da i tako se upisuje, a false ne
	
insert into RACUN(sifra,redni_broj,datum,operater) values
		(null,1,'2018-11-01',1),
		(null,2,'2018-11-02',2),
		(null,3,'2018-11-03',1);

insert into PROIZVOD(sifra,naziv,jedinicna_mjera,cijena) values
		(null,'Jaje','kom',1.99),
		(null,'Mlijeko','litra',1.0),
		(null,'Kruh','kom',6.59),
		(null,'Jogurt','kom',3.99),
		(null,'Banana','kg',7.99);

insert into STAVKA(racun,proizvod,kolicina) values
		(1,1,1),
		(1,2,2),
		(1,3,3),
		#	OPIS:
		# 	na racunu BR.1 nalazi se:
		#	Jaje 1 kom
		#	Mlijeko	2 litra
		#	Kruh 3 kom
		(2,4,4),
		(2,5,5),
		(2,1,6),
		(3,5,7),
		(3,3,8),
		(3,1,9),
		(3,2,10);

select * from racun;
select * from operater;
select * from proizvod;
select * from stavka;