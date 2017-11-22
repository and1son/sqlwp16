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