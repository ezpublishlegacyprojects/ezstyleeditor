CREATE TABLE ezcssesitestyle(
 ID INTEGER NOT NULL,
 NAME VARCHAR2(255) NOT NULL,
 CURRENT_VERSION INTEGER NOT NULL,
 SELECTED INTEGER NOT NULL,
 PRIMARY KEY(ID)
);
CREATE SEQUENCE s_ezcssesitestyle
 START WITH 1
 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER  ezcssesitestyle_id_tr 
BEFORE INSERT ON ezcssesitestyle FOR EACH ROW WHEN (new.id IS NULL) BEGIN
  SELECT s_ezcssesitestyle.nextval INTO :new.id FROM dual;
 END;
/

CREATE TABLE ezcssesitestyle_definition (
  ID INTEGER NOT NULL,
  SITESTYLE_ID INTEGER NOT NULL,
  STYLE CLOB NOT NULL,
  VERSION INTEGER NOT NULL,
  PRIMARY KEY (ID)
);
CREATE SEQUENCE s_ezcssesitestyle_definition
 START WITH 1
 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER  ezcssesitestyle_def_id_tr 
BEFORE INSERT ON ezcssesitestyle_definition FOR EACH ROW WHEN (new.id IS NULL) BEGIN
  SELECT s_ezcssesitestyle_definition.nextval INTO :new.id FROM dual;
 END;
/

CREATE TABLE ezcssesitestyle_version (
  ID INTEGER NOT NULL,
  VERSION INTEGER NOT NULL,
  SITESTYLE_ID INTEGER NOT NULL,
  CREATED INTEGER NOT NULL,
  MODIFIED INTEGER NOT NULL,
  PRIMARY KEY (ID)
);
CREATE SEQUENCE s_ezcssesitestyle_version
 START WITH 1
 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER  ezcssesitestyle_version_id_tr 
BEFORE INSERT ON ezcssesitestyle_version FOR EACH ROW WHEN (new.id IS NULL) BEGIN
  SELECT s_ezcssesitestyle_version.nextval INTO :new.id FROM dual;
 END;
/