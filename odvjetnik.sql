drop database if exists odvjetnik;
create database odvjetnik;
use odvjetnik;

create table odvjetnik(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50),
	oib			char(11)
	);

create table klijent(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50),
	oib			char(11)
	);

create table suradnik(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50),
	oib			char(11)
	);

create table obrana(
	sifra		int,
	brpredmeta	varchar(50),
	klijent		int,
	suradnik	int
	);

create table obrana_suradnik(
	obrana		int,
	suradnik	int
	);