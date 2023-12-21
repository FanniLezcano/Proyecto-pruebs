CREATE TABLE usuarios (
  id INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(350) DEFAULT NULL,
  contraseņa VARCHAR(350) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO usuarios (id, nombre, email, contraseņa)
VALUES (1, 'Usuario Prueba', 'ejemplo@email.com', 'contraseņa123');