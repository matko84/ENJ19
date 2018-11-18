drop database if exists dvd;
create database dvd;
use dvd;

create table DVD(
	sifra		int,
	naziv		varchar(50),
	oib			char(11),
	tel			varchar(20)
	);

create table WEB(
	sifra		int,
	webadresa	varchar(100)
	);

create table KORISNIK(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50)
	);

create table POSLUZITELJ(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50)
	);

create table PRIJAVNICA(
	sifra		int,
	datum		datetime,
	korisnik	int
	);

create table OBJAVA(
	sifra		int,
	naslov		varchar(50),
	datum		datetime,
	posluzitelj	int
	);
