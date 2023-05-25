create database nakladnik;
use nakladnik;

create table nakladnik(
	id int not null primary key identity (1,1),
	djelo int not null,
	naziv varchar(50) not null
);
create table djelo(
	id int not null primary key identity (1,1),
	naziv varchar(50) not null,
	ime_autora varchar(50) not null,
	prezime_autora varchar(50) not null
);
create table mjesto (
	id int not null primary key identity (1,1),
	nakladnik int not null,
	naziv varchar (50)
);

-- veze izme?u tablica

alter table nakladnik add foreign key (djelo) references djelo (id);
alter table mjesto add foreign key (nakladnik) references nakladnik (id);

-- Insert into

insert into djelo (naziv,ime_autora,prezime_autora)
values ('Djuka','Begovic'),
('Henry','Williams'),
('Crispy','Agatta');

insert into mjesto (nakladnik,naziv)
values (1,'Voda'),
(2,'Vatra'),
(3,'Zemlja');

insert into nakladnik (djelo,naziv)
values (1,'Bajka'),
(2,'Casa'),
(3,'Zvucnik');

-- Update tablice

update djelo set naziv='Strava'
where id=2;

update mjesto set naziv='Ponedjeljak'
where id=3;

update nakladnik set naziv='Cvrkut'
where id=1;

--Delete tablice

delete from nakladnik where id=2;

delete from djelo where id=1;

delete from mjesto where id=3;

