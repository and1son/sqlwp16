drop database if exists drzavnauprava;
create database drzavnauprava character set utf8;

use drzavnauprava;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(30),
zupan varchar(30)
);

create table mjesto(
sifra int not null primary key auto_increment,
naziv varchar(30),
zupanija int,
brojstanovnika int
);

alter table mjesto add foreign key(zupanija) references zupanija(sifra);
