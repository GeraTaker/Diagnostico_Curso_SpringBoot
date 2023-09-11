-- COngiguracion de la base de datos
CREATE DATABASE diagnostico;
CREATE USER 'diagnostico'@'localhost' IDENTIFIED BY 'Snd873hdbyuwd287hdb82338';
GRANT ALL PRIVILEGES ON nombre_de_tu_base_de_datos.* TO 'diagnostico'@'localhost';
FLUSH PRIVILEGES;



-- una lista de estado que no se van a repetir 
CREATE TABLE estado(
    estado_id int AUTO_INCREMENT,
    nombre varchar(20) not null,
    CONSTRAINT PK_estado primary key (estado_id)
);

-- tareas 
CREATE TABLE tareas(
    tarea_id int AUTO_INCREMENT,
    descripcion varchar(50) not null,
    estado_id int NOT NULL,
    CONSTRAINT PK_tarea primary key (tarea_id),
    CONSTRAINT PK_tarea foreign key (estado_id) references estado(estado_id)
);