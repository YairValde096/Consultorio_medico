create table cat_TipoSangre
(
id_tipsan smallint primary key,
desc_tipsan varchar(10) not null
);
commit;
insert into cat_TipoSangre values (1,'A+');
insert into cat_TipoSangre values (2,'A-');
insert into cat_TipoSangre values (3,'AB+');
insert into cat_TipoSangre values (4,'AB-');
insert into cat_TipoSangre values (5,'B+');
insert into cat_TipoSangre values (6,'B-');
insert into cat_TipoSangre values (7,'O+');
insert into cat_TipoSangre values (8,'0-');

select * from cat_TipoSangre;
--Terminado
create table cat_TipoMedica
(
id_tipmed smallint primary key,
desc_tipmed varchar(10) not null
);
commit;
insert into cat_TipoMedica values (1,'Gramos');
insert into cat_TipoMedica values (2,'Mililitros');
insert into cat_TipoMedica values (3,'Miligramos');

select * from cat_TipoMedica;
--Terminado
create table cat_Medicamento
(
id_medica smallint primary key,
num_disp smallint not null,
nom_medica varchar(20) not null,
tipo_medica smallint not null,
dosis_medica smallint not null,
fecCad date not null,
Reacciones varchar(100) not null,
constraint "fk_tipo_medica" foreign key (tipo_medica) references cat_TipoMedica(id_tipmed)
);
commit;
insert into cat_Medicamento values(1,1,'Etinilestradiol',3,1,'15-12-2021','Inflamación estomacal');
insert into cat_Medicamento values(2,5,'Aspirina',3,500,'15-12-2023','Dolor de cabeza');
insert into cat_Medicamento values(3,6,'Espadiba',3,800,'17-10-2024','Sangrado nasal');
insert into cat_Medicamento values(4,2,'Penicilina',3,400,'1-1-2023','Desconcentración');
insert into cat_Medicamento values(5,6,'Paracetamol',1,1,'5-5-2022','Mareo');
insert into cat_Medicamento values(6,73,'Amoxicilina',3,500,'12-6-2022','Tristeza');
insert into cat_Medicamento values(7,12,'Ambroxol',3,500,'23-9-2024','Tos con flemas');
insert into cat_Medicamento values(8,64,'Ciprofloxacino',3,50,'12-11-2073','Dolor muscular');
insert into cat_Medicamento values(9,1324,'Trimetropina',1,2,'9-11-2093','Cansancio, Insomnio');
insert into cat_Medicamento values(10,63,'Permatrago',2,500,'21-11-2043','Sueño, Hambre');
insert into cat_Medicamento values(11,124,'Ampicilina',3,500,'11-11-2026','Chorrillo Intenso');
insert into cat_Medicamento values(12,23,'Clorfedramina',3,700,'18-11-2029','Ronroneos ');
insert into cat_Medicamento values(13,2551,'Ivermectina',3,80,'13-11-2021','Dolor Hepatico');
insert into cat_Medicamento values(14,53,'Cefalexina',3,20,'6-11-2025','Sangrado rectal');
insert into cat_Medicamento values(15,1242,'Amantadina',3,500,'4-11-2023','Aturdimiento');
insert into cat_Medicamento values(16,322,'Crotolamo',2,500,'8-11-2021','Sueño, Hambre');
insert into cat_Medicamento values(17,42,'Naproxeno',3,500,'26-11-2028','Distopía');
insert into cat_Medicamento values(18,12,'Padalustro',2,500,'31-12-2027','Ganas intensas de bailar');
insert into cat_Medicamento values(19,42,'Uxiono',2,500,'22-11-2043','Sueño, Hambre');
insert into cat_Medicamento values(20,52,'Ibuprofeno',1,600,'29-11-2069','Chorrillo Intenso');
insert into cat_Medicamento values(21,222,'Benzoilmetilecgonina',1,5,'15-11-2023','Euforia');

select * from cat_Medicamento;
--alter table cat_Medicamento
--  add dosis_caja smallint default 12 not null;

--Terminado
create table cat_Sexo
(
id_tipsex smallint primary key,
tip_sex varchar(10) not null
);
commit;
insert into cat_Sexo values(1,'Femenino');
insert into cat_Sexo values(2,'Masculino');
insert into cat_Sexo values(3,'Otro');
--Terminado
select * from cat_Sexo;

create table cat_Disponible
(
id_disp smallint primary key,
tip_disp varchar(2) not null
);
commit;
insert into cat_Disponible values(1,'Si');
insert into cat_Disponible values(2,'No');
select * from cat_Disponible;

create table Pacientes
(
num_pac smallint primary key,
nom_pac varchar(20) not null,
apa_pac varchar(15) not null,
ama_pac varchar(15) not null,
sex_pac smallint not null,
fna_pac date not null,
tipo_san_pac smallint not null,
rfc_pac varchar(13),
cel_pac int not null,
tel_pac int not null,
dir_pac varchar(50) not null,
alergias varchar(50),
enf_cronicas varchar(100),
constraint "fk_sex" foreign key (sex_pac) references cat_Sexo(id_tipsex),
constraint "fk_tiposangre" foreign key (tipo_san_pac) references cat_TipoSangre(id_tipsan)
);
commit;

select * from Pacientes;
insert into Pacientes values(1,'Martin','Mistery','Martinez',2,'15-06-1988',1,'MIMM8806155V3',5541836678,5611588222,'One Astor Plaza, Nueva York','N/A','Diabetes'); 
insert into Pacientes values(2,'Gregory','House','Baker',2,'11-06-1956',3,'HOBG560611PDA',5541836678,5611588222,'Estudios 20th Century Fox, USA','Amor','Discapacidad motriz');
insert into Pacientes values(3,'Eiji','Date','San',2,'3-07-1964',1,'DASE6407039L0',5512345678,5541966678,'2-12-21 Otowa,Bunkyo-ku Tokyo 112-8001 Japan','N/A','N/A');
insert into Pacientes values(4,'Luz','Jimenez','Escobedo',1,'29-11-1996',7,'JIEL961129EU8',5541836678,5611588222,'Andador s/n Mz 7 Lt 11','Polvo','N/A');
insert into Pacientes values(5,'Maximo','Decimo','Merilio',2,'05-05-2000',5,'DEMM000505MR8',5512345678,56545250,'1000 Flower Street, Glendale, California','Miedo',',Insuficiencia cardiaca');
insert into Pacientes values(6,'Escanor','Castellio','Sunshine',2,'01-07-1981',3,'EACS8107012W2',55987654321,58565452,'2-12-21 Otowa,Bunkyo-ku Tokyo 112-8001 Japan','N/A','N/A');
insert into Pacientes values(7,'Ricardo','Lopez','Nava',2,'25-07-1966',7,'RILN6607253Y4',55147258,55741852,'La Palma, 53695 Naucalpan de Juárez, Méx','N/A','N/A');
insert into Pacientes values(8,'Erica','Gonzalez','Gonzalez',1,'13-06-1973',1,'GOGE7306132Z3',56111111,5511111111,'Valencia 343 B, Nuevo Leon','Cacahuates','Hipertension');
insert into Pacientes values(9,'Luna','love','Good',2,'13-02-1981',1,'LOGL8102136A5',5555555555,5611223344,'Moctezuma 55, Del Carmen,CDMX','N/A','N/A');
insert into Pacientes values(10,'Lionel','Messi','Cuccittini',2,'24-06-1987',4,'MECL870624BF7',5577889944,5588224466,' Camp Nou, Carrer d Arstides Maillol España','N/A','Frio cardiaco');

create table Citas
(
num_cita smallint primary key,
num_pac_cita smallint not null,
fac_Cita TIMESTAMP not null,
Disponible smallint not null,


constraint "fk_paciente" foreign key (num_pac_cita) references Pacientes(num_pac),
constraint "fk_Disponible" foreign key (Disponible) references cat_Disponible(id_disp)
);
commit;
select * from Citas;
insert into Citas values (1,2,'10-12-2021 14:00',1);

create table Consulta
(
num_cons smallint primary key,
num_cita smallint,
sintomas varchar(100) not null,
diagnostico varchar(100) not null,
tratamiento varchar(100) not null,
Temp smallint,
Pres_sis smallint,
Pres_Dis smallint,
Niv_glu smallint,
Peso float(5),
Altu float(5),
Covid CHAR(1),
constraint "fk_cita" foreign key (num_cita) references Citas(num_cita)
);
commit;
select * from Consulta;
create table Receta
(
num_med_sur smallint primary key,
num_receta smallint not null,
id_med smallint not null,
cantidad_diaria smallint not null,
dias smallint not null,

constraint "fk_receta" foreign key (num_receta) references Consulta(num_cons),
constraint "fk_id_med" foreign key (id_med) references cat_Medicamento(id_medica)
);
commit;

insert into Receta values (1,1,11,3,5);
insert into Receta values (2,1,19,1,3);
insert into Receta values (3,1,15,1,3);
insert into Receta values (4,1,10,1,3);
    select * from Receta;
-- Codigo de pruebas
create or replace view viw_Historial
as
select
p.nom_pac as Nombre,
p.apa_pac as Paterno,
p.ama_pac as Materno,
c.fac_Cita as Fechas,
s.sintomas as Sintomas,
s.diagnostico as Diagnostico,
s.tratamiento as Tratamiento,
m.nom_medica  as Medicamentos
from Pacientes P, Citas C, Consulta S, cat_Medicamento M, Receta R
where P.num_pac = C.num_pac_cita
and C.num_cita = S.num_cita
and M.id_medica=R.id_med;
commit;
select * from viw_Historial

create or replace view viw_Personas
as
select
p.nom_pac as Nombre,
p.apa_pac as Paterno,
p.ama_pac as Materno,
p.alergias as Alergias,
s.tratamiento as Tratamiento,
m.nom_medica  as Medicamentos
from Pacientes P, Citas C, Consulta S, cat_Medicamento M, Receta R
where P.num_pac = C.num_pac_cita
and C.num_cita = S.num_cita
and M.id_medica=R.id_med;
commit;
select * from viw_Personas
create or replace view viw_Alergias
as
select
p.nom_pac as Nombre,
p.apa_pac as Paterno,
p.ama_pac as Materno,
p.alergias as Alergias,
from Pacientes P, Citas C, Consulta S, cat_Medicamento M, Receta R
where P.num_pac = C.num_pac_cita
and C.num_cita = S.num_cita
and M.id_medica=R.id_med;
commit;
select * from viw_Alergias