drop database if exists dvd;
create database dvd;
use dvd;

create table DVD(
	sifra		int					not null		primary key		auto_increment,
	naziv		varchar(50)			not null,
	oib			char(11),
	tel			varchar(20),
	mail		varchar(50)
	);

create table KORISNIK(
	sifra		int					not null		primary key		auto_increment,
	ime			varchar(50)			not null,
	prezime		varchar(50)			not null,
	web			int					not null
	);

create table POSLUZITELJ(
	sifra		int					not null		primary key		auto_increment,
	ime			varchar(50)			not null,
	prezime		varchar(50)			not null,
	web			int					not null
	);
	
create table WEB(
	sifra		int					not null		primary key		auto_increment,
	webadresa	varchar(100)		not null,
	dvd			int					not null
	);

create table PRIJAVNICA(
	sifra		int					not null		primary key		auto_increment,
	datum		datetime,
	korisnik	int					null
	);

create table OBJAVA(
	sifra		int					not null		primary key		auto_increment,
	naslov		varchar(50)			not null,
	datum		datetime			not null,
	web			int					not null,
	posluzitelj	int					not null
	);

alter table 	KORISNIK	add foreign key (web)			references web(sifra);
alter table 	POSLUZITELJ	add foreign key (web)			references web(sifra);
alter table 	WEB			add foreign key (dvd) 			references dvd(sifra);
alter table 	PRIJAVNICA	add foreign key (korisnik) 		references korisnik(sifra);
alter table 	OBJAVA		add foreign key (posluzitelj)	references posluzitelj(sifra);
alter table 	OBJAVA		add foreign key (web)			references web(sifra);

insert into 	DVD			(sifra,naziv,oib,tel,mail) values
							(null,'Vatrogasci',12345678910,'093','vatrogasci@gmail.com');
							
insert into 	WEB			(sifra,webadresa,dvd) values
							(null,'www.vatrogasci.hr',1);
#1-3
insert into 	KORISNIK	(sifra,ime,prezime,web) values
							(null,'Korisnik','Koric',1),
							(null,'Korisnik','Peric',1),
							(null,'Korisnik','Coric',1);

#1-3							
insert into 	POSLUZITELJ	(sifra,ime,prezime,web) values
							(null,'Posluzitelj','Koric',1),
							(null,'Posluzitelj','Peric',1),
							(null,'Posluzitelj','Coric',1);
							
insert into 	PRIJAVNICA	(sifra,datum,korisnik) values
							(null,'2018-10-02',1),
							(null,'2018-10-03',2),
							(null,'2018-10-04',3);

insert into 	OBJAVA		(sifra,naslov,datum,web,posluzitelj) values
							(null,'Novosti','2018-03-03',1,1),
							(null,'Obavijest','2018-03-10',1,1),
							(null,'Novosti','2018-03-05',1,3);

select * from objava;
select * from prijavnica;
select * from posluzitelj;
select * from korisnik;