ALTER SESSION SET CONTAINER = XEPDB1;

CREATE TABLESPACE typeormspace32
    DATAFILE 'typeormspace32.dbf'
    SIZE 100M
    AUTOEXTEND ON;

-- create users:
CREATE USER typeorm IDENTIFIED BY "oracle" DEFAULT TABLESPACE typeormspace32;

GRANT CREATE SESSION TO typeorm;
GRANT CREATE TABLE TO typeorm;
GRANT CREATE VIEW TO typeorm;
GRANT CREATE PROCEDURE TO typeorm;
GRANT CREATE SEQUENCE TO typeorm;

ALTER USER typeorm QUOTA UNLIMITED ON typeormspace32;

-- set password expiry to unlimited
ALTER PROFILE DEFAULT LIMIT PASSWORD_REUSE_TIME UNLIMITED;
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;