CREATE TABLE `inscripciones_curso` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_curso` INTEGER NOT NULL,
	`id_estatus_curso` INTEGER NOT NULL,
	`fecha_inicio` DATETIME NOT NULL,
	`fecha_fin` DATETIME NOT NULL,
	`id_usuario` INTEGER NOT NULL,
	`intentos` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `comentarios_curso` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_usuario` INTEGER NOT NULL,
	`id_curso` INTEGER NOT NULL,
	`comentario` VARCHAR(255),
	`recomendar_instructor` TINYINT NOT NULL,
	`fecha` DATETIME NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `auditoria_curso` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_curso` INTEGER NOT NULL,
	`id_usuario` INTEGER NOT NULL,
	`id_examen` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `examenes_usuarios` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_curso` INTEGER NOT NULL,
	`id_usuario` INTEGER NOT NULL,
	`id_pregunta` INTEGER NOT NULL,
	`respuesta` CHAR(1) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `preguntas_examenes` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_curso` INTEGER NOT NULL,
	`id_tipo_pregunta` INTEGER NOT NULL,
	`pregunta` VARCHAR(255) NOT NULL,
	`a` VARCHAR(255) NOT NULL,
	`b` VARCHAR(255) NOT NULL,
	`c` VARCHAR(255) NOT NULL,
	`d` VARCHAR(255) NOT NULL,
	`respuesta` CHAR(1) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `cursos` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre` VARCHAR(255) NOT NULL,
	`descripcion` VARCHAR(255) NOT NULL,
	`id_instructor` INTEGER NOT NULL,
	`id_departamento` INTEGER NOT NULL,
	`path_imagen_portada` VARCHAR(255) NOT NULL,
	`path_video` VARCHAR(255) NOT NULL,
	`id_categoria` INTEGER NOT NULL,
	`id_empresa` INTEGER NOT NULL,
	`estatus` TINYINT NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `catalogo_tipo_pregunta` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`tipo` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `catalogo_departamentos` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`departamento` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `preguntas_cuestionario` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_curso` INTEGER NOT NULL,
	`id_tipo_cuestionario` INTEGER NOT NULL,
	`pregunta` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `catalogo_tipo_cuestionario` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`tipo` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `respuestas_cuestionario` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_usuario` INTEGER NOT NULL,
	`id_pregunta_cuestionario` INTEGER NOT NULL,
	`respuesta` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `catalogo_categorias` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`categoria` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `catalogo_empresas` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`empresa` VARCHAR(255),
	PRIMARY KEY(`id`)
);


CREATE TABLE `catalogo_estatus_cursos` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`estatus` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `usuarios_rol_especifico` (
	`id_usuario` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_rol` INTEGER,
	`rol` VARCHAR(255),
	PRIMARY KEY(`id_usuario`)
);


ALTER TABLE `auditoria_curso`
ADD FOREIGN KEY(`id_examen`) REFERENCES `examenes_usuarios`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `examenes_usuarios`
ADD FOREIGN KEY(`id_pregunta`) REFERENCES `preguntas_examenes`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `inscripciones_curso`
ADD FOREIGN KEY(`id_curso`) REFERENCES `cursos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `comentarios_curso`
ADD FOREIGN KEY(`id_curso`) REFERENCES `cursos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `preguntas_examenes`
ADD FOREIGN KEY(`id_curso`) REFERENCES `cursos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `examenes_usuarios`
ADD FOREIGN KEY(`id_curso`) REFERENCES `cursos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `auditoria_curso`
ADD FOREIGN KEY(`id_curso`) REFERENCES `cursos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `preguntas_cuestionario`
ADD FOREIGN KEY(`id_tipo_cuestionario`) REFERENCES `catalogo_tipo_cuestionario`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `preguntas_cuestionario`
ADD FOREIGN KEY(`id`) REFERENCES `respuestas_cuestionario`(`id_pregunta_cuestionario`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `preguntas_cuestionario`
ADD FOREIGN KEY(`id_curso`) REFERENCES `cursos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `cursos`
ADD FOREIGN KEY(`id_departamento`) REFERENCES `catalogo_departamentos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `preguntas_examenes`
ADD FOREIGN KEY(`id_tipo_pregunta`) REFERENCES `catalogo_tipo_pregunta`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `cursos`
ADD FOREIGN KEY(`id_categoria`) REFERENCES `catalogo_categorias`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `cursos`
ADD FOREIGN KEY(`id_empresa`) REFERENCES `catalogo_empresas`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `inscripciones_curso`
ADD FOREIGN KEY(`id_estatus_curso`) REFERENCES `catalogo_estatus_cursos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;