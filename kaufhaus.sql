create database Kaufhaus;
GO
use Kaufhaus;
GO
create table produkte 
(
id_produkt varchar(10) primary key,
name_produkt varchar(50) not null,
preis_produkt float not null,
lagerbestand_produkt int not null,

)
GO
insert into produkte values ('101','USB-Stick',5.30,400);
insert into produkte values ('102','Ventilator',15.80,122);
insert into produkte values ('103','Gluehbirne',2.00,589);
insert into produkte values ('104','Stuhl',48.20,90);
insert into produkte values ('105','Tisch',59.99,50);
GO
--update produkte SET name_produkt='Gluehbirne' where id_produkt='103';
CREATE PROC SP_Addieren_Produkt
@Produkt as varchar(10), @Mengue as int
AS
UPDATE produkte SET lagerbestand_produkt=lagerbestand_produkt+@Mengue WHERE id_produkt=@Produkt;
GO
SELECT * FROM produkte Where id_produkt='104';
EXEC SP_Addieren_Produkt '104',20
GO
SELECT * FROM produkte Where id_produkt='104';
GO
CREATE PROC SP_Subtrahieren_Produkt
@Produkt as varchar(10), @Mengue as int
AS
UPDATE produkte SET lagerbestand_produkt=lagerbestand_produkt-@Mengue WHERE id_produkt=@Produkt;
GO
SELECT * FROM produkte Where id_produkt='104';
EXEC SP_Subtrahieren_Produkt '104',20
GO
SELECT * FROM produkte Where id_produkt='104';

