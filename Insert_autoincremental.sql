
--insert MATERIAS
INSERT MATERIAS (Id_Curricula,Nombre_Materia)
VALUES ( 1,'LENGUA');
INSERT MATERIAS (Id_Curricula,Nombre_Materia)
VALUES ( 2,'CIENCIAS');
INSERT MATERIAS (Id_Curricula,Nombre_Materia)
VALUES ( 3,'MATEMATICAS');

--INSERT PROFESORES
INSERT PROFESOR (Id_Profesor, email, Nombre, Apellido,Edad,Direccion_Residencia,Id_Curricula,Id_Alumno)
VALUES (10,'lengua@gmail.com','Tomas','Perez',42,'Rivera 150',1,1);

INSERT PROFESOR (Id_Profesor, email, Nombre, Apellido,Edad,Direccion_Residencia,Id_Curricula,Id_Alumno)
VALUES (11,'ciencias@gmail.com','Jose','Lopez',38,'Viso 500',2,2);

INSERT PROFESOR (Id_Profesor, email, Nombre, Apellido,Edad,Direccion_Residencia,Id_Curricula,Id_Alumno)
VALUES (44,'matematicas@gmail.com','Maria','Asuncion',50,'Cabrera 10',3,3);


--INSERT ALUMNOS
INSERT alumnos(Id_Alumno,Nombre,Apellido,Edad,Direccion_Residencia,id_profesor)
VALUES (1,'Romina', 'Carranza', 38, 'J.A.Sarachaga' , 10);

INSERT alumnos(Nombre,Apellido,Edad,Direccion_Residencia,id_profesor)
VALUES ('Ana', 'Santamarina',10 ,'J.A.Sarachaga 1166' ,11 );

INSERT alumnos(Nombre,Apellido,Edad,Direccion_Residencia,id_profesor)
VALUES ('Carolina', 'Sanz',10 ,'Gral Paz 6' ,44 );

--select
select * from alumnos;
select * from profesor;