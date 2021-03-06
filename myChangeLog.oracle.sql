--liquibase formatted sql

--changeset subhajitsaha:1588069289387-1
CREATE TABLE TAB1 (ID NUMBER NOT NULL, DESCRIPTION VARCHAR2(50 BYTE), CONSTRAINT TAB1_PK PRIMARY KEY (ID));

--changeset subhajitsaha:1588069289387-2
CREATE TABLE TAB2 (ID NUMBER NOT NULL, DESCRIPTION VARCHAR2(50 BYTE), CONSTRAINT TAB2_PK PRIMARY KEY (ID));

--changeset subhajitsaha:1588069289387-3
ALTER TABLE TAB1 ADD DESCRIPTION2 VARCHAR2(50 BYTE);

--changeset subhajitsaha:1588069289387-4
CREATE TABLE TAB3 (ID NUMBER NOT NULL, DESCRIPTION VARCHAR2(50 BYTE), CONSTRAINT TAB3_PK PRIMARY KEY (ID));

--changeset subhajitsaha:1588069289387-5
CREATE TABLE TAB4 (ID NUMBER NOT NULL, DESCRIPTION VARCHAR2(50 BYTE), CONSTRAINT TAB4_PK PRIMARY KEY (ID));

--changeset subhajitsaha:1588069289387-6
CREATE TABLE TAB5 (ID NUMBER NOT NULL, DESCRIPTION VARCHAR2(50 BYTE), CONSTRAINT TAB5_PK PRIMARY KEY (ID));

--changeset subhajitsaha:1588069289387-7
CREATE TABLE TAB6 (ID NUMBER NOT NULL, DESCRIPTION VARCHAR2(50 BYTE), CONSTRAINT TAB6_PK PRIMARY KEY (ID));

--changeset subhajitsaha:1588069289387-8
CREATE TABLE TAB7 (ID NUMBER NOT NULL, DESCRIPTION VARCHAR2(50 BYTE), CONSTRAINT TAB7_PK PRIMARY KEY (ID));

