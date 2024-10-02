#Joins
USE carreras;
#Piloto con el tipo de motor que va a conducir
SELECT piloto.nombre AS nombre_piloto, automovil.tipo_motor FROM piloto INNER JOIN automovil ON piloto.auto_id = automovil.id_auto;
#Nombre de equipo con su piloto y en que carrera va a participar
SELECT equipo.nombre_equipo, piloto.nombre AS nombre_piloto, carrera.nombre_carrera FROM equipo JOIN Piloto ON equipo.piloto_id = piloto.id_piloto JOIN Carrera ON piloto.carrera_id=carrera.id_carrera;

#Sencillas 
USE carreras;
SELECT id_auto, tipo_motor FROM Automovil;
SELECT nombre, edad FROM piloto;

#Subconsultas
USE carreras;
#Piloto que participa en la carrera mas reciente
SELECT nombre FROM piloto WHERE carrera_id = (SELECT id_carrera FROM carrera ORDER BY fecha DESC LIMIT 1);
#Muestra los automoviles que tengas mas de 2000 en CC
SELECT * FROM automovil WHERE id_auto IN (SELECT auto_id FROM piloto WHERE CC >= 2000);