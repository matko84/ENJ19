drop database if exists drordinacija;
create database drordinacija;
use drordinacija;

create table drordinacija(
	sifra		int,
	naziv		varchar(50),
	telefon		varchar(50),
	oib			char(11)
	);

create table doktor(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50),
	oib			char(11));

create table medsestra(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50),
	oib			char(11));

create table pacijent(
	sifra		int,
	ime			varchar(50),
	prezime		varchar(50),
	oib			char(11));