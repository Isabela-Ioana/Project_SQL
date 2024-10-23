CREATE TABLE PROGRAMARI(
    id_programare number(3) not null,
    data_programare date not null,
    scopul_programarii varchar(20) not null,
    PRIMARY KEY(id_programare)
);


CREATE TABLE MEDICI(
    id_medic number(3) not null,  
    id_programare number(3) not null,
    id_adresa number(3) not null,
    nume varchar(10) not null,
    specializare varchar(10) not null,
    numar_telefon number(10) not null,
    email varchar(10) not null,
    PRIMARY KEY(id_medic),
    FOREIGN KEY (id_programare) references PROGRAMARI(id_programare)
);


CREATE TABLE ADRESE(
    id_adresa number(3) not null,
    strada varchar(10) not null,
    localitate varchar(10) not null,
    oras varchar(10) not null, 
    PRIMARY KEY(id_adresa)
);


CREATE TABLE PACIENTI(
    id_pacient number (3) not null,
    nume varchar(10) not null,
    data_nastere date not null,
    sex varchar(1) not null,
    numar_telefon number(10) not null,
    id_programare number(3) not null,
    id_adresa number(3) not null,
    PRIMARY KEY(id_pacient),
FOREIGN KEY (id_programare) references PROGRAMARI(id_programare),
    FOREIGN KEY (id_adresa) references ADRESE(id_adresa)
);


CREATE TABLE ISTORIC(
    id_pacient number (3) not null,
    diagnostic varchar(10) not null,
    tratament varchar(10) not null,
    alergii varchar(1) not null,
    PRIMARY KEY(id_pacient),
    FOREIGN KEY (id_pacient) references PACIENTI(id_pacient)
);


INSERT INTO PROGRAMARI VALUES(100,TO_DATE('DD-MM-YYYY','01-01-2022'),'Consult ad')
INSERT INTO PROGRAMARI VALUES(101,TO_DATE('02-01-2022','DD-MM-YYYY'),'Consult ad')
INSERT INTO PROGRAMARI VALUES(102,TO_DATE('03-01-2022','DD-MM-YYYY'),'Consult ad')
INSERT INTO PROGRAMARI VALUES(103,TO_DATE('04-01-2022','DD-MM-YYYY'),'Consult ad')
INSERT INTO PROGRAMARI VALUES(104,TO_DATE('05-01-2022','DD-MM-YYYY'),'Consult pd')
INSERT ALL
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(105,TO_DATE('06-01-2022','DD-MM-YYYY'),'Consult ad')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(106,TO_DATE('07-01-2022','DD-MM-YYYY'),'Consult ad')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(107,TO_DATE('08-01-2022','DD-MM-YYYY'),'Consult ad')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(108,TO_DATE('09-01-2022','DD-MM-YYYY'),'Consult ad')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(109,TO_DATE('10-01-2022','DD-MM-YYYY'),'Consult ad')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(110,TO_DATE('01-01-2022','DD-MM-YYYY'),'Consult ad')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(111,TO_DATE('05-01-2022','DD-MM-YYYY'),'Consult ad')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(112,TO_DATE('04-01-2022','DD-MM-YYYY'),'Consult pd')
INTO PROGRAMARI(id_programare,data_programare,scopul_programarii) VALUES(113,TO_DATE('10-01-2022','DD-MM-YYYY'),'Consult ad')
select * from dual


INSERT ALL 
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(200,105,300,'Marinescu','Oncologie',0734968745,'marinescu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(201,105,301,'Kogalniceanu','Cardiologie',0773876091,'kogalniceanu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(202,105,302,'Andreescu','Generala',0739067859,'andreescu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(203,102,303,'Popescu','ORL',0723968275,'popescu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(204,100,304,'Baciu','Alergologie',0789220987,'baciu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(205,103,305,'Codrut','Endocrinologie',0795012856,'codrut@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(206,110,306,'Burcea','Genetica',0711298657,'burcea@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(207,101,307,'Florescu','Hematologie',0788564673,'florescu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(208,104,308,'Ganea','Nefrologie',0792268398,'ganea@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(209,106,309,'Eremia','Neurologie',0729889803,'eremia@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(210,107,310,'Filimon','Pneumologie',0711986687,'filimon@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(211,108,311,'Fatu','Psihiatrie',0739067859,'fatu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(212,109,312,'Ivascu','Reumatologie',0739067859,'ivascu@')
INTO MEDICI(id_medic,id_programare,id_adresa,nume,specializare,numar_telefon,email) values(213,111,313,'Lazu','Chirurgie',0739067859,'lazu@')
select * from dual


INSERT ALL 
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(300,'Eminescu','Constanta','Constanta')         /*medici*/
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(301,'Vladimirescu','Bucuresti','Bucuresti')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(302,'Balcescu','Cluj-Napoca','Cluj-Napoca')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(303,'Primaverii','Craiova','Craiova')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(304,'Libertatii','Piatra-Neamt','Piatra-Neamt')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(305,'Trandafirilor','Tulcea','Tulcea')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(306,'Garii','Timisoara','Timisoara')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(307,'Florilor','Caransebes','Caransebes')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(400,'Avram Iancu','Alba','Alba')                   /*pacienti*/
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(401,'1 Mai','Iasi','Iasi')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(402,'Unirii','Brasov','Brasov')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(403,'Cosbuc','Constanta','Constanta')
INTO ADRESE(id_adresa,strada,localitate,oras) VALUES(404,'Creanga','Bucuresti','Bucuresti')
select * from dual


INSERT ALL
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(900,'Popa',to_date('23-05-1989','DD-MM-YYYY'),'F',90,100,400)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(901,'Radu',to_date('18-06-1979','DD-MM-YYYY'),'F',91,101,401)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(902,'Ionescu',to_date('29-01-1999','DD-MM-YYYY'),'M',92,102,402)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(903,'Dumitru',to_date('24-09-1989','DD-MM-YYYY'),'M',93,103,403)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(904,'Stoica',to_date('19-01-1984','DD-MM-YYYY'),'F',94,104,404)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(905,'Stan',to_date('13-06-1981','DD-MM-YYYY'),'F',95,105,400)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(906,'Gheorghe',to_date('21-02-1969','DD-MM-YYYY'),'F',96,106,401)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(907,'Rusu',to_date('16-08-2000','DD-MM-YYYY'),'M',97,107,402)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(908,'Munteanu',to_date('13-10-1992','DD-MM-YYYY'),'M',98,108,403)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(909,'Matei',to_date('15-12-1965','DD-MM-YYYY'),'M',99,109,404)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(910,'Constantin',to_date('04-04-2003','DD-MM-YYYY'),'F',80,110,400)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(911,'Serban',to_date('08-08-2003','DD-MM-YYYY'),'M',81,111,401)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(912,'Marin',to_date('14-08-1994','DD-MM-YYYY'),'F',82,112,402)
INTO PACIENTI(id_pacient,nume,data_nastere,sex,numar_telefon,id_programare,id_adresa) VALUES(913,'Mihai',to_date('23-04-1989','DD-MM-YYYY'),'F',83,113,403)
select * from dual


INSERT ALL
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(900,'Abces','Tr1','A')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(901,'Afazie','Tr2','A')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(902,'Alergie','Tr3','F')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(903,'Bowen','Tr4','F')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(904,'Meniere','Tr5','F')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(905,'Bruxism','Tr6','A')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(906,'Dementa','Tr7','F')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(907,'Dermatita','Tr8','A')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(908,'-','-','A')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(909,'Gastrita','Tr10','F')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(910,'-','-','F')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(911,'Glaucom','Tr12','A')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(912,'-','-','f')
INTO ISTORIC(id_pacient,diagnostic,tratament,alergii) VALUES(913,'Icter','Tr13','A')
select * from dual


update programari set data_programare='05/02/2022' where id_programare=100
alter table medici modify nume varchar(20)
alter table medici modify specializare varchar(20)
alter table medici modify email varchar(20)
alter table adrese modify (strada varchar(20),localitate varchar(20),oras varchar(20))
alter table pacienti modify numar_telefon number(2)
alter table programari add Nr_consultatii_anterioare number(2)
update programari set nr_consultatii_anterioare=3
where id_programare=101
update programari set nr_consultatii_anterioare=7
where id_programare=102
update programari set nr_consultatii_anterioare=4
where id_programare=100
update programari set nr_consultatii_anterioare=10
where id_programare=103
update programari set nr_consultatii_anterioare=14
where id_programare=104
update programari set nr_consultatii_anterioare=1
where id_programare=105
update programari set nr_consultatii_anterioare=9
where id_programare=106
update programari set nr_consultatii_anterioare=17
where id_programare=107
update programari set nr_consultatii_anterioare=8
where id_programare=108
update programari set nr_consultatii_anterioare=19
where id_programare=109
update programari set nr_consultatii_anterioare=6
where id_programare=110
update programari set nr_consultatii_anterioare=18
where id_programare=111
update programari set nr_consultatii_anterioare=14
where id_programare=112
update programari set nr_consultatii_anterioare=6
where id_programare=113
select * from programari
/*UPDATE,INSERT,DELETE OPTIONS*/
update programari set scopul_programarii='Consult pd' where id_programare=108
update istoric set diagnostic='-',tratament='-' where id_pacient=900
insert into programari values(114,TO_DATE('09-01-2022','DD-MM-YYYY'),'Consult pd',3)
select * from programari
delete from programari where id_programare=114
CREATE TABLE FARMACIE(
    id_farmacie number(3) not null,
    stoc number(10) not null,
    locatie varchar(20) not null
);
describe farmacie
drop table farmacie
select * from pacienti where id_pacient<907 and sex='F'
select * from medici m
join programari p on m.id_programare=p.id_programare
where p.data_programare=to_date('06-01-2022','DD-MM-YYYY')
SELECT nume, strada
FROM (
    SELECT nume, strada
    FROM pacienti p
    JOIN adrese a ON p.id_adresa = a.id_adresa
    WHERE a.oras = 'Constanta'
    
    UNION ALL
    
    SELECT nume, strada
    FROM medici m
    JOIN adrese a ON m.id_adresa = a.id_adresa
    WHERE a.oras = 'Constanta'
)
select * from pacienti p
join adrese a on p.id_adresa=a.id_adresa
where a.oras='Bucuresti'
select nume from pacienti p
join adrese a on p.id_adresa=a.id_adresa
where oras='Bucuresti'
union all
select nume from medici m 
join adrese a on m.id_adresa=a.id_adresa
where oras='Bucuresti'
SELECT data_programare, COUNT(id_programare) AS numar_programari
FROM programari
GROUP BY data_programare;
select nume,count(id_programare) as numar_programari
from medici
group by nume
select count(id_medic) as nr_medici_105
from medici
where id_programare=105
group by id_programare
select count(id_medic) as nr_medici_105
from medici
where id_programare=105 
having count(id_medic)>=2
group by id_programare
select nume,min(data_programare) as prog_veche from pacienti 
join programari using (id_programare)
group by nume
order by min(data_programare) asc
fetch first 2 rows only
select avg(nr_consultatii_anterioare) from programari
select round(avg(nr_consultatii_anterioare)) from programari
SELECT trunc(AVG(nr_medici_consultati)) AS medie_medici_consultati
FROM (
    SELECT COUNT(m.id_medic) AS nr_medici_consultati
    FROM programari p
    JOIN medici m ON p.id_programare = m.id_programare
    GROUP BY p.id_programare
)
select length(nume) from pacienti
where id_pacient=904
select id_pacient,nume,data_nastere from pacienti
where upper(nume) like 'CONSTANTIN'
select id_pacient,nume,data_nastere from pacienti
where lower(nume) like 'stoica'
select round(months_between(max(data_programare),min(data_programare))) from programari
SELECT id_programare, data_programare, scopul_programarii
FROM PROGRAMARI
MINUS
SELECT id_programare, data_programare, scopul_programarii
FROM (
    -- A doua listă de programări
    SELECT 100 as id_programare, TO_DATE('02-05-2022', 'DD-MM-YYYY') as data_programare, 'Consult ad' as scopul_programarii FROM dual
    UNION ALL
    SELECT 101, TO_DATE('02-01-2022', 'DD-MM-YYYY'), 'Consult ad' FROM dual
    -- ... adaugă celelalte programări din a doua listă aici ...
);
select data_programare,
case when data_programare < TO_DATE('01/02/2022','MM/DD/YYYY') then 'Consult pd' 
else 'Consult ad'
end as scopul_modificat 
from programari
select nume from pacienti
where id_programare in (select id_programare from programari where data_programare < to_date('04/01/2022','MM/DD/YYYY'))
create or replace view view_pacienti as
select nume as "Nume pacient", data_nastere as "Data Nasterii"
 from pacienti with read only
create or replace view view_dt as
select diagnostic as "Diagnostic pacient", tratament as "Tratamentul efectuat"
from istoric with read only
create or replace view view_3 as
select p.nume as "Nume pacient",i.diagnostic as "Diagnostic pacient", i.tratament as "Tratamentul efectuat"
from pacienti p
join istoric i on p.id_pacient=i.id_pacient
order by p.id_pacient
create or replace view view_4 as
select m.nume as "Nume medic", m.specializare as "Specializare medic", pc.nume as "Nume pacient consultat", p.scopul_programarii as "Scopul programarii", p.data_programare as "Data efectuarii consultului"
from medici m
join programari p on m.id_programare=p.id_programare
join pacienti pc on m.id_programare=pc.id_programare
order by p.data_programare
create or replace view view_5 as
select m.nume as "Nume medic", a.strada as "Strada", a.localitate||' '||a.Oras as "Localitate si oras"
from medici m
join adrese a on m.id_adresa=a.id_adresa
order by m.nume
create synonym pac
for pacienti
create index uppercase_index
on pacienti upper(nume)
