--use master;
--GO
--drop database Immatrikulation; 
create database Immatrikulation;
GO
use Immatrikulation;
GO
create table kurse
(
id_kurse varchar(10) primary key,
name_kurse varchar(30) not null,
)
GO
create table schueler
(
id_schueler varchar(15) primary key,
nachname_schueler varchar(30) not null,
vorname_schueler varchar(30) not null,
geschlecht_schueler char not null,
telefonnummer_schueler varchar(15),
adresse_schueler varchar(50),
)
GO
create table anmeldung
(
id_anmeldung varchar(10)  primary key,
id_schueler varchar(15) not null,
id_kurse varchar(10) not null,
anmeldung_datum date not null, 
CONSTRAINT fk_Schueler FOREIGN KEY (id_schueler) REFERENCES schueler (id_schueler),
CONSTRAINT fk_Kurse FOREIGN KEY (id_kurse) REFERENCES kurse (id_kurse)
);
GO
insert into kurse values('A1-A','Anfaenger A1-A');
insert into kurse values('A2-A','Anfaenger A2-A');
insert into kurse values('A2-B','Anfaenger A2-B');
insert into kurse values('A2-C','Anfaenger A2-C');
insert into kurse values('B1-A','Anfaenger B1-A');

insert into schueler values('756793','Chavez','Andrea','W','88923898','markstr 231');
insert into schueler values('756721','Alvarez','Luis','M','3243233','markstr 21');
insert into schueler values('756733','Kutscher','Catalina','W','2435355','markstr 131');
insert into schueler values('756734','Quintana','Pedro','M','1234455','markstr 32');
 
insert into anmeldung values('161-3423','756793','B1-A','2015-02-28');
insert into anmeldung values('161-3424','756721','A1-A','2015-05-30');
insert into anmeldung values('161-3325','756733','A2-A','2015-08-22');
insert into anmeldung values('161-3426','756734','A2-B','2015-02-28');

--delete from anmeldung where id_anmeldung='161-34';