USE bd_ins;

CREATE TABLE estudiantes
(	
	CodigoCarnet VARCHAR (20) PRIMARY KEY,
    NombreEstudiante VARCHAR(60) NOT NULL,
    DireccionEstudiante VARCHAR (60) NOT NULL,
    TelefonoEstudiante VARCHAR(60) NOT NULL,
    CorreoElectronicoEstudiante VARCHAR(60),
    EstatusEstudiante VARCHAR(30)
    ) ENGINE=InnoDB;
    
    
CREATE TABLE maestros
(
	ID int(20) auto_increment,
    NombreMaestro VARCHAR(60) NOT NULL,
    Grupo VARCHAR(60) NOT NULL,
    PRIMARY KEY (NombreMaestro)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;