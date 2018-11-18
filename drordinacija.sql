drop database if exists drordinacija;
create database drordinacija;
use drordinacija;

create table drordinacija(
	sifra		int				not null		primary key		auto_increment,
	naziv		varchar(50)		not null,
	telefon		varchar(50)		not null,
	oib			char(11)		not null
		);

create table doktor(
	sifra		int				not null		primary key		auto_increment,
	ime			varchar(50)		not null,
	prezime		varchar(50)		not null,
	oib			char(11),
	drordinacija	int			not null
	);

create table medsestra(
	sifra		int				not null		primary key		auto_increment,
	ime			varchar(50)		not null,
	prezime		varchar(50)		not null,
	drordinacija	int			not null,
	oib			char(11)		
	);

create table pacijent(
	sifra		int				not null		primary key		auto_increment,
	ime			varchar(50)		not null,
	prezime		varchar(50)		not null,
	br_zdrav_is	char(10)		not null,
	oib			char(11)		not null
	);
	
create table pregled(
	sifra			int				not null		primary key		auto_increment,
	datum			datetime		not null,
	broj			int				not null,
	doktor			int				not null,
	pacijent		int				not null
	);
	
create table medsestra_pregled (
	pregled			int				not null,
	medsestra		int				not null
	);
	
alter table pregled					add foreign key	(doktor)			references	doktor(sifra);
alter table pregled					add foreign key	(pacijent)			references	pacijent(sifra);
alter table doktor					add foreign key	(drordinacija)		references 	drordinacija(sifra);
alter table medsestra				add foreign key	(drordinacija)		references 	drordinacija(sifra);
alter table medsestra_pregled		add foreign key	(pregled)			references 	pregled(sifra);
alter table medsestra_pregled		add foreign key	(medsestra)			references 	medsestra(sifra);



#1
insert into 	drordinacija(sifra,naziv,telefon,oib) 		values
	(null,'Spas','031/555-6661',12345678910);
	
#1-4
insert into 	medsestra(sifra,ime,prezime,oib,drordinacija) 			values
	(null,'Mila','Klizic',10987654321,1),
	(null,'Anica','Anic',10987654321,1),
	(null,'Ankica','Benic',10987654321,1),
	(null,'Debela','Berda',12435657910,1);

#1-2
insert into 	doktor(sifra,ime,prezime,oib,drordinacija) 				values
	(null,'Janko','Strizic',10987654321,1),
	(null,'Pero','Ginic',12435687910,1);
	
#1-4
insert into 	pacijent(sifra,ime,prezime,br_zdrav_is,oib)	values
	(null,'Marija','Nogalo',1234563390,12345888910),
	(null,'Stevo','Karapandja',1232167890,12377778910),
	(null,'Andrej','Plenkovic',1235677890,12300008910),
	(null,'Renata','Dvopek',5432567890,12345609910);


#1-6
insert into 	pregled(sifra,datum,broj,doktor,pacijent) values
	(null,'2018-02-01',1,1,1),
	(null,'2018-02-02',1,1,1),
	(null,'2018-02-02',3,2,2),
	(null,'2018-02-05',4,2,4),
	(null,'2018-02-06',5,1,3),
	(null,'2018-02-10',6,2,2);
	
#1-5
insert into 	medsestra_pregled(medsestra,pregled) values
	(1,1),
	(1,2),
	(2,3),
	(3,4),
	(4,4);

select * from pregled;
select * from doktor;
select * from pacijent;
select * from medsestra;
select * from medsestra_pregled;

	