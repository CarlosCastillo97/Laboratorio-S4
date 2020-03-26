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
    