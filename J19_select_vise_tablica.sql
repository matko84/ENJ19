# 0. imati ispred sebe era dijagram
# 1. korak napiši select listu i ostavi ju praznu
select b.naziv, a.naziv as smjer
# 2. pospajaj uvjete vanjskih ključeva
from smjer a inner join grupa b on a.sifra=b.smjer;
# 3. unijeti uvjet pretraživanja
# 4. u select listi napisati što želiš

select * from smjer;
# unesite novi smjer: operater
insert into smjer(sifra,naziv,cijena,upisnina,verificiran)
values (null,'Operater',1000,100,true);

#varijacije na temu
select grupa.naziv, smjer.naziv as smjer
from smjer inner join grupa on smjer.sifra=grupa.smjer;

#varijacije na temu
select grupa.naziv, smjer.naziv as smjer
from smjer, grupa 
where smjer.sifra=grupa.smjer;

#varijacije na temu
select b.naziv, a.naziv as smjer
from smjer a, grupa b
where a.sifra=b.smjer;


# spajanje više tablica
select b.naziv, a.naziv as smjer, concat(d.ime, ' ', d.prezime) as predavac
from smjer a inner join grupa b on a.sifra=b.smjer
inner join predavac c on b.predavac=c.sifra
inner join osoba d on c.osoba=d.sifra;

#izlistajte sve polaznike (ime, prezime i broj ugovora)
select a.ime, a.prezime, b.brojugovora
from osoba a inner join polaznik b on a.sifra=b.osoba;

# left join
select a.naziv as smjer, b.naziv as grupa
from smjer a left join grupa b on a.sifra=b.smjer;

# spajanje podataka union
select naziv, trajanje from smjer
union
select naziv,0 from grupa;

# agregiranje podataka
select a.naziv, count(b.polaznik)
from grupa a left join clan b on a.sifra=b.grupa
where a.naziv like '%1%' # filtriranje podataka zapisanih u tablicu
group by a.naziv
having count(b.polaznik)>0; # filtriranje agregiranih podataka;

# dodaci select naredbi
select sifra,ime,prezime from osoba order by prezime desc, 3 asc limit 6,3;


#select into
drop table if exists lista;
create table lista
select sifra,ime,prezime from osoba order by prezime desc, 3 asc limit 6,3;



# baza KNJIŽNICA
# islistajte ime i prezime autora te naslov kataložnog zapisa svih autora
# koji su rođeni 1976 godine


select a.ime, a.prezime, b.naslov
from autor a inner join katalog b on a.sifra=b.autor
where a.datumrodenja between '1976-01-01' and '1976-12-31';







  # list vanjskih ključeva - primarni ključeva po tablici
  SELECT 
  TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
  REFERENCED_TABLE_SCHEMA = 'knjiznica' AND
  REFERENCED_TABLE_NAME = 'autor';





# Domaća zadaća


# izvucite sve datume rođenja autora koji su izdali knjigu kod
# aktivnog izdavača

# izvucite sve nazive mjesta u koijma je izdana knjiga koja počinje
# s slovom B

# izlistajte sva imena autora i naslove knjiga koje su izdali






#baza classicmodels
# ispišite sve nazive proizvoda u kategoriji Vlakovi
# izvucite nazive proizvoda koje je prodala Murphy Diane
# izvucite sva imena i prezimena zaposlenika kojima je Murphy Diane prva šefica
# izvucite sva imena i prezimena zaposlenika koji nikome nisu nadređeni









