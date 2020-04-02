DROP DATABASE planilla_bd;
CREATE DATABASE planilla_bd;
USE planilla_bd;

CREATE TABLE puesto_25344 (
	codigo_puesto VARCHAR(5),
    nombre_puesto VARCHAR(50),
    estatus_puesto VARCHAR(1),
    PRIMARY KEY (codigo_puesto)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE departamento_25344 (
	codigo_departamento VARCHAR(5),
    nombre_departamento VARCHAR(50),
    estatus_departamento VARCHAR(1),
    PRIMARY KEY (codigo_departamento)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE concepto_25344 (
	codigo_concepto VARCHAR(5),
    nombre_concepto VARCHAR(50),
    efecto_concepto VARCHAR(1),
    estatus_concepto VARCHAR(1),
    PRIMARY KEY (codigo_concepto)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE empleado_25344 (
	codigo_empleado VARCHAR(5),
    nombre_empleado VARCHAR(60),
    codigo_puesto VARCHAR (5),
    codigo_departamento VARCHAR(5),
    sueldo_empleado FLOAT(10,2),
    estatus_empleado VARCHAR(1),
    PRIMARY KEY (codigo_empleado),
    FOREIGN KEY (codigo_puesto) REFERENCES puesto_25344 (codigo_puesto),
    FOREIGN KEY (codigo_departamento) REFERENCES departamento_25344 (codigo_departamento)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE nominaE_25344 (
	codigo_nomina VARCHAR(5),
    fecha_inicial_nomina DATE,
    fecha_final_nomina DATE,
    PRIMARY KEY (codigo_nomina)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE nominaD_25344 (
    codigo_nomina VARCHAR(5),
    codigo_empleado VARCHAR(5),
    codigo_concepto VARCHAR(5),
    valor_nominaD FLOAT(10,2),
    PRIMARY KEY (codigo_nomina , codigo_empleado, codigo_concepto),
    FOREIGN KEY (codigo_nomina) REFERENCES nominaE_25344 (codigo_nomina),
	FOREIGN KEY (codigo_empleado) REFERENCES empleado_25344 (codigo_empleado),
    FOREIGN KEY (codigo_concepto) REFERENCES concepto_25344 (codigo_concepto)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;
    