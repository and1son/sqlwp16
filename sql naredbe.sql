select * from smjer;

#dobra
insert into smjer(naziv,cijena,upisnina,brojsati)
values ('PHP programiranje',2000.50,500,130);

#dobra
insert into smjer(naziv,cijena,upisnina,brojsati)
values ('PHP programiranje',2000.50,500,130);

#loša
insert into smjer values(null,'Java programiranje',5000,500,130);

select * from osoba;
#najbolja 
insert into osoba(oib,ime,prezime,email,spol)
values('00000000001','Maja','Mala',null,null);

#dobra
insert into osoba(oib,ime,prezime)
values('00000000002', 'Pero', 'Perić');

select * from predavac;

insert into predavac(osoba,placa)
values('00000000001',1000);

insert into grupa(naziv, predavac, smjer, datumpocetka)
values('PP16', 1, 1,'2017-10-28');

select * from grupa;

insert into polaznik(osoba,brojugovora)
values ('00000000002','2017/25');

select * from polaznik;