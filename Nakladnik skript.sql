use nakladnik;

select * from djelo;

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

update djelo set naziv='Strava'
where id=2;

update mjesto set naziv='Ponedjeljak'
where id=3;

update nakladnik set naziv='Cvrkut'
where id=1;

delete from nakladnik where id=2;

delete from djelo where id=1;

delete from mjesto where id=3;