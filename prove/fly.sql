CREATE TABLE passasjer
(
    passasjerid serial primary key,
    navn text not null, 
    adresse text not null
);

CREATE TABLE fly 
(
    flyid serial primary key,
    regnr text not null, 
    selskap text not null,
    flytype text not null
);

CREATE TABLE flytur
(
    flyturid serial primary key,
    pris text not null, 
    avgang text not null,
    destinasjon text not null,
    passasjerid int references passasjer (passasjerid),
    flyid int references fly (flyid)
);


delete from passasjer where;
delete from fly where flyid=<123;
insert into passasjer (navn) values ('ole'), ('per'), ('pål');
select * from passasjer;
select flytype from fly;

select * from laaner where forfatterid='leo';

select f.fornavn from forfatter f inner join laaner on (f.forfatterid = l.forfatterid) where f.forfatterid = 'leo';