# deberes

//Base de Datos

-- Database: trigger

-- DROP DATABASE trigger;

CREATE DATABASE trigger
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Ecuador.1252'
    LC_CTYPE = 'Spanish_Ecuador.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE carros
(
	"idCarro" int NOT NULL,
	marca varchar(50),
	color varchar(50),
	placa varchar(50)
);

CREATE TABLE reg_carros
(
	"idRegCarro" int NOT NULL,
	marca varchar(50),
	color varchar(50),
	placa varchar(50)
);

select * from reg_carros;
select * from carros;

--funcion para el trigger
CREATE OR REPLACE FUNCTION actualizar() RETURNS trigger 
AS
$$
BEGIN 
	INSERT INTO "carros" VALUES (old.color, old.placa);
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

--crear trigger
CREATE TRIGGER TR_bIandU BEFORE INSERT OR UPDATE ON reg_carros
FOR EACH ROW 
EXECUTE PROCEDURE actualizar();

--probar triger --ojo--
UPDATE reg_carros SET
color = 'azul',
placa = 'PGF-5786'
WHERE color = 'negro'
       

