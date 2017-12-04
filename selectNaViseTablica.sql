select * from smjer;

select * from grupa;

select smjer.naziv as smjer, grupa.naziv as grupa from
smjer inner join grupa on smjer.sifra=grupa.smjer;

select a.naziv as smjer, b.naziv as grupa,
concat(d.ime, ' ', d.prezime) as predavac
from smjer a inner join grupa b on a.sifra=b.smjer
inner join predavac c on b.predavac=c.sifra
inner join osoba d on c.osoba=d.oib;

select a.naziv, b.naziv
from smjer a left join grupa b on a.sifra=b.smjer



#ispišite šifru smjera i datum početka grupe
select a.sifra, b.datumpocetka
from smjer a inner join grupa b on a.sifra=b.smjer

select b.sifra, a.datumpocetka
from grupa a inner join smjer b on b.sifra=a.smjer

select smjer.sifra, grupa.datumpocetka
from smjer inner join grupa on smjer.sifra=grupa.smjer

select smjer.sifra, grupa.datumpocetka
from smjer a inner join grupa b on smjer.sifra=grupa.smjer

select smjer.sifra,grupa.datumpocetka
from grupa, smjer
where smjer.sifra=grupa.smjer

# baza knjiznica

# izlistajte sva imena autora i naslove knjiga koje su izdali

select a.ime, a.prezime, b.naslov
from autor a inner join katalog b on a.sifra=b.autor

# izvucite sva naziva mjesta u koima je izdana knjiga koja počinje
# s slovom B

select distinct a.naziv
from mjesto a inner join katalog b on a.sifra=b.mjesto
where b.naslov like 'B%';

# izlistajte sve naslovi knjiga aktivnih izdavača
select a.naslov
from katalog a inner join izdavac b on a.izdavac=b.sifra
where b.aktivan=1;

# baza edunovapp16

# izlistajte sva imena i prezimena polaznika 
# grupe PP16 (ne koristiti sifra u where)

select d.ime, d.prezime
from grupa a 
inner join clan b 		on a.sifra		=b.grupa
inner join polaznik c 	on b.polaznik	=c.sifra
inner join osoba d 		on c.osoba		=d.oib

where a.naziv!='PP16';

# ispišite naziv smjera koje nije vodi Tomislav Jakopec

select a.naziv
from smjer a 
inner join grupa b on a.sifra=b.smjer
inner join predavac c on b.predavac=c.sifra
inner join osoba d on c.osoba=d.oib
where d.ime='Tomislav' and d.prezime='Jakopec'
union
select naziv from grupa;

#baza classicmodels

# ispišite sve nazive proizvoda u kategoriji Vlakovi



select productname from products where productline='Trains';



select b.productname
from productlines a 
inner join products b on a.productline=b.productline
where a.productline='Trains';


# izvucite jedinstvene nazive proizvoda koje je prodala Murphy Diane

select distinct e.productName
from employees a 
inner join customers b on a.employeeNumber=b.salesRepEmployeeNumber
inner join orders c on b.customerNumber=c.customerNumber
inner join orderdetails d on c.orderNumber=d.orderNumber
inner join products e on d.productCode=e.productCode
group by a.lastname='Murphy' and a.firstName='Diane';

# izvucite sve zaposlenike kojima je Murphy Diane prva šefica
select a.lastname,a.firstName
from employees a inner join employees b on a.reportsTo=b.employeeNumber
where b.lastname='Murphy' and b.firstName='Diane';
