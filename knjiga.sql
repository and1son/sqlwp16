drop database if exists knjiga;
create database knjiga;

use knjiga;

create table primjerak(
sifra int not null primary key auto_increment,
autor varchar(50) not null,
naziv varchar(50) not null,
cijena decimal(18,2) not null
);




