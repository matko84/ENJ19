drop database if exists postolar;
create database postolar;
use postolar;

create table postolar(
sifra			int,
ime				varchar(50),
prezime			varchar(50),
oib				char(11)
);

create table popravak (
sifra			int,
naziv			varchar(50),
cijena			decimal(5,2),
obuca			int
);

create table segrt(
sifra			int,
ime				varchar(50),
prezime			varchar(50),
oib				char(11),
popravak		int
);

create table korisnik (
sifra			int,
ime				varchar(50),
prezime			varchar(50)
);

create table obuca(
sifra			int,
segrt			int,
korisnik		int,
popravak		int
);

create table popravak_obuca (
sifra			int,
popravak		int,
obuca			int
);
