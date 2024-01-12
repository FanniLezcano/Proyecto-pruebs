CREATE TABLE agentesInmobiliarios (
    id CHAR(36) NOT NULL,
    nombres VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    genero VARCHAR(50),
    edad INT,
    correoElectronico VARCHAR(255),
    numeroCelular VARCHAR(15),
    nivelIngles VARCHAR(50),
    ubicacion VARCHAR(255),
    comoEnterado VARCHAR(255),
    interesRemax TEXT,
    fechaRegistro DATETIME,
    PRIMARY KEY (id)
);
