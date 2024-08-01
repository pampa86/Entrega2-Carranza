USE PROYECTO_COLEGIO;
create or replace view
proyecto_colegio.view_administracion
AS (
SELECT
    Id_Alumno
,    Nombre
, Apellido
,id_profesor
FROM proyecto_colegio.alumnos
LIMIT 10
);