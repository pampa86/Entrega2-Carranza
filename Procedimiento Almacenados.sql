--Procedimiento Almacenado Ver Materias actuales dictandose en dicha INSTITUCIÓN.

use proyecto_colegio;
DELIMITER $$

create procedure VerMaterias()

BEGIN
	SELECT * FROM MATERIAS;
END$$    
DELIMITER ;

--llamada
call VerMaterias ();

----Procedimiento Almacenado Obtener datos de Alumnos ingresando su ID.

DELIMITER $$

create procedure GetAlumnos( IN Id_Alum INT)

BEGIN
	SELECT * FROM alumnos where Id_Alumno= Id_Alum ;
END$$    
DELIMITER ;

--LLAMADA A PROCEDURE GetAlumnos

CALL GetAlumnos(3);


---Insertar un NUEVO ALUMNO y LUEGO VALIDAR EL NUEVO ALUMNO CREADO.
DELIMITER $$

create procedure GuardarAlumno( IN 
Id_Alum INT,
name varchar(50),
Apel varchar(50),
Ed int,
dire varchar(50),
id_prof int)

BEGIN
	INSERT INTO alumnos( Id_Alumno,Nombre,Apellido ,Edad  ,Direccion_Residencia ,id_profesor)
    VALUES(Id_Alum ,name ,Apel ,Ed ,dire ,id_prof );
	SELECT * FROM alumnos where Id_Alumno= Id_Alum ;
END$$    
DELIMITER ;

--llamada 
call GuardarAlumno(null,'Patricio','Martinez', 14 , 'Rivadavía' ,44 );

--Validación de ALUMNO CREADO.
select * from alumnos

