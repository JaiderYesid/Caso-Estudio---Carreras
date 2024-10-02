DROP DATABASE IF EXISTS carreras;

CREATE DATABASE carreras CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE carreras;

CREATE TABLE Carrera (
id_carrera INT PRIMARY KEY AUTO_INCREMENT,
nombre_carrera VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL,
fecha DATE NOT NULL,
ubicacion VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL,
estado VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL
)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Automovil (
id_auto INT PRIMARY KEY AUTO_INCREMENT,
tipo_motor VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL,
CC INT NOT NULL,
HP INT NOT NULL,
tipo_frenos VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL,
carrera_id INT NOT NULL,
FOREIGN KEY (carrera_id) REFERENCES Carrera(id_carrera)
)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

 CREATE TABLE Piloto (
  id_piloto INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  edad INT NOT NULL,
  auto_id INT NOT NULL,
  carrera_id INT NOT NULL,
  FOREIGN KEY (auto_id) REFERENCES Automovil(id_auto),
  FOREIGN KEY (carrera_id) REFERENCES Carrera(id_carrera)
)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Equipo (
id_equipo INT PRIMARY KEY AUTO_INCREMENT,
nombre_equipo VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL,
piloto_id INT NOT NULL,
auto_id INT NOT NULL,
FOREIGN KEY (piloto_id) REFERENCES Piloto(id_piloto),
FOREIGN KEY (auto_id) REFERENCES Automovil(id_auto)
)CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;