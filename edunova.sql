drop database if exists edunova;
create database edunova;
use edunova;

create table smjer(
	sifra			int 				not null 	primary key auto_increment,
	naziv			varchar(50)			not null,
	trajanje		int					not null,
	cijena			decimal(18,2),
	upisnina		decimal(18,2),
	verificiran		boolean				not null
	);

create table clan(
	grupa			int				not null,
	polaznik		int				not null
	);

create table polaznik(
	sifra			int 			not null 	primary key auto_increment,
	osoba			int				not null,
	brojugovora		varchar(50)
	);

create table grupa(
	sifra			int 			not null 	primary key auto_increment,
	naziv			varchar(50)		not null,
	smjer			int				not null,
	predavac		int,
	brojpolaznika	int				not null,
	datumpocetka	datetime		not null
	);
	
create table predavac(
	sifra			int 			not null 	primary key auto_increment,
	osoba			int				not null,
	iban			char(21)
	);

create table osoba(
	sifra			int 			not null 	primary key auto_increment,
	oib				char(11),
	ime				varchar(50)		not null,
	prezime			VARCHAR(50)		not null,
	email			VARCHAR(100)	not null
	);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);
alter table polaznik add foreign key (osoba) references osoba(sifra);
alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);
alter table predavac add foreign key (osoba) references osoba(sifra);
