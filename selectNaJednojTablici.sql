select * from osoba;

# filtriranje po kolonama
#select lista
# * sve kolone
select * from osoba;

#pojedinacna kolona
select ime from osoba;


#lista kolona
select ime, prezime, email from osoba;


#lista kolona gdje se kolone ponavljaju
select *,ime, prezime, ime, ime from osoba;


# u select listi se može nalaziti u konstanta
select  prezime as polaznik, 'Osijek' as grad from osoba;
select 0, ime from osoba;

# u select listi se može nalaziti i izraz

select concat(ime, ' ', prezime) as polaznik, 'Osijek' as grad from osoba;


# filtriranje po redovima

select * from smjer where
not (sifra!=2 and (sifra!=3 or sifra<5));

select * from osoba where ime not like '%a%';

select * from osoba where ime like '%tomislav jakopec%' or prezime like '%tomislav jakopec%';
select * from osoba where concat(ime, ' ', prezime) like '%tomislav jakopec%';


select * from smjer where sifra=2 or sifra=3;
select * from smjer where sifra in (2,3);

select * from grupa where datumpocetka between '2017-01-01' and '2017-12-31';


select * from osoba;

#postavite broj ugovora na null ako je broj ugovora prazan

select * from polaznik where brojugovora='';
update polaznik set brojugovora=null where brojugovora='';

alter table polaznik modify  brojugovora varchar(20) null;

select * from polaznik where brojugovora is not null;

select * from polaznik where brojugovora is null;

# sortiranje
# jedinstveni rezultati

select ime from osoba order by ime asc;


select distinct ime from osoba order by ime desc;

# ograničavanje rezultata

select ime from osoba limit 20,10;

create table ttt
select * from osoba where ime not like '%a%';

select * from ttt;


# BAZA knjiznica

select * from autor;

# izlistajte sve autore koji u svom imenu nemaju znak a
select * from autor where ime not like '%a%';

#izlistajte sve autore čije prezime završava s nizom znakon nt

select * from autor where prezime  like '%nt';

# pronađite sve autore rođene 
# 1980 godine i da im ime završava s slovom a
select ime, prezime from autor where 
datumrodenja between '1980-01-01' and '1980-12-31'
and ime like '%a' 
and sifra < 18000
order by prezime, ime;

# izvucite sve autore koji nemaju definiran datum rođenja

select * from autor where datumrodenja is  null;

# Ulazim u knjižnicu i kažem: Ostavila me djevojka, dajte mi nešto da čitam

select * from katalog where naslov like '%ljubav%'
and sifra in (2879,2938);


# izvući sve izdavale koji su društvo s ograničenom odgovornošču

select * from izdavac where naziv like '%d.o.o%'
or naziv like 'd. o. o.'
or naziv like 'd.o. o.'
or naziv like 'd. o.o.'
or naziv like 'doo';

# BAZA mjesta

# izlistajte sva mjesta u OBŽ
select * from mjesto where postanskibroj like '31%';

# BAZA classicmodels

# nađite zaposlenike koji su glavni šefovi

select * from employees where reportsTo is null;

# unesite sebe kao novog glavnog šefa
INSERT INTO employees
(employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle)
VALUES
(1111110,'Jakopec','Tomislav','','','1',null,'');

# kako se zove najjeftiniji proizvod?

select productName from products order by buyprice limit 1;






