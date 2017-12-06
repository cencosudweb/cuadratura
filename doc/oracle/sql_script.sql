
drop table CUADRATURA_INVENTARIO;

CREATE  TABLE  CUADRATURA_INVENTARIO (
  id INT NOT NULL,
  FECHA_CALCULADO VARCHAR(255) NOT NULL ,
  REF_FIELD_1 VARCHAR(255) NOT NULL ,
  TOTAL INT NOT NULL ,
  ASN INT NOT NULL ,
  CANT INT NOT NULL ,
  DIF INT NOT NULL ,
  ESTADO VARCHAR(255) NOT NULL ,
  CONSTRAINT id_CUADRATURA_INVENTARIO_PK PRIMARY KEY (id) 
);
CREATE SEQUENCE SEQUENCE_CUADRATURA_INVENTARIO INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
-- Se encarga de asignar un valor unico y entero en la llave primaria id en la tabla TIMES_LIMIT
CREATE OR REPLACE TRIGGER TRIGGER_CUADRATURA_INVENTARIO
BEFORE INSERT ON CUADRATURA_INVENTARIO 
FOR EACH ROW
BEGIN
	-- Column "id" uses sequence SEQUENCE_Exiff17G
	SELECT SEQUENCE_CUADRATURA_INVENTARIO.NEXTVAL
	INTO   :new.id
	FROM   dual;
END;

-- -----------------------------------------------------
-- Table INVENTARIO_WMS
-- -----------------------------------------------------
drop table INVENTARIO_WMS;

CREATE  TABLE  INVENTARIO_WMS (
  id INT NOT NULL,
  REF_FIELD_1 VARCHAR(255) NOT NULL ,
  TRAN_NBR VARCHAR(255) NOT NULL ,
  MOD_DATE_TIME VARCHAR(255) NOT NULL ,
  UNITS_RCVD VARCHAR(255) NOT NULL ,
  WHSE VARCHAR(255) NOT NULL ,
  CONSTRAINT id_INVENTARIO_WMS_PK PRIMARY KEY (id) 
);
CREATE SEQUENCE SEQUENCE_INVENTARIO_WMS INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
-- Se encarga de asignar un valor unico y entero en la llave primaria id en la tabla TIMES_LIMIT
CREATE OR REPLACE TRIGGER TRIGGER_INVENTARIO_WMS
BEFORE INSERT ON INVENTARIO_WMS 
FOR EACH ROW
BEGIN
	-- Column "id" uses sequence SEQUENCE_Exiff17G
	SELECT SEQUENCE_INVENTARIO_WMS.NEXTVAL
	INTO   :new.id
	FROM   dual;
END;

-- -----------------------------------------------------
-- Table INVENTARIO_JDA
-- -----------------------------------------------------
drop table INVENTARIO_JDA;

CREATE  TABLE  INVENTARIO_JDA (
  id INT NOT NULL,
  Pordat VARCHAR(255) NOT NULL ,
  Citaan VARCHAR(255) NOT NULL ,
  Pounts VARCHAR(255) NOT NULL ,
  Poloc VARCHAR(255) NOT NULL ,
  Ponumb VARCHAR(255) NOT NULL ,
  Ponrcv VARCHAR(255) NOT NULL ,
  CONSTRAINT id_INVENTARIO_JDA_PK PRIMARY KEY (id) 
);
CREATE SEQUENCE SEQUENCE_INVENTARIO_JDA INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
-- Se encarga de asignar un valor unico y entero en la llave primaria id en la tabla TIMES_LIMIT
CREATE OR REPLACE TRIGGER TRIGGER_INVENTARIO_JDA
BEFORE INSERT ON INVENTARIO_JDA 
FOR EACH ROW
BEGIN
	-- Column "id" uses sequence SEQUENCE_consulta1
	SELECT SEQUENCE_INVENTARIO_JDA.NEXTVAL
	INTO   :new.id
	FROM   dual;
END;





-- -----------------------------------------------------
-- Table consulta2
-- -----------------------------------------------------
drop table consulta2;

CREATE  TABLE  consulta2 (
  id INT NOT NULL,
  Itrloc VARCHAR(255) NOT NULL ,
  INUMBR VARCHAR(255) NOT NULL ,
  ITRTYP VARCHAR(255) NOT NULL ,
  ITRDAT VARCHAR(255) NOT NULL ,
  ITPDTE VARCHAR(255) NOT NULL ,
  IDEPT VARCHAR(255) NOT NULL ,
  ITRREF VARCHAR(255) NOT NULL ,
  ITRAF1 VARCHAR(255) NOT NULL ,
  CONSTRAINT id_PK PRIMARY KEY (id) 
);
CREATE SEQUENCE SEQUENCE_consulta2 INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
-- Se encarga de asignar un valor unico y entero en la llave primaria id en la tabla TIMES_LIMIT
CREATE OR REPLACE TRIGGER TRIGGER_consulta2
BEFORE INSERT ON consulta2 
FOR EACH ROW
BEGIN
	-- Column "id" uses sequence SEQUENCE_Exiff17G
	SELECT SEQUENCE_consulta2.NEXTVAL
	INTO   :new.id
	FROM   dual;
END;

-- -----------------------------------------------------
-- Table Exiff17G
-- -----------------------------------------------------
drop table Exiff17G;

CREATE  TABLE  Exiff17G (
  id INT NOT NULL,
  CITAAC VARCHAR(45) NOT NULL ,
  CITAAN VARCHAR(45) NOT NULL ,
  NUMFACT INT NOT NULL ,
  NUMOC INT NOT NULL ,
  FECREC INT NOT NULL ,
  HORREC INT NOT NULL ,
  FILLEN INT NOT NULL ,
  FILLEA INT NOT NULL ,
  CONSTRAINT id_PK PRIMARY KEY (id) 
);
CREATE SEQUENCE SEQUENCE_Exiff17G INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
-- Se encarga de asignar un valor unico y entero en la llave primaria id en la tabla TIMES_LIMIT
CREATE OR REPLACE TRIGGER TRIGGER_Exiff17G 
BEFORE INSERT ON Exiff17G 
FOR EACH ROW
BEGIN
	-- Column "id" uses sequence SEQUENCE_Exiff17G
	SELECT SEQUENCE_Exiff17G.NEXTVAL
	INTO   :new.id
	FROM   dual;
END;


-- -----------------------------------------------------
-- Table Pomrch
-- -----------------------------------------------------
drop table Pomrch;

CREATE  TABLE  Pomrch (
  id INT NOT NULL,
  POMRCV VARCHAR(45) NOT NULL ,
  PONUMB VARCHAR(45) NOT NULL ,
  POBON VARCHAR(45) NOT NULL ,
  PODEST VARCHAR(45) NOT NULL ,
  POLOC VARCHAR(45) NOT NULL ,
  POVNUM VARCHAR(45) NOT NULL ,
  POSTAT VARCHAR(45) NOT NULL ,
  PORCENT VARCHAR(45) NOT NULL ,
  PORDAT VARCHAR(45) NOT NULL ,
  POINIT VARCHAR(45) NOT NULL ,
  POLADG VARCHAR(45) NOT NULL ,
  POPLLT VARCHAR(45) NOT NULL ,
  POCRTN VARCHAR(45) NOT NULL ,
  POCOST VARCHAR(45) NOT NULL ,
  
  
  POVAT VARCHAR(45) NOT NULL ,
  PORETL VARCHAR(45) NOT NULL ,
  POCASE VARCHAR(45) NOT NULL ,
  POUNTS VARCHAR(45) NOT NULL ,
  POWGHT VARCHAR(45) NOT NULL ,
  PORWGT VARCHAR(45) NOT NULL ,
  POCOST VARCHAR(45) NOT NULL ,
  PONRCV VARCHAR(45) NOT NULL ,
  CONSTRAINT times_limit_PK PRIMARY KEY (id) 
);
CREATE SEQUENCE SEQUENCE_Pomrch INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
-- Se encarga de asignar un valor unico y entero en la llave primaria id en la tabla TIMES_LIMIT
CREATE OR REPLACE TRIGGER TRIGGER_Pomrch
BEFORE INSERT ON Pomrch 
FOR EACH ROW
BEGIN
	-- Column "id" uses sequence SEQUENCE_Invaud
	SELECT SEQUENCE_Pomrch.NEXTVAL
	INTO   :new.id
	FROM   dual;
END;


-- -----------------------------------------------------
-- Table Invaud
-- -----------------------------------------------------
drop table Invaud;

CREATE  TABLE  Invaud (
  id INT NOT NULL,
  ITRLOC VARCHAR(45) NOT NULL ,
  INUMBR INT NOT NULL ,
  ITRTYP INT NOT NULL ,
  ITRDAT INT NOT NULL ,
  ITPDTE INT NOT NULL ,
  IDEPT INT NOT NULL ,
  ITRQTY INT NOT NULL ,
  ITRREF INT NOT NULL ,
  ITRAF1 INT NOT NULL ,
  
  CONSTRAINT times_limit_PK PRIMARY KEY (id) 
);
CREATE SEQUENCE SEQUENCE_Invaud INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
-- Se encarga de asignar un valor unico y entero en la llave primaria id en la tabla Invaud
CREATE OR REPLACE TRIGGER TRIGGER_Invaud
BEFORE INSERT ON Invaud 
FOR EACH ROW
BEGIN
	-- Column "id" uses sequence SEQUENCE_Invaud
	SELECT SEQUENCE_Invaud.NEXTVAL
	INTO   :new.id
	FROM   dual;
END;