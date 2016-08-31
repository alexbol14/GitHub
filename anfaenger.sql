--create database geschaeft;
--GO
use geschaeft;
GO
create table kunden
(
id_kunde int identity primary key,
name_kunde varchar(30) not null,
vorname_kunde varchar(30) not null,
)
GO
--drop table kunden

insert into kunden values('Mueller','Thomas');
insert into kunden values('Neuer','Manuel');
insert into kunden values('Gomez','Mario');
insert into kunden values('Muller','Thomas');

SELECT * FROM kunden

ALTER TABLE kunden ALTER COLUMN name_kunde NVARCHAR(50) NULL; 
GO
ALTER TABLE kunden ALTER COLUMN vorname_kunde NVARCHAR(50) NULL; 

insert into kunden values('Muller2','Thomas2');

ALTER TABLE kunden NOCHECK CONSTRAINT ALL set identity_insert id_kunde ON 

SET IDENTITY_INSERT kunden OFF; 

delete from kunden where id_kunde >  0;