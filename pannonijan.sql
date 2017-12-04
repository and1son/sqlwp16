drop database if exists pannonijan;
create database pannonijan character set utf8;

use pannonijan;

create table dogadaj(
sifra int not null primary key auto_increment,
trajanje datetime not null,
ulaz decimal(18,2) not null
);

create table natjecanje(
sifra int not null primary key auto_increment,
događaj int not null
);

create table natjecanje_natjecatelj(
natjecanje int not null,
natjecatelj int not null

);

create table natjecatelj(
sifra int not null primary key auto_increment,
ime varchar(20) not null,
prezieme varchar(20) not null,
opis text
);

create table sponzor(
sifra int not null primary key auto_increment,
naziv varchar(20) not null,
donacija decimal(18,2) not null,
dogadaj int not null

);

alter table sponzor add foreign key