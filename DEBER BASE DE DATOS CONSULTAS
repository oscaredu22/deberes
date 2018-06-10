# deberes

//DEBER DE BASE DE DATOS CONSULTAS

-- Database: futbol

-- DROP DATABASE futbol;

CREATE DATABASE futbol
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Ecuador.1252'
    LC_CTYPE = 'Spanish_Ecuador.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

--crear tabla
CREATE TABLE jugadores(
	nombre varchar (50),
	fechaNacimiento date,
	dorsal int,
	sueldo money,
	estatura float,
	caracteristicas text
)

--dar valores
INSERT INTO public.jugadores(
	nombre, fechanacimiento, dorsal, sueldo, estatura, caracteristicas)
	VALUES ('Marcelo', '1998/06/03', '22', '500,00', '1.75', 'delantero');
	
--consulta sobre la tabla creada
SELECT * FROM jugadores;

--añadir un valor a la columna 'equipo'
update jugadores set equipo = 'manchester city'

--crar una columna nueva
ALTER TABLE jugadores
add column equipo varchar (50)

--añadir not null a una columna
ALTER TABLE jugadores
alter column equipo set not null;

--quitar not null
ALTER TABLE jugadores
alter column equipo drop not null

--borrar una columna
ALTER TABLE jugadores
drop column sueldo
