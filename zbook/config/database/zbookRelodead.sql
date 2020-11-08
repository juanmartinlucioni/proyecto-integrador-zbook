-- CREAR SCHEMA EN MYSQL WORKBENCH
CREATE SCHEMA `zbook` ;

-- CREAR TABLA USUARIOS
CREATE TABLE `zbook`.`usuarios` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(25) NOT NULL,
  `password` VARCHAR(256) NOT NULL,
  `email` VARCHAR(99) NOT NULL,
  `age` INT UNSIGNED NOT NULL,
  `birthday` DATE NOT NULL,
  `profilepicture` VARCHAR(999) NOT NULL,
  `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

-- CREAR TABLA POSTS
CREATE TABLE `zbook`.`post` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idusuario` INT UNSIGNED NOT NULL,
  `textoPost` VARCHAR(140) NULL,
  `fechaCreacion` DATE NOT NULL,
  `url` VARCHAR(999) NOT NULL,
  `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `idusuarios`
    FOREIGN KEY (`idusuario`)
    REFERENCES `zbook`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- CREAR TABLA COMENTARIOS
CREATE TABLE `zbook`.`comments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idpost` INT UNSIGNED NOT NULL,
  `idusuario` INT UNSIGNED NOT NULL,
  `texto` VARCHAR(140) NOT NULL,
  `fechaCreacion` DATE NOT NULL,
  `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `post`
    FOREIGN KEY (`idpost`)
    REFERENCES `zbook`.`post` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarios`
    FOREIGN KEY (`idusuario`)
    REFERENCES `zbook`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- LLENAR TABLA USUARIOS
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'JuanMartin', '91142069', 'juanmartinlucioni@gmail.com', 23, '1996-12-23', '/images/profilepicstemp/1-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Jim', '91142069', 'jim@gmail.com', 19, '2001-04-23', '/images/profilepicstemp/2-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Matias', '91142069', 'mati@gmail.com', 20, '2000-05-26', '/images/profilepicstemp/3-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'MadisonBeer', '91142069', 'madison@gmail.com', 24, '1996-04-12', '/images/profilepicstemp/4-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Cristiano', '91142069', 'cris@gmail.com', 35, '1985-01-05', '/images/profilepicstemp/5-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Pepson', '91142069', 'pepinilla@gmail.com', 18, '2002-03-03', '/images/profilepicstemp/6-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Boquita', '91142069', 'elmasgrande@gmail.com', 21, '1905-12-12', '/images/profilepicstemp/7-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Nicky', '91142069', 'nicole@gmail.com', 114, '1999-04-04', '/images/profilepicstemp/8-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'FeliRattagan', '91142069', 'felu@gmail.com', 18, '2002-02-06', '/images/profilepicstemp/9-pp.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'FakeHachita', '91142069', 'hachita@gmail.com', 30, '1990-12-23', '/images/profilepicstemp/10-pp.jpg',DEFAULT,DEFAULT);

-- LLENAR TABLA POSTS
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'Hachi Love', '2020-10-20', '/images/poststemp/1-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'Sabadooooo', '2020-09-17', '/images/poststemp/1-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'dance', '2020-08-16', '/images/poststemp/1-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'flexing', '2020-07-20', '/images/poststemp/1-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'upside down bros', '2020-05-29', '/images/poststemp/1-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'beach volley', '2020-03-05', '/images/poststemp/1-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'ski time', '2020-02-17', '/images/poststemp/1-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, '@davidguetta chupala', '2019-05-17', '/images/poststemp/1-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'TQ night', '2018-09-15', '/images/poststemp/1-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'going to the upside down', '2018-05-10', '/images/poststemp/1-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'bros', '2020-11-02', '/images/poststemp/2-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'bros 2: electric boogaloo', '2020-10-23', '/images/poststemp/2-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'bros 3: reloaded', '2020-09-07', '/images/poststemp/2-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'bros (reboot)', '2020-08-11', '/images/poststemp/2-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'bros 5: never dies', '2020-07-18', '/images/poststemp/2-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'bros 6: la revancha', '2020-05-17', '/images/poststemp/2-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'brothers', '2020-04-25', '/images/poststemp/2-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'ski time', '2020-03-30', '/images/poststemp/2-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'brazil', '2020-03-16', '/images/poststemp/2-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'miami', '2020-01-20', '/images/poststemp/2-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'teatroo', '2020-11-01', '/images/poststemp/3-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'teatroooo', '2020-10-20', '/images/poststemp/3-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'mi amigo yankee', '2020-09-17', '/images/poststemp/3-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'evening', '2020-08-15', '/images/poststemp/3-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'teatro', '2020-07-05', '/images/poststemp/3-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'de fiesta!', '2020-05-23', '/images/poststemp/3-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'aguante el grupo 11', '2020-04-05', '/images/poststemp/3-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'con la flia', '2020-03-18', '/images/poststemp/3-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'que viajecito ehh!', '2020-03-26', '/images/poststemp/3-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'casual beach day', '2020-01-10', '/images/poststemp/3-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'cute', '2020-11-02', '/images/poststemp/4-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'sisters', '2020-10-23', '/images/poststemp/4-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'gracias german por el baño de crema', '2020-09-07', '/images/poststemp/4-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'en el estudio', '2020-08-11', '/images/poststemp/4-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, '<3', '2020-07-18', '/images/poststemp/4-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'dont call me baby', '2020-05-17', '/images/poststemp/4-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'gracias por este foton', '2020-04-25', '/images/poststemp/4-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'no need no man', '2020-03-30', '/images/poststemp/4-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'so nervous', '2020-03-16', '/images/poststemp/4-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'thank you albert, pero te olvidaste el jugo de naranja', '2020-01-20', '/images/poststemp/4-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'pela3', '2020-11-01', '/images/poststemp/5-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'esperando a que messi meta un penal', '2020-10-03', '/images/poststemp/5-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'ni covid me frena', '2020-09-27', '/images/poststemp/5-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'relax', '2020-08-21', '/images/poststemp/5-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'lets go!', '2020-07-28', '/images/poststemp/5-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'fino alla fine', '2020-05-07', '/images/poststemp/5-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'chilleando', '2020-04-15', '/images/poststemp/5-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'posando', '2020-03-01', '/images/poststemp/5-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'TRAGATE ESTA MESSI', '2020-03-26', '/images/poststemp/5-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'aca con Jr', '2020-01-02', '/images/poststemp/5-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'tutti', '2020-10-22', '/images/poststemp/6-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'sleepy', '2020-10-12', '/images/poststemp/6-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'luli', '2020-09-13', '/images/poststemp/6-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'con miu', '2020-08-24', '/images/poststemp/6-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'navidad me espera', '2020-07-08', '/images/poststemp/6-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'durmiendo', '2020-05-27', '/images/poststemp/6-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'luxury', '2020-04-15', '/images/poststemp/6-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'miu <3', '2020-03-17', '/images/poststemp/6-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'best friends', '2020-03-06', '/images/poststemp/6-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 6, 'jugar?', '2020-01-25', '/images/poststemp/6-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'entrenamiento', '2020-11-05', '/images/poststemp/7-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'feliz cumple Martin!', '2020-10-04', '/images/poststemp/7-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'convocados', '2020-09-30', '/images/poststemp/7-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'frank', '2020-08-01', '/images/poststemp/7-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'carlo', '2020-07-07', '/images/poststemp/7-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'el mejor arquero de argentina', '2020-05-25', '/images/poststemp/7-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'vamo buffa', '2020-04-26', '/images/poststemp/7-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'entrenando', '2020-03-21', '/images/poststemp/7-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'feliz cumple Cali', '2020-03-03', '/images/poststemp/7-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 7, 'Golazo de wancho', '2020-01-07', '/images/poststemp/7-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'felt cute', '2020-11-06', '/images/poststemp/8-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'cool', '2020-10-14', '/images/poststemp/8-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'nuevo outfit', '2020-09-05', '/images/poststemp/8-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'b&w: la revancha', '2020-08-09', '/images/poststemp/8-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'con mi amiga', '2020-07-25', '/images/poststemp/8-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'viajesito', '2020-05-21', '/images/poststemp/8-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, '<3', '2020-04-30', '/images/poststemp/8-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, '23', '2020-03-02', '/images/poststemp/8-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'galeria de arte', '2020-02-01', '/images/poststemp/8-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 8, 'b&w', '2020-01-22', '/images/poststemp/8-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'miami', '2020-11-03', '/images/poststemp/9-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'viajesitoooo', '2020-10-24', '/images/poststemp/9-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'la france', '2020-09-09', '/images/poststemp/9-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'sissssss', '2020-08-14', '/images/poststemp/9-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'que paisaje', '2020-07-15', '/images/poststemp/9-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'london!', '2020-05-18', '/images/poststemp/9-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'mejores amigasss', '2020-04-29', '/images/poststemp/9-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'pde', '2020-03-17', '/images/poststemp/9-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'lolla', '2020-03-15', '/images/poststemp/9-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 9, 'hachis <3', '2020-01-18', '/images/poststemp/9-10.jpg',DEFAULT,DEFAULT);

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'hugs', '2020-11-01', '/images/poststemp/10-1.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'curioseando', '2020-10-03', '/images/poststemp/10-2.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'gardening', '2020-09-16', '/images/poststemp/10-3.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'siesta', '2020-08-06', '/images/poststemp/10-4.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'jugar?', '2020-07-22', '/images/poststemp/10-5.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'paseo', '2020-05-24', '/images/poststemp/10-6.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'pileta?', '2020-04-05', '/images/poststemp/10-7.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'paseando', '2020-03-05', '/images/poststemp/10-8.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'happy', '2020-03-26', '/images/poststemp/10-9.jpg',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 10, 'baby', '2020-01-22', '/images/poststemp/10-10.jpg',DEFAULT,DEFAULT);


-- LLENAR TABLA COMMENTS
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 1,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25",DEFAULT,DEFAULT);
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 1,"puede ser pa? se lleno la vecindad brother","2020-09-25",DEFAULT,DEFAULT);
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 1,"picantovich esas llantas padre","2020-09-25",DEFAULT,DEFAULT);
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 1,"cuidado con la luz fantasma","2020-09-25",DEFAULT,DEFAULT);