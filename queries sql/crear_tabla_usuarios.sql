CREATE TABLE usuarios (
  id INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(350) DEFAULT NULL,
  contrase�a VARCHAR(350) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO usuarios (id, nombre, email, contrase�a)
VALUES (1, 'Usuario Prueba', 'ejemplo@email.com', 'contrase�a123');