drop database if exists kviz_app;
create database kviz_app;
use kviz_app;

create table voditelj(
	voditelj_id int not null primary key auto_increment,
	ime varchar(10) not null,
	email varchar(25) not null,
	password varchar(25) not null
);

create table ekipa(
	ekipa_id int not null primary key auto_increment,
	naziv varchar(25) not null
);

create table krug(
	krug_id int  not null primary key auto_increment,
	naziv varchar(11) not null,
	voditelj_id int not null
);

create table kategorija(
	kategorija_id int not null primary key auto_increment,
	naziv varchar(10) not null,
	br_pitanja smallint,
	krug_id int not null
);

create table pitanje(
	pitanje_id int not null primary key auto_increment,
	tekst_pitanja varchar(100) not null,
	odgovor varchar(100) not null,
	kategorija_id int not null
);

create table odgovor(
	tocan char(2) not null,
	ekipa_id int not null,
	pitanje_id int not null
);

alter table krug add foreign key (voditelj_id) references voditelj(voditelj_id);

alter table kategorija add foreign key (krug_id) references krug(krug_id);

alter table pitanje add foreign key (kategorija_id) references kategorija(kategorija_id);

alter table odgovor add foreign key (ekipa_id) references ekipa(ekipa_id);

alter table odgovor add foreign key (pitanje_id) references pitanje(pitanje_id);