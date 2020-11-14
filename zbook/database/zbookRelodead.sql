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
  `profilepicture` VARCHAR(999) NOT NULL DEFAULT "/images/profilepicstemp/10-pp.jpg",
  `securityquestion` INT UNSIGNED NOT NULL,
  `answer` VARCHAR(999) NOT NULL,
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
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `usuarios`
    FOREIGN KEY (`idusuario`)
    REFERENCES `zbook`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- LLENAR TABLA USUARIOS
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'JuanMartin', '91142069', 'juanmartinlucioni@gmail.com', 23, '1996-12-23', '/images/profilepicstemp/1-pp.jpg', 1, 'Hachi', DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Jim', '91142069', 'jim@gmail.com', 19, '2001-04-23', '/images/profilepicstemp/2-pp.jpg', 1, 'Pepson', DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Matias', '91142069', 'mati@gmail.com', 20, '2000-05-30', '/images/profilepicstemp/3-pp.jpg', 1, 'Balto',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'MadisonBeer', '91142069', 'madison@gmail.com', 24, '1996-04-12', '/images/profilepicstemp/4-pp.jpg', 2, 'Mrs. Doubtfire',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Cristiano', '91142069', 'cris@gmail.com', 35, '1985-01-05', '/images/profilepicstemp/5-pp.jpg', 2, 'Myself',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Pepson', '91142069', 'pepinilla@gmail.com', 18, '2002-03-03', '/images/profilepicstemp/6-pp.jpg', 3, 'Mona',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Boquita', '91142069', 'elmasgrande@gmail.com', 114, '1905-12-12', '/images/profilepicstemp/7-pp.jpg', 3, 'River',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'Nicky', '91142069', 'nicole@gmail.com', 21, '1999-04-04', '/images/profilepicstemp/8-pp.jpg', 1, 'Fluffy',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'FeliRattagan', '91142069', 'felu@gmail.com', 18, '2002-02-06', '/images/profilepicstemp/9-pp.jpg', 2, 'La vida',DEFAULT,DEFAULT);
INSERT INTO `zbook`.`usuarios`
VALUES (DEFAULT, 'FakeHachita', '91142069', 'hachita@gmail.com', 30, '1990-12-23', '/images/profilepicstemp/10-pp.jpg', 3, 'RealHachi',DEFAULT,DEFAULT);

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
VALUES (DEFAULT, 2, 1,"JAJAJ BUERNARDO BROTHERRRRR","2020-09-25",DEFAULT,DEFAULT);
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 3, 1,"puede ser pa? se lleno la vecindad brother","2020-09-25",DEFAULT,DEFAULT);
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 4, 1,"picantovich esas llantas padre","2020-09-25",DEFAULT,DEFAULT);
INSERT INTO `zbook`.`comments` 
VALUES (DEFAULT, 5, 1,"cuidado con la luz fantasma","2020-09-25",DEFAULT,DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 3, 10, 'Monitored bandwidth-monitored budgetary management', '2020-05-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 82, 3, 'Secured exuding structure', '2020-09-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 63, 10, 'Object-based dynamic product', '2020-05-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 89, 10, 'Profound 3rd generation moderator', '2020-01-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 94, 4, 'Adaptive regional complexity', '2020-07-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 91, 6, 'Upgradable multi-state collaboration', '2020-09-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 4, 9, 'Object-based cohesive moratorium', '2020-03-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 10, 4, 'Networked 5th generation artificial intelligence', '2020-10-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 13, 2, 'Re-contextualized upward-trending forecast', '2020-04-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 76, 2, 'Object-based stable function', '2020-04-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 61, 2, 'Team-oriented didactic concept', '2020-04-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 56, 2, 'Balanced methodical forecast', '2020-10-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 97, 6, 'Advanced coherent attitude', '2020-02-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 46, 6, 'Centralized mobile extranet', '2020-06-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 19, 3, 'Networked client-driven focus group', '2019-12-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 42, 9, 'Triple-buffered bottom-line complexity', '2020-10-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 73, 2, 'Visionary discrete utilisation', '2020-04-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 8, 'Total context-sensitive encoding', '2020-06-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 82, 3, 'Exclusive upward-trending extranet', '2020-04-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 99, 8, 'User-friendly grid-enabled migration', '2019-12-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 60, 5, 'Inverse non-volatile alliance', '2020-03-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 12, 8, 'Multi-tiered interactive neural-net', '2020-10-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 74, 3, 'Open-architected fresh-thinking product', '2020-09-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 70, 5, 'User-friendly discrete neural-net', '2020-02-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 53, 4, 'Monitored exuding interface', '2020-05-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 13, 3, 'Fully-configurable multimedia knowledge user', '2019-12-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 16, 3, 'Vision-oriented high-level synergy', '2020-02-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 8, 'Synchronised systemic moratorium', '2019-12-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 45, 3, 'Fundamental client-server definition', '2020-11-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 93, 1, 'Programmable tertiary matrix', '2020-05-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 26, 10, 'Synergistic multi-state capacity', '2020-03-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 96, 7, 'Managed secondary policy', '2020-01-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 92, 6, 'Visionary bottom-line budgetary management', '2019-12-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 32, 3, 'Networked user-facing emulation', '2020-02-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 5, 'Enterprise-wide zero tolerance hardware', '2020-09-02', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 9, 'Streamlined eco-centric neural-net', '2020-10-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 84, 5, 'Intuitive mission-critical moderator', '2020-01-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 95, 6, 'Operative optimizing architecture', '2020-03-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 66, 1, 'Robust client-server throughput', '2020-08-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 31, 3, 'Pre-emptive human-resource task-force', '2020-10-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 74, 5, 'Implemented demand-driven hierarchy', '2020-09-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 2, 10, 'Public-key national budgetary management', '2020-06-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 20, 6, 'Implemented 24 hour protocol', '2019-11-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 61, 9, 'Persevering heuristic definition', '2020-02-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 42, 9, 'Customizable eco-centric hardware', '2020-11-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 6, 3, 'Triple-buffered methodical circuit', '2019-12-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 35, 8, 'Operative 6th generation contingency', '2020-06-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 79, 10, 'Intuitive exuding moderator', '2020-01-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 10, 'Reactive non-volatile artificial intelligence', '2020-03-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 90, 2, 'Enhanced zero administration synergy', '2020-09-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 83, 5, 'Customizable uniform flexibility', '2019-11-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 54, 3, 'Assimilated context-sensitive interface', '2020-04-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 82, 1, 'Fully-configurable user-facing interface', '2020-10-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 36, 3, 'Multi-tiered coherent local area network', '2020-02-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 15, 9, 'Compatible multi-tasking open system', '2020-01-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 4, 'Phased content-based pricing structure', '2020-04-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 39, 4, 'Stand-alone optimizing extranet', '2019-12-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 9, 'Total grid-enabled secured line', '2020-06-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 10, 'Optional exuding workforce', '2020-06-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 23, 5, 'Right-sized zero administration artificial intelligence', '2020-09-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 87, 2, 'Ameliorated heuristic encoding', '2020-08-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 35, 10, 'Focused actuating toolset', '2020-03-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 97, 5, 'Visionary object-oriented extranet', '2020-11-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 28, 1, 'Monitored methodical budgetary management', '2020-09-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 73, 5, 'Centralized optimal database', '2020-07-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 6, 2, 'Multi-lateral human-resource solution', '2019-12-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 2, 9, 'Realigned national instruction set', '2020-09-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 81, 6, 'Team-oriented well-modulated protocol', '2020-11-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 10, 'User-friendly grid-enabled matrix', '2020-07-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 48, 8, 'Cloned content-based monitoring', '2020-02-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 25, 4, 'Triple-buffered executive encryption', '2019-12-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 34, 3, 'Vision-oriented dedicated support', '2020-08-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 3, 5, 'Horizontal composite superstructure', '2020-11-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 78, 5, 'Fully-configurable methodical functionalities', '2020-06-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 91, 8, 'Ameliorated upward-trending conglomeration', '2020-02-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 2, 'Progressive multi-tasking intranet', '2020-07-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 64, 5, 'Streamlined encompassing system engine', '2020-03-02', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 93, 7, 'Right-sized real-time secured line', '2019-12-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 81, 4, 'Enhanced 6th generation parallelism', '2020-04-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 25, 10, 'Synchronised hybrid groupware', '2020-09-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 97, 1, 'Versatile multimedia time-frame', '2020-05-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 7, 'Customer-focused high-level extranet', '2020-05-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 74, 5, 'Open-architected multi-tasking orchestration', '2020-11-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 51, 6, 'Enterprise-wide high-level interface', '2020-10-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 7, 'Business-focused static collaboration', '2020-05-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 36, 2, 'Team-oriented national firmware', '2020-09-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 42, 6, 'Reverse-engineered heuristic encryption', '2020-06-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 45, 5, 'Expanded composite policy', '2020-07-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 36, 7, 'Customer-focused fresh-thinking intranet', '2020-01-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 73, 6, 'Public-key system-worthy toolset', '2019-11-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 12, 6, 'Programmable transitional budgetary management', '2020-05-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 75, 10, 'Horizontal incremental challenge', '2020-04-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 47, 10, 'Focused intangible toolset', '2020-05-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 36, 9, 'Sharable high-level standardization', '2020-06-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 57, 2, 'Self-enabling optimal extranet', '2020-07-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 6, 6, 'Reactive holistic knowledge base', '2020-07-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 63, 6, 'Managed well-modulated analyzer', '2020-06-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 8, 10, 'Inverse content-based firmware', '2020-09-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 12, 6, 'Multi-layered tangible intranet', '2020-01-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 65, 8, 'Total cohesive neural-net', '2020-05-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 26, 5, 'Secured heuristic interface', '2020-10-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 78, 7, 'Enhanced uniform flexibility', '2020-07-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 26, 5, 'Down-sized background strategy', '2020-07-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 10, 'Visionary background initiative', '2020-03-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 46, 8, 'Enhanced static application', '2020-04-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 80, 5, 'Monitored intermediate benchmark', '2019-12-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 31, 2, 'Cross-platform tertiary standardization', '2020-01-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 34, 2, 'Triple-buffered transitional model', '2020-01-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 62, 9, 'Universal executive approach', '2020-08-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 9, 'Enhanced optimal leverage', '2020-03-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 52, 6, 'Extended solution-oriented toolset', '2020-09-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 65, 2, 'Monitored local definition', '2020-06-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 74, 3, 'Organized maximized website', '2020-05-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 88, 5, 'Quality-focused multi-state approach', '2020-02-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 30, 7, 'Vision-oriented methodical task-force', '2020-10-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 6, 2, 'Synergistic encompassing initiative', '2020-06-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 33, 8, 'Implemented systematic secured line', '2020-04-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 70, 8, 'Persistent solution-oriented interface', '2020-06-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 16, 3, 'User-centric impactful product', '2020-02-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 50, 7, 'Synergized zero administration utilisation', '2020-08-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 17, 8, 'Managed uniform toolset', '2020-01-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 62, 2, 'Multi-layered eco-centric algorithm', '2020-05-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 54, 10, 'Sharable analyzing implementation', '2020-04-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 82, 4, 'Centralized holistic process improvement', '2020-11-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 24, 2, 'Grass-roots high-level array', '2020-06-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 90, 10, 'Mandatory systemic core', '2020-06-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 98, 8, 'Synergized web-enabled structure', '2020-03-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 83, 10, 'Horizontal high-level approach', '2019-12-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 87, 8, 'User-friendly impactful pricing structure', '2019-11-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 80, 4, 'Total bandwidth-monitored superstructure', '2020-08-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 97, 3, 'Decentralized motivating methodology', '2019-12-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 33, 9, 'Fully-configurable value-added protocol', '2020-08-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 6, 'Mandatory background architecture', '2020-09-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 6, 5, 'Quality-focused optimal throughput', '2020-09-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 19, 5, 'Inverse leading edge instruction set', '2020-05-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 65, 6, 'Ergonomic full-range protocol', '2020-01-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 24, 8, 'Expanded 6th generation help-desk', '2020-08-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 50, 10, 'Cross-platform analyzing leverage', '2020-09-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 94, 9, 'Programmable dynamic orchestration', '2020-06-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 30, 5, 'Profound solution-oriented help-desk', '2019-12-02', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 1, 'Synergistic high-level toolset', '2020-10-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 27, 1, 'Open-architected client-server contingency', '2020-04-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 78, 4, 'Cross-group holistic groupware', '2020-08-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 3, 'Public-key uniform support', '2020-04-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 17, 3, 'Cloned coherent secured line', '2019-12-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 10, 10, 'Implemented multi-tasking budgetary management', '2019-12-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 20, 3, 'Integrated systemic hierarchy', '2020-09-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 63, 1, 'Decentralized heuristic frame', '2020-07-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 36, 1, 'Face to face client-server matrix', '2020-06-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 82, 2, 'Face to face zero administration hub', '2019-12-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 3, 'Ergonomic holistic matrices', '2020-06-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 31, 3, 'User-centric system-worthy hierarchy', '2020-04-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 87, 10, 'Progressive discrete firmware', '2020-05-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 5, 'Mandatory user-facing success', '2020-11-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 75, 4, 'Total coherent Graphic Interface', '2020-01-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 51, 10, 'Up-sized background project', '2020-01-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 88, 9, 'Profound background circuit', '2020-07-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 23, 4, 'Profound tangible throughput', '2020-11-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 10, 4, 'Optional system-worthy frame', '2020-04-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 49, 1, 'Total background info-mediaries', '2020-05-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 5, 'Persevering mission-critical firmware', '2020-11-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 80, 1, 'Persevering solution-oriented capability', '2020-10-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 44, 3, 'Business-focused 24 hour challenge', '2020-07-31', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 49, 3, 'Front-line attitude-oriented synergy', '2019-11-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 50, 7, 'Integrated clear-thinking conglomeration', '2019-11-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 63, 3, 'Distributed 6th generation focus group', '2020-06-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 5, 5, 'Implemented secondary knowledge base', '2020-10-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 44, 8, 'Centralized fresh-thinking project', '2020-01-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 42, 7, 'Operative holistic capability', '2019-12-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 16, 3, 'Phased scalable encoding', '2020-07-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 15, 1, 'De-engineered disintermediate Graphic Interface', '2020-05-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 54, 2, 'Quality-focused logistical knowledge base', '2019-11-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 96, 6, 'Object-based next generation migration', '2019-11-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 52, 9, 'Future-proofed cohesive encryption', '2020-05-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 4, 'Automated asynchronous matrix', '2020-06-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 43, 7, 'Business-focused context-sensitive customer loyalty', '2020-09-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 75, 7, 'Networked system-worthy capability', '2020-03-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 35, 4, 'User-friendly multi-state productivity', '2020-04-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 45, 4, 'De-engineered eco-centric array', '2019-12-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 2, 'Advanced tertiary challenge', '2020-04-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 92, 1, 'Organized web-enabled complexity', '2020-04-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 43, 8, 'Adaptive systematic approach', '2020-08-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 1, 7, 'Intuitive bottom-line application', '2019-11-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 76, 7, 'Grass-roots next generation matrix', '2020-07-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 8, 'Right-sized demand-driven open system', '2020-06-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 57, 6, 'Intuitive contextually-based model', '2019-12-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 49, 5, 'Networked exuding moratorium', '2020-04-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 11, 4, 'Managed upward-trending matrix', '2020-09-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 50, 7, 'Business-focused asynchronous leverage', '2020-06-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 5, 'Realigned actuating solution', '2020-11-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 65, 5, 'Customer-focused systematic forecast', '2019-12-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 9, 'Business-focused value-added workforce', '2019-12-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 90, 8, 'Cross-platform executive artificial intelligence', '2020-10-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 9, 8, 'Public-key zero tolerance parallelism', '2020-04-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 69, 1, 'Adaptive foreground solution', '2020-09-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 65, 1, 'Secured intermediate matrices', '2020-02-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 95, 5, 'Robust value-added utilisation', '2020-03-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 10, 4, 'Open-source user-facing archive', '2019-11-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 31, 10, 'Fully-configurable asymmetric hardware', '2020-02-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 64, 10, 'Triple-buffered responsive model', '2020-01-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 8, 'Fundamental zero defect capacity', '2020-03-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 97, 10, 'Grass-roots static budgetary management', '2020-07-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 10, 'Synergistic methodical firmware', '2019-11-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 34, 4, 'Down-sized optimal synergy', '2020-02-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 44, 5, 'Intuitive background info-mediaries', '2020-07-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 48, 9, 'Realigned tangible initiative', '2020-02-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 95, 1, 'Proactive well-modulated workforce', '2020-04-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 29, 5, 'Multi-channelled content-based hub', '2020-02-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 89, 8, 'Robust needs-based pricing structure', '2020-05-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 89, 4, 'Diverse incremental website', '2020-06-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 82, 3, 'Up-sized multi-state intranet', '2020-09-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 54, 6, 'Team-oriented background Graphical User Interface', '2019-11-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 16, 7, 'Intuitive context-sensitive matrix', '2020-06-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 73, 3, 'Programmable secondary synergy', '2020-10-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 16, 9, 'Managed multi-state hierarchy', '2020-06-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 16, 10, 'Synergistic client-server customer loyalty', '2020-08-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 15, 3, 'Synchronised well-modulated system engine', '2019-11-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 51, 4, 'Open-architected eco-centric info-mediaries', '2020-04-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 37, 6, 'Inverse optimizing leverage', '2019-12-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 10, 'Horizontal national initiative', '2020-09-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 37, 5, 'Face to face cohesive portal', '2020-03-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 10, 6, 'Streamlined bi-directional definition', '2020-04-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 88, 4, 'Networked empowering frame', '2020-08-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 1, 3, 'Organic actuating budgetary management', '2020-08-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 2, 'Synergized interactive productivity', '2020-04-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 96, 9, 'Cross-group grid-enabled contingency', '2020-05-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 76, 2, 'Phased dedicated knowledge user', '2020-07-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 31, 9, 'Adaptive bifurcated complexity', '2020-09-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 86, 4, 'Customizable actuating definition', '2020-10-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 75, 1, 'Progressive actuating process improvement', '2019-12-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 2, 'Phased 24/7 functionalities', '2020-05-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 66, 10, 'Reverse-engineered attitude-oriented neural-net', '2020-06-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 56, 1, 'Optional background success', '2020-07-02', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 90, 6, 'Customer-focused radical paradigm', '2020-07-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 83, 9, 'Front-line stable product', '2020-06-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 29, 10, 'Open-architected full-range neural-net', '2020-04-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 60, 1, 'Business-focused 3rd generation ability', '2020-08-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 26, 4, 'Distributed didactic neural-net', '2020-07-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 13, 2, 'Optimized radical open architecture', '2020-02-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 14, 2, 'Automated upward-trending knowledge base', '2020-09-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 37, 9, 'Right-sized explicit system engine', '2020-01-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 1, 'Team-oriented even-keeled interface', '2019-12-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 58, 3, 'Customizable motivating algorithm', '2020-04-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 44, 7, 'Cloned encompassing Graphic Interface', '2020-07-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 65, 6, 'Profit-focused national archive', '2019-11-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 81, 2, 'Public-key holistic success', '2020-08-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 17, 10, 'Pre-emptive asymmetric capability', '2020-03-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 75, 8, 'Realigned user-facing methodology', '2020-07-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 12, 1, 'Multi-lateral 5th generation migration', '2020-04-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 18, 4, 'Multi-layered needs-based hardware', '2020-05-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 91, 6, 'Adaptive even-keeled flexibility', '2020-09-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 85, 9, 'Extended optimizing algorithm', '2020-07-02', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 41, 1, 'Quality-focused needs-based neural-net', '2020-01-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 72, 9, 'Advanced zero defect analyzer', '2020-01-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 44, 4, 'Robust neutral info-mediaries', '2020-05-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 2, 'Distributed executive open architecture', '2020-10-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 3, 'De-engineered high-level definition', '2020-10-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 50, 1, 'Optimized homogeneous interface', '2020-03-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 2, 10, 'Reactive interactive internet solution', '2020-09-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 97, 2, 'Versatile radical internet solution', '2020-01-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 35, 10, 'Integrated clear-thinking implementation', '2020-03-02', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 61, 3, 'Focused disintermediate parallelism', '2020-05-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 36, 4, 'Cross-group foreground flexibility', '2020-01-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 94, 3, 'Visionary tangible adapter', '2019-11-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 20, 9, 'Cross-platform reciprocal circuit', '2020-01-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 91, 3, 'Universal system-worthy customer loyalty', '2020-02-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 27, 7, 'Grass-roots zero tolerance database', '2020-11-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 8, 'Decentralized hybrid knowledge user', '2020-10-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 77, 2, 'Optimized disintermediate software', '2020-08-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 76, 5, 'Managed composite forecast', '2020-06-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 57, 3, 'Monitored homogeneous throughput', '2020-03-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 46, 3, 'Compatible methodical local area network', '2020-11-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 75, 7, 'Switchable fresh-thinking encoding', '2019-12-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 28, 3, 'Proactive grid-enabled neural-net', '2019-11-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 69, 8, 'Multi-tiered even-keeled hub', '2020-07-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 8, 6, 'Object-based stable approach', '2020-02-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 30, 4, 'Synchronised even-keeled circuit', '2019-11-14', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 7, 9, 'Face to face client-server adapter', '2020-06-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 22, 5, 'Organic upward-trending project', '2020-04-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 61, 3, 'Multi-layered neutral ability', '2019-12-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 3, 'Ergonomic optimizing infrastructure', '2020-01-15', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 74, 2, 'Synergized mobile parallelism', '2020-06-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 2, 'Reactive optimal budgetary management', '2020-09-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 64, 4, 'Open-architected incremental collaboration', '2020-06-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 1, 5, 'Switchable scalable utilisation', '2020-10-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 29, 4, 'Optional stable open architecture', '2020-08-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 95, 7, 'Balanced content-based challenge', '2020-10-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 10, 3, 'Phased content-based implementation', '2019-12-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 56, 1, 'Operative didactic focus group', '2020-01-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 9, 'Phased human-resource alliance', '2020-06-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 13, 3, 'Reactive discrete projection', '2020-04-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 70, 5, 'Innovative upward-trending core', '2020-03-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 15, 2, 'Team-oriented global flexibility', '2020-01-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 29, 2, 'Sharable even-keeled emulation', '2020-07-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 51, 5, 'Open-architected directional firmware', '2019-11-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 70, 4, 'Cloned clear-thinking paradigm', '2020-07-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 67, 5, 'Secured 5th generation protocol', '2019-11-27', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 97, 7, 'Universal needs-based moratorium', '2020-01-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 87, 8, 'Virtual executive knowledge user', '2020-08-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 1, 7, 'Business-focused actuating approach', '2020-09-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 80, 10, 'Right-sized zero administration internet solution', '2020-05-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 17, 2, 'Synergized optimizing middleware', '2020-06-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 80, 2, 'Business-focused zero defect secured line', '2020-11-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 27, 9, 'Enterprise-wide contextually-based approach', '2020-04-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 55, 3, 'Public-key 6th generation algorithm', '2020-09-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 79, 5, 'Fundamental background hierarchy', '2019-12-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 78, 6, 'Fully-configurable composite concept', '2019-11-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 50, 2, 'Pre-emptive full-range open system', '2020-11-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 18, 10, 'Synergistic full-range conglomeration', '2020-07-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 53, 6, 'Cloned asymmetric monitoring', '2020-07-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 53, 9, 'Enhanced discrete local area network', '2020-10-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 80, 3, 'Ameliorated 4th generation moratorium', '2020-02-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 31, 8, 'Networked contextually-based Graphic Interface', '2020-07-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 29, 7, 'Focused modular concept', '2020-08-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 73, 3, 'Diverse well-modulated emulation', '2020-09-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 82, 3, 'Organic dedicated process improvement', '2020-05-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 87, 4, 'Profound mission-critical pricing structure', '2020-09-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 70, 1, 'Enhanced heuristic superstructure', '2020-03-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 1, 'Front-line motivating system engine', '2019-11-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 32, 9, 'Down-sized well-modulated middleware', '2020-09-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 18, 8, 'Business-focused content-based archive', '2020-09-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 46, 2, 'Exclusive well-modulated algorithm', '2020-04-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 60, 2, 'Horizontal hybrid standardization', '2020-05-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 78, 10, 'Organized clear-thinking time-frame', '2020-03-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 76, 4, 'Automated static moratorium', '2020-06-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 99, 10, 'User-friendly disintermediate groupware', '2020-07-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 43, 5, 'Distributed upward-trending system engine', '2020-07-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 74, 9, 'Diverse radical software', '2020-03-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 21, 2, 'Customer-focused 5th generation Graphic Interface', '2020-10-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 33, 8, 'Reduced 24 hour service-desk', '2019-12-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 2, 'Function-based optimal architecture', '2020-03-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 4, 5, 'Synchronised well-modulated Graphic Interface', '2020-05-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 15, 7, 'Phased fresh-thinking concept', '2020-08-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 48, 4, 'Versatile system-worthy contingency', '2020-02-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 22, 3, 'Triple-buffered analyzing solution', '2020-01-27', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 10, 7, 'Persistent responsive Graphical User Interface', '2020-05-31', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 89, 8, 'Object-based solution-oriented leverage', '2020-03-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 32, 9, 'Stand-alone didactic system engine', '2020-07-10', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 7, 9, 'Profit-focused heuristic Graphical User Interface', '2020-10-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 23, 8, 'Secured asymmetric knowledge user', '2020-10-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 28, 7, 'Open-source bandwidth-monitored application', '2020-03-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 77, 4, 'Expanded modular hub', '2020-07-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 8, 'Phased asymmetric array', '2020-08-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 20, 5, 'Polarised tangible flexibility', '2019-11-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 30, 8, 'Upgradable motivating flexibility', '2020-05-12', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 23, 1, 'Diverse local leverage', '2020-02-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 21, 6, 'Intuitive encompassing task-force', '2020-08-07', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 62, 3, 'Right-sized multimedia encryption', '2020-02-28', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 59, 8, 'Robust mission-critical conglomeration', '2020-04-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 99, 2, 'Polarised neutral approach', '2019-11-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 32, 6, 'Multi-lateral client-driven hardware', '2020-07-25', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 32, 6, 'Organized homogeneous algorithm', '2020-01-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 58, 9, 'Organic context-sensitive local area network', '2020-03-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 100, 3, 'Operative 3rd generation standardization', '2020-09-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 21, 4, 'Versatile discrete hierarchy', '2020-04-24', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 86, 2, 'Synergized high-level budgetary management', '2020-05-16', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 12, 1, 'De-engineered uniform challenge', '2020-02-13', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 75, 6, 'Adaptive tertiary productivity', '2020-11-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 21, 1, 'Programmable disintermediate knowledge base', '2020-04-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 23, 10, 'Secured real-time system engine', '2020-07-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 38, 10, 'Implemented discrete intranet', '2020-07-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 11, 9, 'Balanced eco-centric leverage', '2020-02-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 28, 1, 'Adaptive content-based local area network', '2020-05-02', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 17, 2, 'Re-contextualized eco-centric circuit', '2020-03-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 39, 9, 'Implemented responsive encoding', '2020-07-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 65, 4, 'Networked modular pricing structure', '2020-11-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 35, 8, 'Self-enabling context-sensitive moderator', '2020-08-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 17, 8, 'Managed well-modulated orchestration', '2020-06-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 3, 8, 'Balanced context-sensitive moderator', '2020-08-21', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 16, 7, 'Mandatory asymmetric ability', '2020-08-05', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 70, 9, 'Open-architected next generation hierarchy', '2020-04-20', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 94, 7, 'Diverse object-oriented attitude', '2020-04-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 40, 6, 'Operative transitional framework', '2020-04-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 58, 5, 'Reverse-engineered responsive hub', '2020-11-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 31, 7, 'Reduced demand-driven portal', '2019-11-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 3, 'Cross-group methodical info-mediaries', '2020-08-31', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 4, 3, 'Versatile contextually-based ability', '2020-06-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 29, 2, 'Enterprise-wide value-added solution', '2020-11-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 100, 7, 'Managed background website', '2020-03-08', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 21, 5, 'Re-engineered grid-enabled artificial intelligence', '2020-04-29', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 36, 3, 'Switchable neutral strategy', '2019-11-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 54, 4, 'Enhanced leading edge customer loyalty', '2020-02-23', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 19, 3, 'Object-based contextually-based encryption', '2019-11-09', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 50, 9, 'Multi-channelled responsive policy', '2020-07-30', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 87, 3, 'Digitized upward-trending time-frame', '2020-08-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 28, 5, 'Intuitive zero defect frame', '2020-07-03', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 77, 6, 'Ergonomic attitude-oriented parallelism', '2020-05-06', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 68, 2, 'Digitized demand-driven encoding', '2020-05-01', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 48, 6, 'Reactive composite attitude', '2020-10-22', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 84, 7, 'Total 5th generation hub', '2020-06-18', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 57, 2, 'Function-based dynamic groupware', '2020-10-17', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 94, 5, 'Digitized local functionalities', '2020-08-11', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 6, 7, 'Mandatory methodical implementation', '2020-08-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 29, 10, 'Compatible context-sensitive moratorium', '2020-02-04', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 87, 7, 'Optional maximized interface', '2020-06-26', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 85, 2, 'Fully-configurable background info-mediaries', '2020-08-19', DEFAULT, DEFAULT);
INSERT INTO `zbook`.`comments` VALUES (DEFAULT, 41, 1, 'Streamlined neutral circuit', '2020-05-16', DEFAULT, DEFAULT);