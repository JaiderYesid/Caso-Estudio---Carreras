USE carreras;
SELECT * FROM carrera;
INSERT INTO carrera (nombre_carrera, fecha, ubicacion, estado) VALUES
('le mans', '2024-10-20', 'Circuito de la Sarthe', 'Programado'),
('Evento sandero', '2024-10-30', 'Autodromo Tocancipa', 'Programado'),
('Tourism', '2024-11-12', 'Estaados Unidos', 'Programado'),
('F1', '2024-11-21', 'Alemania', 'Programado');

USE carreras;
SELECT * FROM automovil;
INSERT INTO automovil (tipo_motor, CC, HP, tipo_frenos, carrera_id) VALUES
('hibrido', 1800, 650, 'ABS', 1),
('combustion interna', 1600, 320, 'CBS', 2),
('hibrido', 2000, 400, 'electroasistido', 3),
('hibrido', 2100, 600, 'ABS', 4);

USE carreras;
SELECT * FROM piloto;
INSERT INTO piloto (nombre, edad, auto_id, carrera_id) VALUES
('Jaider', 20, 1, 3),
('Dayan', 25, 2, 2),
('Yesid', 32, 3, 1),
('Rivera', 26, 4, 4);

USE carreras;
SELECT * FROM equipo;
INSERT INTO equipo (nombre_equipo, piloto_id, auto_id) VALUES
('Ford', 1, 1),
('Chevrolet', 2, 2),
('Mercedes Benz', 3, 3),
('Porshe', 4, 4);