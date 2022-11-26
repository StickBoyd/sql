CREATE DATABASE worldcup;

USE DATABASE worldcup;

CREATE TABLE jugadores(
    id_jugadores INT NOT NULL,
    nombres VARCHAR NOT NULL,
    apellido VARCHAR NOT NULL,
    PRIMARY KEY(id_jugadores));

CREATE TABLE selecciones(
    id_selecciones INT NOT NULL,
    pais VARCHAR NOT NULL,
    copas_ganadas INT NOT NULL,
    PRIMARY KEY(id_selecciones)
    FOREIGN KEY (id_jugadores)
    REFERENCES jugadores(id_jugadores));

CREATE TABLE grupos(
    id_grupos INT NOT NULL,
    instancia VARCHAR NOT NULL,
    fecha DATETIME NOT NULL,
    PRIMARY KEY(id_grupos)
    FOREIGN KEY (id_selecciones)
    REFERENCES selecciones(id_selecciones));

CREATE TABLE estadios(
    id_estadios INT NOT NULL,
    localizacion VARCHAR NOT NULL,
    capacidad INT NOT NULL,
    PRIMARY KEY(id_estadios),
    FOREIGN KEY (id_grupos) 
    REFERENCES grupos(id_grupos));

INSERT INTO jugadores(nombres,apellido)
VALUES ("Lionel", "Messi");

INSERT INTO selecciones(pais,copas_ganadas)
VALUES ("Argentina",2);

INSERT INTO grupos(instancia,fecha)
VALUES ("Cuartos","2022-11-30");

INSERT INTO estadios(localizacion,capacidad)
VALUES ("Doha",80000);
