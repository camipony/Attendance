CREATE DATABASE attendace;


CREATE TABLE sedes(
    sede_id SERIAL PRIMARY KEY,
    nombre VARCHAR(30),
    ubicacion TEXT
);

CREATE TABLE administrador(
    contraseña SERIAL PRIMARY KEY,
    nombre VARCHAR(30)
);

CREATE TABLE estudiantes(
    codigo SERIAL PRIMARY KEY,
    nombre VARCHAR(30),
    direccion TEXT
);

CREATE TABLE personal(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30),
    cargo VARCHAR(20),
    EPS VARCHAR(20),
    ARL VARCHAR(20),
    salario INTEGER,
    direccion TEXT
);

CREATE TABLE cursos(
    codigo SERIAL PRIMARY KEY,
    nombre TEXT
);

INSERT INTO sedes (nombre, ubicacion) VALUES
('Melendez - Cali', 'Calle 13 # 100-00');