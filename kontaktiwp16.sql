drop database if exists kontaktiwp16;
create database kontaktiwp16;

use kontaktiwp16;

create table osoba(
sifra int not null primary key,
ime varchar(40) not null,
spol boolean not null,
datumrodjenja datetime not null,
nadimak varchar(40)

);

create table kontakt(
sifra int not null primary key,
osoba int not null,
telefon varchar(30) not null

);

alter table kontakt add foreign key (osoba) references osoba(sifra);