CREATE DATABASE bd_ins;
USE bd_ins;
CREATE TABLE alumnos
(
	ID int(20) auto_increment,
    NombreAlumno VARCHAR(60) NOT NULL,
    Grupo VARCHAR(60) NOT NULL,
    PRIMARY KEY (NombreAlumno)
	) ENGINE=innoBD DEFAULT CHARSET=latin1;

CREATE TABLE estudiantes
(	
	ID int(20) auto_increment,
    NombreEstudiante VARCHAR(60) NOT NULL,
    Grupo VARCHAR(60) NOT NULL,
    PRIMARY KEY (NombreEstudiante)
    ) ENGINE=innoDB DEFAULT CHARSET=latin1;