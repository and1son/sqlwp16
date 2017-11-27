select * from smjer;

#dobar
insert into smjer(naziv, trajanje) 
values ('Java programiranje', 130);

#dobar
insert into smjer (cijena, naziv, trajanje, upisnina)
values (3999.99, 'PHP programiranje', 130, null);

#los
insert into smjer values (null, 'Serviser', null, null, 100);

#najbolja
insert into smjer (sifra, naziv, cijena, upisnina, trajanje) 
values (null, 'Operator', 2000, 500, 80);

insert into osoba (oib, ime, prezime, email, spol) 
values ('00000000001', 'Tomislav', 'Jakopec', 'tjakopec@gmail.com', true);

select * from osoba;

insert into osoba (oib, ime, prezime, email, spol) 
values 
('00000000002','žćšž','ŠĐĆČ','gg',true),
('00000000003','','','',true),
('00000000004','','','',true),
('00000000005','','','',true);

insert into predavac (sifra,osoba, placa) 
values (null, '00000000001', 5000);

select * from predavac;

insert into grupa (sifra,naziv,datumpocetka,smjer,predavac)
values(null, 'Java programiranje','2017-10-28',1,2);

select * from grupa;

insert into polaznik(sifra, osoba, brojugovora) 
values 
(null, '00000000002', '1234'),
(null, '00000000003', '1235'),
(null, '00000000004', '1236');

select * from polaznik;

insert into clan (grupa, polaznik)
values (2,1),(2,2),(2,3);

select * from clan;

select * from osoba;
select * from osoba where oib='00000000002';
update osoba set prezime='Nešto' where oib='00000000002'; 

select * from osoba where oib='00000000010';
update osoba set 
ime='Vedrana',
prezime='Mišćević',
email='vedrana.miscevic@sgmail.com',
spol=false where oib='00000000010'; 

#zadatak
#preimenujte smjer u Računalni operator u Operater računala
select * from smjer;

update smjer set
naziv='Operater računala' where sifra=3;

#unesite novi smjer
insert into smjer (sifra, naziv, cijena, upisnina, brojsati) 
values (null, 'Arduino programiranje', 2000, 500, 80);

#zadnje unesenom smjeru promijenite podatke na 
#naziv EU PROJEKTI 
#cijena 7000 kn
#upisnina 0.99kn
#broj sati 180

update smjer set
naziv='EU PROJEKTI',
cijena=7000,
upisnina=0.99,
brojsati=180 where sifra=5;

#polazniku sa šifrom 7 postavite broj ugovora na X18/2017

select * from polaznik;

update polaznik set
brojugovora='X18/2017' where sifra=7;

select * from predavac;

update predavac set placa=null where sifra=1;

##DELETE

delete from smjer where sifra=1;

select * from smjer;
#ne možemo obrisati zbog uvjeta vanjskog ključa

delete from smjer where sifra=5;

select * from zupanija;
insert into zupanija (sifra, naziv, zupan) 
values
(null, 'Brodsko-posasvka', 'Juzo Juzić'),
(null, 'Krapinsko-zagorska županija', 'Filip Filić'),
(null, 'Sisačko-moslavačka ', 'Matija Matijić'),
(null, 'Karlovačka ', 'Đuro Đurić'),
(null, 'Varaždinska ', 'Pero Perić'),
(null, 'Koprivničko-križevačka ', 'Ivan Ivić'),
(null, 'Bjelovarsko-bilogorska ', 'Marko Markić');


select * from mjesto;

insert into mjesto(sifra,naziv,zupanija,brojstanovnika)
values
(null,'asdasdasd',1,123),
(null,'asdasdasd',2,123),
(null,'asdasdasd',3,123),
(null,'asdasdasd',2,123),
(null,'asdasdasd',1,123),
(null,'asdasdasd',3,123),
(null,'asdasdasd',2,123),
(null,'asdasdasd',4,123),
(null,'asdasdasd',5,123),
(null,'asdasdasd',4,123),
(null,'asdasdasd',2,123),
(null,'asdasdasd',3,123),
(null,'asdasdasd',1,123),
(null,'asdasdasd',3,123),
(null,'asdasdasd',4,123),
(null,'asdasdasd',5,123),
(null,'asdasdasd',2,123),
(null,'asdasdasd',3,123),
(null,'asdasdasd',4,123),
(null,'asdasdasd',3,123);

select * from zupanija;
update zupanija set naziv='Brodsko posavka' where sifra=1;
update zupanija set zupan='Marulus Marulusić' where sifra=2;

delete from zupanija where sifra=7;

select * from mjesto;
update mjesto set naziv='Nova Gradiška' where sifra=1;
update mjesto set brojstanovnika=555 where sifra=1;
update mjesto set naziv='Osijek' where sifra=3;
update mjesto set brojstanovnika=1 where sifra=2;
update mjesto set brojstanovnika=11111 where sifra=4;

delete from mjesto where sifra=3;
delete from mjesto where sifra=2;
delete from mjesto where sifra=4;

select * from osoba;

select now();

#select lista
# * sve kolone
select * from osoba;


#pojedinačne kolone
select ime from osoba;

#lista kolona 
select ime, prezime, email from osoba;

#lista kolona gdje se kolone ponavljaju
select *, ime, prezime, ime, ime from osoba;

# u select listi se može nalaziti u kosntanta
select ime, prezime, 'Osijek' as grad from osoba;
select 0, ime from osoba;
select now(), ime from osoba;

# u select listi se može nalaziti u kosntanta
select prezime as polaznik, 'Osijek' as grad from osoba;

#u select listi se miože nalaziti i izraz
select concat(ime, ' ', prezime) as polaznik, 'Osijek' as grad from osoba;

#filtriranje po redovima

select * from smjer where
sifra != 2 or sifra !=3;

select * from smjer where
not (sifra != 2 and (sifra !=3 or sifra<5));

#ostali operatori
select * from osoba where ime like 'a%';

select * from osoba where ime like '%a%';

select * from osoba where ime not like '%a%';

select * from osoba where ime like '%a%' or prezime like '%a%';
select * from osoba where concat(ime, ' ', prezime) like '%a%';


select * from smjer where sifra=2 or sifra=3;
select * from smjer where sifra in (2,3);

select * from grupa where datumpocetka between '2017-01-01' and '2017-12-31';

select * from osoba;

#postavite broj ugovora na null ako je broj ugoovra prazan
select * from polaznik where brojugovora='';
update polaznik set brojugovora=null where brojugovora='';

alter table polaznik modify column brojugovora varchar(20) null;

select * from polaznik where brojugovora is not null;

select * from polaznik where brojugovora is null;

# sortiranje
#jedinstveni rezultati

select ime from osoba order by ime asc;

select ime from osoba order by ime desc;

#jedinstvena pojavnost podatka (samo jedno ime Davor)
select distinct ime from osoba order by ime desc;

#ograničavanje rezultata (prvih 5 rezultata)
select ime from osoba limit 5,2;

create table tttt
select * from osoba where ime not like '%a%';

select * from tttt;

# BAZA KNJIZNICA

select * from autor;

#izlistajte sve autore koje u svom imenu nemaju znak a

select * from autor where ime not like '%a%';

#izlistajte sve autore čije prezime završava s nizom znakova nt
select * from autor where prezime like '%nt';

#pronađite sve autore rođene 1980 godine i da im ime završa sa slovom a

select * from autor;

select ime, prezime from autor where datumrodenja between '1980-01-01' and '1980-12-31' 
and ime like '%a'
and sifra < 18000
order by prezime,ime;

#izvucite sve autore koji nemaju definiran datumrodjenja

select * from autor where datumrodenja is null;
update autor set prezime='Perišić' where sifra=3;

select * from katalog;

select * from katalog where naslov like '%ljubav%'
and sifra in (2879,2938);

#izvući sve izdavače koji su društvo s ograničenom odgovornošću

select * from izdavac where naziv like '%d.o.o.%' 
or naziv like '%d. o. o.' 
or naziv like '%d.o. o.'
or naziv like '%d. o.o.'  
or naziv like '%doo.';  

#baza MJESTA

select * from mjesto where zupanija=14;

#baza classicmodels

#nađite zaposlenike koji su glavni šefovi
select * from employees where reportsTo is null;

#unesite sebe kao novog glavnog šefa
select * from employees;
insert into employees(employeeNumber,lastName,firstName,extension,email,reportsTo,officeCode,jobTitle)
values(12313,'Bašić','Andi','','','1',null,'');

#kako se zove najjeftiniji proizvod

select * from products order by buyPrice limit 1;