-- object: inscripcion | type: SCHEMA --
-- DROP SCHEMA IF EXISTS inscripcion CASCADE;
CREATE SCHEMA inscripcion;
-- ddl-end --

SET search_path TO pg_catalog,public,inscripcion;
-- ddl-end --

-- object: inscripcion.inscripcion | type: TABLE --
-- DROP TABLE IF EXISTS inscripcion.inscripcion CASCADE;
CREATE TABLE inscripcion.inscripcion (
	id serial NOT NULL,
	persona_id integer NOT NULL,
	programa_academico_id integer NOT NULL,
	recibo_matricula_id integer,
	recibo_inscripcion_id integer,
	periodo_id integer NOT NULL,
	enfasis_id integer,
	acepta_terminos boolean NOT NULL,
	fecha_acepta_terminos date NOT NULL,
	tipo_inscripcion_id integer NOT NULL,
	estado_inscripcion_id integer NOT NULL,
	puntaje_total numeric(5,2),
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_inscripcion PRIMARY KEY (id),
	CONSTRAINT uq_aspirante UNIQUE (persona_id,programa_academico_id,periodo_id)

);
-- ddl-end --
COMMENT ON TABLE inscripcion.inscripcion IS 'Tabla que almacena la información del proceso de inscripción y admisión de un aspirante';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.id IS 'Identificador de la tabla de admisión';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.programa_academico_id IS 'Programa academico al que se presenta el aspirante';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.recibo_matricula_id IS 'Recibo de matricula del aspirante';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.recibo_inscripcion_id IS 'Recibo de inscripción del aspirante';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.periodo_id IS 'Periodo en el que se presenta el  aspirante';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.enfasis_id IS 'Enfasis del proyecto curricular escogido por el aspirante';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.acepta_terminos IS 'Flag que indica si el aspirante acepta terminos y condiciones';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.fecha_acepta_terminos IS 'Fecha en la que el aspirante acepta los terminos.';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.puntaje_total IS 'Puntaje final con el resultado de acuerdo a los criterios de evaluación del proyecto curricular';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.activo IS 'Campo para registrar si el  registro se encuentra activo o no, solo a nivel de registro.';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.fecha_creacion IS 'Fecha de creacion de una inscripcion';
-- ddl-end --
COMMENT ON COLUMN inscripcion.inscripcion.fecha_modificacion IS 'Fecha de la última modificación de una inscripción';
-- ddl-end --
COMMENT ON CONSTRAINT pk_inscripcion ON inscripcion.inscripcion  IS 'Llave primaria';
-- ddl-end --
COMMENT ON CONSTRAINT uq_aspirante ON inscripcion.inscripcion  IS 'Restricción para que un aspirante no pueda registrarse a un mismo programa académico durante el periodo académico';
-- ddl-end --

-- object: inscripcion.estado_inscripcion | type: TABLE --
-- DROP TABLE IF EXISTS inscripcion.estado_inscripcion CASCADE;
CREATE TABLE inscripcion.estado_inscripcion (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20) NOT NULL,
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_estado_inscripicion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE inscripcion.estado_inscripcion IS 'Tabla que almacena los diferentes estados de admision';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.id IS 'Identificador de la tabla';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.nombre IS 'Nombre del estado de admision';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.descripcion IS 'Descripción del estado de admisión';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.codigo_abreviacion IS 'Codigo de abreviación del estado de admisión';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.activo IS 'Flag que indica si el estado de admisión esta activo o no';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.numero_orden IS 'Número de orden en que se deben mostrar los estados de admisión';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.fecha_creacion IS 'Fecha de creación de un  estado de inscripción';
-- ddl-end --
COMMENT ON COLUMN inscripcion.estado_inscripcion.fecha_modificacion IS 'Última fecha de modifiación de un estado inscripicion';
-- ddl-end --

-- object: inscripcion.propuesta | type: TABLE --
-- DROP TABLE IF EXISTS inscripcion.propuesta CASCADE;
CREATE TABLE inscripcion.propuesta (
	id serial NOT NULL,
	nombre character varying(250) NOT NULL,
	resumen text,
	grupo_investigacion_linea_invetigacion_id integer NOT NULL,
	documento_id integer NOT NULL,
	inscripcion_id integer NOT NULL,
	tipo_proyecto_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_propuesta PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE inscripcion.propuesta IS 'Propuesta que presenta el aspirante.';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.id IS 'Identificador de la tabla';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.nombre IS 'Nombre de la propuesta';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.resumen IS 'Resumen  de la propuesta';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.grupo_investigacion_linea_invetigacion_id IS 'Grupo de investigacion al que pertenece el proyecto.';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.documento_id IS 'Formato del proyecto con el que el estudiante presenta la propuesta';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.activo IS 'Flag que indica si la propuesta esta activa o no';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.fecha_creacion IS 'Fecha de creación de una propuesta';
-- ddl-end --
COMMENT ON COLUMN inscripcion.propuesta.fecha_modificacion IS 'Fecha de la última modificación de una propuesta';
-- ddl-end --

-- object: inscripcion.tipo_proyecto | type: TABLE --
-- DROP TABLE IF EXISTS inscripcion.tipo_proyecto CASCADE;
CREATE TABLE inscripcion.tipo_proyecto (
	id integer NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL DEFAULT true,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_proyecto PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE inscripcion.tipo_proyecto IS 'Tabla que almacena los tipos de proyectos de grado';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.id IS 'Identificador de la tabla';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.nombre IS 'Nombre del tipo de proyecto';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.descripcion IS 'Descripcion del tipo de proyecto';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.codigo_abreviacion IS 'Codigo de abreviacion del tipo de proyecto';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.activo IS 'Flag que indica si el tipo de proyecto se encuentra activo o no';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.numero_orden IS 'Numero de orden del tipo de trabajo de proyecto';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.fecha_creacion IS 'Fecha de creación de un tipo proyecto';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_proyecto.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --

-- object: fk_inscripcion_estado_inscripcion | type: CONSTRAINT --
-- ALTER TABLE inscripcion.inscripcion DROP CONSTRAINT IF EXISTS fk_inscripcion_estado_inscripcion CASCADE;
ALTER TABLE inscripcion.inscripcion ADD CONSTRAINT fk_inscripcion_estado_inscripcion FOREIGN KEY (estado_inscripcion_id)
REFERENCES inscripcion.estado_inscripcion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_propuesta_inscripcion | type: CONSTRAINT --
-- ALTER TABLE inscripcion.propuesta DROP CONSTRAINT IF EXISTS fk_propuesta_inscripcion CASCADE;
ALTER TABLE inscripcion.propuesta ADD CONSTRAINT fk_propuesta_inscripcion FOREIGN KEY (inscripcion_id)
REFERENCES inscripcion.inscripcion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_tipo_proyecto_propuesta | type: CONSTRAINT --
-- ALTER TABLE inscripcion.propuesta DROP CONSTRAINT IF EXISTS fk_tipo_proyecto_propuesta CASCADE;
ALTER TABLE inscripcion.propuesta ADD CONSTRAINT fk_tipo_proyecto_propuesta FOREIGN KEY (tipo_proyecto_id)
REFERENCES inscripcion.tipo_proyecto (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: inscripcion.tipo_inscripcion | type: TABLE --
-- DROP TABLE IF EXISTS inscripcion.tipo_inscripcion CASCADE;
CREATE TABLE inscripcion.tipo_inscripcion (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20) NOT NULL,
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_inscripicion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_inscripcion.fecha_creacion IS 'Fecha de creación de un tipo de inscripción';
-- ddl-end --
COMMENT ON COLUMN inscripcion.tipo_inscripcion.fecha_modificacion IS 'Fecha de la última modificación de un tipo de inscripción';
-- ddl-end --

-- object: fk_tipo_inscripcion_inscripcion | type: CONSTRAINT --
-- ALTER TABLE inscripcion.inscripcion DROP CONSTRAINT IF EXISTS fk_tipo_inscripcion_inscripcion CASCADE;
ALTER TABLE inscripcion.inscripcion ADD CONSTRAINT fk_tipo_inscripcion_inscripcion FOREIGN KEY (tipo_inscripcion_id)
REFERENCES inscripcion.tipo_inscripcion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: inscripcion.cupos_por_dependencia | type: TABLE --
-- DROP TABLE IF EXISTS inscripcion.cupos_por_dependencia CASCADE;
CREATE TABLE inscripcion.cupos_por_dependencia (
	id serial NOT NULL,
	dependencia_id integer NOT NULL,
	cupos_habilitados integer NOT NULL,
	cupos_opcionados integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_cupos_por_dependencia PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE inscripcion.cupos_por_dependencia IS 'Cupos asignados por dependencia para el proceso de admisiones';
-- ddl-end --
COMMENT ON COLUMN inscripcion.cupos_por_dependencia.dependencia_id IS 'Referencia el  id de la dependencia registrada en OIKOS';
-- ddl-end --
COMMENT ON COLUMN inscripcion.cupos_por_dependencia.cupos_habilitados IS 'Cupos disponibles para la dependencia para el proceso de admsión';
-- ddl-end --
COMMENT ON COLUMN inscripcion.cupos_por_dependencia.cupos_opcionados IS 'Número de cupos opcionados habilitados a la dependencia para el proceso de admisiones';
-- ddl-end --
COMMENT ON COLUMN inscripcion.cupos_por_dependencia.activo IS 'Estado del registro';
-- ddl-end --
COMMENT ON COLUMN inscripcion.cupos_por_dependencia.fecha_creacion IS 'Fecha de creación del registro';
-- ddl-end --
COMMENT ON COLUMN inscripcion.cupos_por_dependencia.fecha_modificacion IS 'Fecha de la última modificación del registro';
-- ddl-end --
COMMENT ON CONSTRAINT pk_cupos_por_dependencia ON inscripcion.cupos_por_dependencia  IS 'Restricción de llave primaria';
-- ddl-end --