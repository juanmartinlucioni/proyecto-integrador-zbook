-- CREAR SCHEMA EN MYSQL WORKBENCH
CREATE SCHEMA `zbook` ;

-- CREAR TABLA USUARIOS
CREATE TABLE `zbook`.`usuarios` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(12) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `age` INT UNSIGNED NOT NULL,
  `birthday` DATE NOT NULL,
  `profilepicture` VARCHAR(999) NOT NULL,
  PRIMARY KEY (`id`));

-- CREAR TABLA POSTS
CREATE TABLE `zbook`.`post` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `idusuario` INT UNSIGNED NOT NULL,
  `textoPost` VARCHAR(140) NULL,
  `fechaCreacion` DATE NOT NULL,
  `url` VARCHAR(999) NOT NULL,
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
VALUES (DEFAULT, 'RayoMcQueen', 'copapiston', 'rayo@radiadorsprings.com', 24, '1996-05-06', '/images/profilepicstemp/1.jpg ');
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Mate', 'retrovisor', 'mate@radiadorsprings.com', 26, '1994-12-25', '/images/profilepicstemp/2.jpg ');
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Sally', 'cozycone', 'sally@radiadorsprings.com', 24, '1996-02-28', '/images/profilepicstemp/3.jpeg ');
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Francesco', 'fiaummmm', 'velocidad@detuttoilmundo.com', 23, '1996-12-23', '/images/profilepicstemp/4.png ');
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'DocH', 'doblaralreves', 'doc@radiadorsprings.com', 62, '1958-02-01', '/images/profilepicstemp/5.jpg ');

-- LLENAR TABLA POSTS
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'Soy Veloz', '2020-09-15', '/images/poststemp/1.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'you have no idea how fast i am? ', '2020-09-17', '/images/poststemp/2.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'plane goes BRRRRRR', '2020-09-11', '/images/poststemp/3.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'i was speed', '2020-08-01', '/images/poststemp/4.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'por cada like se salvaran 1000 autos en africa', '2020-06-09', '/images/poststemp/5.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'felt cute, might delete later', '2020-04-20', '/images/poststemp/6.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'Me hice las gomas', '2020-09-24', '/images/poststemp/7.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'El desayuno de un campeón', '2020-08-30', '/images/poststemp/8.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'Nos vemos en la Copa Piston 2021', '2020-09-05', '/images/poststemp/9.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 1, 'Fake News', '2020-08-12', '/images/poststemp/10.jpeg ');

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'Soy Veloz', '2020-09-15', '/images/poststemp/1.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'you have no idea how fast i am? ', '2020-09-17', '/images/poststemp/2.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'plane goes BRRRRRR', '2020-09-11', '/images/poststemp/3.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'i was speed', '2020-08-01', '/images/poststemp/4.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'por cada like se salvaran 1000 autos en africa', '2020-06-09', '/images/poststemp/5.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'felt cute, might delete later', '2020-04-20', '/images/poststemp/6.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'Me hice las gomas', '2020-09-24', '/images/poststemp/7.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'El desayuno de un campeón', '2020-08-30', '/images/poststemp/8.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'Nos vemos en la Copa Piston 2021', '2020-09-05', '/images/poststemp/9.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 2, 'Fake News', '2020-08-12', '/images/poststemp/10.jpeg ');

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'Soy Veloz', '2020-09-15', '/images/poststemp/1.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'you have no idea how fast i am? ', '2020-09-17', '/images/poststemp/2.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'plane goes BRRRRRR', '2020-09-11', '/images/poststemp/3.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'i was speed', '2020-08-01', '/images/poststemp/4.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'por cada like se salvaran 1000 autos en africa', '2020-06-09', '/images/poststemp/5.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'felt cute, might delete later', '2020-04-20', '/images/poststemp/6.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'Me hice las gomas', '2020-09-24', '/images/poststemp/7.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'El desayuno de un campeón', '2020-08-30', '/images/poststemp/8.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'Nos vemos en la Copa Piston 2021', '2020-09-05', '/images/poststemp/9.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 3, 'Fake News', '2020-08-12', '/images/poststemp/10.jpeg ');

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'Soy Veloz', '2020-09-15', '/images/poststemp/1.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'you have no idea how fast i am? ', '2020-09-17', '/images/poststemp/2.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'plane goes BRRRRRR', '2020-09-11', '/images/poststemp/3.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'i was speed', '2020-08-01', '/images/poststemp/4.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'por cada like se salvaran 1000 autos en africa', '2020-06-09', '/images/poststemp/5.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'felt cute, might delete later', '2020-04-20', '/images/poststemp/6.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'Me hice las gomas', '2020-09-24', '/images/poststemp/7.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'El desayuno de un campeón', '2020-08-30', '/images/poststemp/8.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'Nos vemos en la Copa Piston 2021', '2020-09-05', '/images/poststemp/9.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 4, 'Fake News', '2020-08-12', '/images/poststemp/10.jpeg ');

INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'Soy Veloz', '2020-09-15', '/images/poststemp/1.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'you have no idea how fast i am? ', '2020-09-17', '/images/poststemp/2.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'plane goes BRRRRRR', '2020-09-11', '/images/poststemp/3.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'i was speed', '2020-08-01', '/images/poststemp/4.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'por cada like se salvaran 1000 autos en africa', '2020-06-09', '/images/poststemp/5.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'felt cute, might delete later', '2020-04-20', '/images/poststemp/6.png ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'Me hice las gomas', '2020-09-24', '/images/poststemp/7.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'El desayuno de un campeón', '2020-08-30', '/images/poststemp/8.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'Nos vemos en la Copa Piston 2021', '2020-09-05', '/images/poststemp/9.jpg ');
INSERT INTO `zbook`.`post`
VALUES (DEFAULT, 5, 'Fake News', '2020-08-12', '/images/poststemp/10.jpeg ');

-- LLENAR TABLA COMENTARIOS
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 1, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 2, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 2, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 2, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 2, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 3, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 3, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 3, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 3, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 4, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 4, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 4, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 4, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 5, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 5, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 5, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 5, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 6, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 6, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 6, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 6, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 7, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 7, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 7, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 7, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 8, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 8, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 8, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 8, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 9, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 9, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 9, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 9, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 10, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 10, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 10, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 10, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 11, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 11, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 11, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 11, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 12, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 12, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 12, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 12, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 13, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 13, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 13, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 13, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 14, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 14, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 14, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 14, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 15, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 15, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 15, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 15, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 16, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 16, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 16, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 16, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 17, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 17, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 17, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 17, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 18, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 18, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 18, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 18, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 19, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 19, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 19, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 19, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 20, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 20, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 20, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 20, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 21, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 21, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 21, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 21, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 22, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 22, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 22, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 22, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 23, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 23, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 23, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 23, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 24, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 24, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 24, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 24, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 25, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 25, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 25, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 25, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 26, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 26, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 26, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 26, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 27, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 27, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 27, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 27, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 28, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 28, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 28, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 28, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 29, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 29, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 29, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 29, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 30, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 30, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 30, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 30, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 31, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 31, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 31, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 31, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 32, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 32, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 32, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 32, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 33, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 33, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 33, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 33, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 34, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 34, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 34, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 34, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 35, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 35, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 35, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 35, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 36, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 36, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 36, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 36, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 37, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 37, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 37, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 37, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 38, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 38, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 38, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 38, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 39, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 39, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 39, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 39, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 40, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 40, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 40, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 40, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 41, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 41, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 41, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 41, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 42, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 42, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 42, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 42, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 43, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 43, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 43, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 43, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 44, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 44, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 44, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 44, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 45, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 45, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 45, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 45, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 46, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 46, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 46, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 46, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 47, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 47, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 47, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 47, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 48, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 48, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 48, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 48, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 49, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 49, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 49, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 49, 4,"cuidado con la luz fantasma","2020-09-25");

INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 50, 3,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 50, 5,"puede ser pa? se lleno la vecindad brother","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 50, 2,"picantovich esas llantas padre","2020-09-25");
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 50, 4,"cuidado con la luz fantasma","2020-09-25");