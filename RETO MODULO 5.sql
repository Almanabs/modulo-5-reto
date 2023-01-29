DROP TABLE IF EXISTS pacientes_covid;
CREATE TABLE pacientes_covid(
	rut character varying(12) NOT NULL,
	nombre character varying(50),
	edad integer,
	dias_enfermo integer,
	fase integer,
	hospital character varying(255),
	PRIMARY KEY (rut)
);

insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('10-1', 'Pedro', 25, 10, 1, 'JJAGUIRRE');
insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('12-2', 'Mario', 33, 15, 2, 'JJAGUIRRE');
insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('13-3', 'Diego', 45, 22, 3, 'SANJOSE');
insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('14-4', 'Paula', 28, 18, 3, 'SANJOSE');
insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('15-5', 'Mariela', 32, 21, 3, 'SALVADOR');
insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('16-K', 'Patricia', 37, 2, 1, 'SANJUAN');
insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('17-7', 'Camila', 23, 12, 2, 'SANJUAN');
insert into pacientes_covid (rut, nombre, edad, dias_enfermo, fase, hospital) values ('18-8', 'Javiera', 31, 15, 2, 'SANJUAN');

SELECT * FROM pacientes_covid;

--1 LISTA DE LOS PACIENTES EN FASE 2 O 3
SELECT * FROM pacientes_covid WHERE fase >= 2;

--2 MOSTRAR PROMEDIO EDAD PACIENTES FASE 1
SELECT AVG(edad) as promedio_edad FROM pacientes_covid WHERE fase = 1;

--3 MOSTRAR LA MAYOR CANTIDAD DE DIAS ENFERMO QUE LLEVA UN PACIENTE EN FASE 3
SELECT MAX(dias_enfermo) FROM pacientes_covid WHERE fase = 3;

-- 4 MOSTRAR PROMEDIO DIAS ENFERMO PACIENTES EN FASE 2
SELECT AVG(dias_enfermo) FROM pacientes_covid WHERE fase = 2;

--5 MOSTRAR PACIENTES CON EDADES ENTRE 25 Y 39 QUE ESTEN EN LA FASE 1 O 3
SELECT * FROM pacientes_covid WHERE edad BETWEEN 25 AND 39 AND (fase = 1 OR fase = 3);

--6 MOSTRAR TODOS LOS PACIENTES CON RUT TERMINADO EN UN NUMERO QUE ESTEN EN UN HOSPITAL EMPEZADO EN S
SELECT * FROM pacientes_covid WHERE rut NOT LIKE '%K' AND hospital LIKE 'S%';

--7 MOSTRAR PROMEDIO EDAD PACIENTES MUJERES
SELECT AVG(edad) FROM pacientes_covid WHERE nombre NOT LIKE '%o%';

--8 MOSTRAR LA CANTIDAD TOTAL DE PACIENTES QUE ESTAN EN FASE 1 O 3
SELECT COUNT(*)
FROM pacientes_covid
WHERE fase = 1 OR fase = 3;
