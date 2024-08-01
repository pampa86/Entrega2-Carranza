-- Vista 1--vista_alumnos_profesor


    
CREATE VIEW vista_alumnos_profesor AS
    SELECT a.Id_Alumno,a.Nombre,a.Apellido ,a.Edad,a.Direccion_Residencia,a.id_profesor,m.Nombre_Materia
    From alumnos a
   inner join 
   profesor p ON a.id_profesor= p.Id_Profesor
   inner join 
   materias m ON p.Id_Curricula= m.Id_Curricula;
   
--LLAMADA a La Vista:
Select * from vista_alumnos_profesor; 
   

-- Vista 2--vista_alumnos_tutoria


CREATE VIEW vista_alumnos_tutoria AS
    SELECT a.Id_Alumno,a.Nombre,a.Apellido ,a.Edad,a.Direccion_Residencia,m.Nombre_Materia
    From alumnos a
   inner join 
   calificaciones c ON a.Id_Alumno= c.Id_Alumno
   inner join 
   materias m ON c.Id_Curricula= m.Id_Curricula;
   
   --LLAMADA a La Vista:---
select * from  vista_alumnos_tutoria


    
    