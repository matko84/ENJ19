drop database if exists zaposlenici;
create database zaposlenici;
use zaposlenici;

create table pripravnik (
		sifra		int				not null 	primary key	auto_increment,
		ime 		varchar(50)		not null,
		prezime		varchar(50)
		);

insert into pripravnik (sifra,ime,prezime) values
		(null,'Jozo','Jozic'),
		(null,'Janko','Strizic'),
		(null,'Pero','Peric');

select * from pripravnik;
