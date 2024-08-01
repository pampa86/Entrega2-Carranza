--Función ObtenerNombreDeAlumno  -- Concatenar el nombre y el apellido
--READS SQL DATA lee datos de la base de datos, pero no los modifica

DELIMITER $$

CREATE FUNCTION ObtenerNombreDeAlumno(alu INT)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
    DECLARE Nom VARCHAR(100);
    DECLARE Apel VARCHAR(100);
    DECLARE NombreCompleto VARCHAR(200);
    
    SELECT Nombre,Apellido INTO Nom, Apel FROM alumnos WHERE Id_Alumno = alu;
    
   
	SET NombreCompleto = CONCAT(Nom, ' ', Apel);
    RETURN NombreCompleto;
    
END $$

DELIMITER ;

---llamada
 select * from alumnos
SELECT ObtenerNombreDeAlumno(3);

--Función ObtenerProfesorMateria  -- Concatenar el nombre y el apellido del Profesor
--Función OBTNER que profesor da determinada MATERIA--
DELIMITER $$
CREATE FUNCTION ObtenerProfesorMateria(Mat int)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
    DECLARE Nom VARCHAR(100);
    DECLARE Apel VARCHAR(100);
    DECLARE NombreCompleto VARCHAR(200);
    
    SELECT Nombre,Apellido INTO Nom, Apel FROM profesor WHERE Id_Curricula = Mat ;
    
	SET NombreCompleto = CONCAT(Nom, ' ', Apel);
    RETURN NombreCompleto;
    
END $$
DELIMITER ;


    select ObtenerProfesorMateria(2);
    select * from profesor