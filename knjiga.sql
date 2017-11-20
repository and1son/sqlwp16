drop database if exists knjiga;
create database knjiga;

use knjiga;

create table primjerak(
sifra int not null primary key auto_increment,
autor varchar(50) not null,
naziv varchar(50) not null,
cijena decimal(18,2) not null
);

create table posudio(
primjerak int not null primary key,
korisnik int not null,
datumposudbe datetime not null,
datumpovratka datetime not null
);

create table korisnik(
sifra int not null primary key,
ime varchar(40) not null,
prezime varchar(40) not null

);

alter table posudio add foreign key (primjerak) references primjerak(sifra);
alter table posudio add foreign key (korisnik) references korisnik(sifra);


