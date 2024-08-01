DELIMITER $$

CREATE FUNCTION ObtenerProfesorDeAlumno(alu INT)
RETURNS VARCHAR(300)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE respuesta VARCHAR(300) DEFAULT '';
    DECLARE profesor_nombre VARCHAR(45);
    DECLARE profesor_apellido VARCHAR(45);
    
    -- Manejar la situación en la que no se encuentra un profesor
    DECLARE CONTINUE HANDLER FOR NOT FOUND 
    SET respuesta = 'No se encontró el profesor para el alumno especificado';

    -- Seleccionar el nombre y apellido del profesor
    SELECT p.Nombre, p.Apellido
    INTO profesor_nombre, profesor_apellido
    FROM Alumnos a
    JOIN Profesor p ON a.id_profesor = p.Id_Profesor
    WHERE a.Id_Alumno = alu;

    -- Concatenar la respuesta si se encuentra el profesor
    IF respuesta = '' THEN
        SET respuesta = CONCAT('El profesor es ', profesor_nombre, ' ', profesor_apellido);
    END IF;

    RETURN respuesta;
END $$

DELIMITER ;


---llamada 
    SELECT ObtenerProfesorDeAlumno(1);
    
    select * from alumnos
	select * from materias
	select * from profesor
