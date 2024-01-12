CREATE TABLE noticias (
    id CHAR(36) PRIMARY KEY,
    rutaimagen VARCHAR(400),
    descripcion VARCHAR(1000),
    contenido LONGTEXT,
    fecha_publicacion DATETIME
);
