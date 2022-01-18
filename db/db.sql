
CREATE DATABASE postgres;

CREATE TABLE sedes(
    id_sede SERIAL PRIMARY KEY,
    nombre VARCHAR(30),
    ubicacion TEXT
);

CREATE TABLE administrador(
    contraseña SERIAL PRIMARY KEY,
    nombre VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS pertenencia( 
    id_sede serial PRIMARY KEY, 
    contraseña INT NOT NULL,
    FOREIGN KEY (contraseña) 
    REFERENCES administrador(contraseña));

CREATE TABLE asistencia(
    id SERIAL PRIMARY KEY,
    id_sede INT NOT NULL,
    estado_asistencia VARCHAR(4),
    fecha  DATE NOT NULL, 
    hora TIME NOT NULL,
    FOREIGN KEY (id_sede) 
    REFERENCES sedes(id_sede)
);

CREATE TABLE estudiantes(
    codigo SERIAL PRIMARY KEY,
    nombre VARCHAR(30),
    direccion TEXT
);

CREATE TABLE personal(
    id_persona SERIAL PRIMARY KEY,
    nombre VARCHAR(30),
    cargo VARCHAR(20),
    EPS VARCHAR(20),
    ARL VARCHAR(20),
    salario INTEGER,
    direccion TEXT
);

CREATE TABLE cursos(
    codigo_cur SERIAL PRIMARY KEY,
    nombre TEXT
);

CREATE TABLE matriculacion(
    codigo_est SERIAL PRIMARY KEY,
    codigo_cur INT NOT NULL,
    FOREIGN KEY (codigo_cur)
    REFERENCES cursos(codigo_cur)
);


/*DROP TABLE asistencia; Delete a table*/

INSERT INTO sedes (nombre, ubicacion) VALUES
('Caicedonia', 'Calle 4B # 36-00'),
('Melendez - Cali', 'Calle 13 # 100-00');

INSERT INTO administrador (contraseña, nombre) VALUES
('123456', 'Edgar Varela'),
('203829' , 'Sandra Aguirre');

INSERT INTO estudiantes (codigo, nombre, direccion) VALUES
('2025987', 'Maria Camila Rodriguez', 'Carrera 83D #53A'),
('2021307', 'Sam Emiliano Rodriguez', 'Carrera 82D #50B-34');

INSERT INTO personal (nombre, cargo, EPS, ARL, salario, direccion) VALUES
('Jefferson Amado', 'Profesor', 'EPS Sanitas', 'Sura', '2500000', 'Cra 15B #13a'),
('Monica Gomez', 'Guarda de seguridad', 'EPS Sanitas', 'Seguros Bolivar', '1200000', 'Calle 18a #32b-12');

INSERT INTO cursos (codigo_cur, nombre) VALUES 
('730001', 'Introducción a la tecnología de sistemas'),
('758000', 'Sistemas operativos');

INSERT INTO asistencia (id, id_sede, estado_asistencia, fecha, hora) VALUES 
('2025987', '1', 'OK', '2022/01/11', '18:00:00'),
('2', '2', 'OK', '2022/01/15', '10:00:00');

INSERT INTO pertenencia (id_sede, contraseña) VALUES 
('1', '123456'),
('2', '203829');

INSERT INTO matriculacion (codigo_est, codigo_cur) VALUES 
('2025987', '730001'),
('2021307', '758000');

/*Consultas */

SELECT * FROM sedes;
SELECT * FROM estudiantes;
SELECT * FROM cursos;
SELECT * FROM asistencia;