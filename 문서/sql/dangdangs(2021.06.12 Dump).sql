--------------------------------------------------------
--  ������ ������ - �����-6��-12-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence D_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UM"."D_BOARD_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 28 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence D_COMMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UM"."D_COMMENT_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence D_MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UM"."D_MEMBER_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence D_PET_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UM"."D_PET_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence D_SYMPTOM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UM"."D_SYMPTOM_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 132 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence D_WEAKEN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "UM"."D_WEAKEN_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 111 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_HOSINFO_PK
--------------------------------------------------------

   CREATE SEQUENCE  "UM"."SEQ_HOSINFO_PK"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table D_BOARD
--------------------------------------------------------

  CREATE TABLE "UM"."D_BOARD" 
   (	"BNO" NUMBER(5,0), 
	"DNAME" VARCHAR2(40 BYTE), 
	"BSUM" CLOB, 
	"BCAUSE" CLOB, 
	"BTREAT" CLOB, 
	"BCARE" CLOB, 
	"BDATE" DATE DEFAULT sysdate, 
	"BFNAME" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("BSUM") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("BCAUSE") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("BTREAT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("BCARE") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("BFNAME") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table D_COMMENT
--------------------------------------------------------

  CREATE TABLE "UM"."D_COMMENT" 
   (	"CNO" NUMBER(5,0), 
	"MNICK" VARCHAR2(30 BYTE), 
	"BNO" NUMBER(5,0), 
	"CCONTENT" CLOB, 
	"CDATE" DATE DEFAULT sysdate, 
	"CTYPE" CHAR(1 BYTE) DEFAULT 'V'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CCONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table D_DISEASE
--------------------------------------------------------

  CREATE TABLE "UM"."D_DISEASE" 
   (	"DNAME" VARCHAR2(40 BYTE), 
	"DAGE" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table D_MEMBER
--------------------------------------------------------

  CREATE TABLE "UM"."D_MEMBER" 
   (	"MNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"MPASSWORD" VARCHAR2(20 BYTE), 
	"MNICK" VARCHAR2(30 BYTE), 
	"MTYPE" CHAR(1 BYTE) DEFAULT 'U', 
	"MDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table D_PET
--------------------------------------------------------

  CREATE TABLE "UM"."D_PET" 
   (	"PNO" NUMBER(5,0), 
	"MID" VARCHAR2(20 BYTE), 
	"SPCODE" VARCHAR2(6 BYTE), 
	"PNAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table D_SPECIES
--------------------------------------------------------

  CREATE TABLE "UM"."D_SPECIES" 
   (	"SPCODE" VARCHAR2(6 BYTE), 
	"SPNAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table D_SYMPTOM
--------------------------------------------------------

  CREATE TABLE "UM"."D_SYMPTOM" 
   (	"SYNO" NUMBER(5,0), 
	"DNAME" VARCHAR2(40 BYTE), 
	"SYNAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table D_WEAKEN
--------------------------------------------------------

  CREATE TABLE "UM"."D_WEAKEN" 
   (	"WNO" NUMBER(5,0), 
	"DNAME" VARCHAR2(40 BYTE), 
	"SPCODE" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOSINFO
--------------------------------------------------------

  CREATE TABLE "UM"."HOSINFO" 
   (	"ID" NUMBER(*,0), 
	"TITLE" VARCHAR2(100 BYTE), 
	"LINK" VARCHAR2(100 BYTE), 
	"CATEGORY" VARCHAR2(100 BYTE), 
	"TELEPHONE" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"ROADADDRESS" VARCHAR2(100 BYTE), 
	"MAPX" NUMBER(*,0), 
	"MAPY" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into UM.D_BOARD
SET DEFINE OFF;
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (6,'��ũ(�߰���Ż����)',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (7,'������ Ż��',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (8,'���忰',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (9,'�����ƴܶ�(PSS)',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (10,'����� ������',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (11,'����� ����',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (12,'��������',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (13,'�޼��ź���',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (14,'��������',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (15,'ġ���� / ġ�ֿ�',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (16,'�����ź���',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (17,'�������������',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (18,'�ĺ� ���̷���',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (1,'����',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (2,'����',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (3,'�����ߵ�',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (4,'�鳻��',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (5,'�����',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (19,'��������',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (20,'����Ἦ',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (21,'������',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (22,'�˷�����',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (23,'���溯��',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (24,'���ߺ�',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (25,'���̿�',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (26,'�Ǻκ�',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (27,'��� ���ı�',to_date('20/07/02','RR/MM/DD'));
REM INSERTING into UM.D_COMMENT
SET DEFINE OFF;
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (3,'umum',2,to_date('20/05/04','RR/MM/DD'),'I');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (4,'umum',4,to_date('20/05/28','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (5,'umum',25,to_date('20/05/28','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (8,'������',2,to_date('20/09/24','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (6,'umum',16,to_date('20/06/04','RR/MM/DD'),'I');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (7,'umum',16,to_date('20/06/04','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (1,'wwwww',10,to_date('19/08/31','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (2,'umum',26,to_date('19/09/04','RR/MM/DD'),'I');
REM INSERTING into UM.D_DISEASE
SET DEFINE OFF;
Insert into UM.D_DISEASE (DNAME,DAGE) values ('����',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('����',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�����ߵ�',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�鳻��',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�����',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('��ũ(�߰���Ż����)',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('������ Ż��',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('���忰',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�����ƴܶ�(PSS)',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('����� ������',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('����� ����',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('��������',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�޼��ź���',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('��������',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('ġ���� / ġ�ֿ�',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�����ź���',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('��� ���ı�',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�Ǻκ�',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('���̿�',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('���ߺ�',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('���溯��',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�˷�����',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('������',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('����Ἦ',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('��������',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�ĺ� ���̷���',-1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('�������������',0);
REM INSERTING into UM.D_MEMBER
SET DEFINE OFF;
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (7,'abcd','1234','���','U',to_date('20/05/21','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (12,'djatngur12','1234','������','U',to_date('20/09/24','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (8,'������','1234','�����','U',to_date('20/06/04','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (3,'djatngus','1234','umum','U',to_date('20/06/10','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (6,'djatngur','1234','wwwww','U',to_date('20/06/17','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (11,'djatngur123','1234','�ȳ�','U',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (10,'soohyuk96','songgh73','����','U',to_date('20/07/02','RR/MM/DD'));
REM INSERTING into UM.D_PET
SET DEFINE OFF;
Insert into UM.D_PET (PNO,MID,SPCODE,PNAME) values (1,'djatngus','mpoo','���');
REM INSERTING into UM.D_SPECIES
SET DEFINE OFF;
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('mpoo','�̴Ͼ���Ǫ��');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('tpoo','����Ǫ��');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('coca','��ī���ĴϿ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('schn','��������');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('retri','��Ʈ����');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bteri','�������׸���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('husky','�ú������㽺Ű');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('yteri','��ũ���׸���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('dachs','�ڽ���Ʈ');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('welsh','�����ڱ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('chihua','ġ�Ϳ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('beagle','���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('peki','��Ű����');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bhound','�ټ��Ͽ��');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('pome','���޶�Ͼ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('malte','��Ƽ��');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bichon','���������');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('shitzu','����');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('hava','�Ϲٳ���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('samo','��𿹵�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('dober','���������ɼ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('schaf','���ռ��۵�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('oeshee','�õ��ױ۸�������');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('lassa','���м�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('point','������');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('britt','�긮Ʈ��');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('esspan','�ױ۸����������Ž��ĴϿ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('esett','�ױ۸��ü���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('buteri','���׸���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('cteri','�ɾ��׸���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('stber','����Ʈ������');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bull','�ҵ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('masti','����Ƽ��');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('rott','��Ʈ���Ϸ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('pug','�۱�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('pitbul','�ͺ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('amalam','�˷���ĭ�ȷ���Ʈ');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('weima','���̸����');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('gpoint','���ռ����������');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('dalma','�޸��þ�');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('brteri','�����þ��׸���');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('great','�׷���Ʈ����');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('akita','��ŰŸ');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('shar','������');
REM INSERTING into UM.D_SYMPTOM
SET DEFINE OFF;
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (1,'����','��Ż��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (2,'����','�и�����ȭ');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (3,'����','�����̻�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (4,'����','��������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (5,'����','�๰');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (6,'����','��ħ');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (7,'�����ߵ�','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (8,'�����ߵ�','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (9,'�����ߵ�','�Ծ���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (10,'�����ߵ�','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (11,'�����ߵ�','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (12,'�����ߵ�','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (13,'�����ߵ�','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (14,'�鳻��','��������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (15,'�鳻��','���÷�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (16,'�����','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (17,'�����','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (18,'�����','��������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (19,'�����','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (20,'�����','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (21,'�����','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (22,'�����','�����ظ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (23,'�����','��ħ');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (24,'��ũ(�߰���Ż����)','�����̻�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (25,'��ũ(�߰���Ż����)','���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (26,'������ Ż��','�����̻�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (27,'������ Ż��','�����Ҹ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (28,'���忰','��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (29,'���忰','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (30,'���忰','ü�߰���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (31,'���忰','�ٴ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (32,'���忰','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (33,'���忰','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (34,'���忰','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (35,'���忰','��ȣ��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (36,'�����ƴܶ�(PSS)','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (37,'�����ƴܶ�(PSS)','�ٴ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (38,'�����ƴܶ�(PSS)','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (39,'�����ƴܶ�(PSS)','���÷�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (40,'�����ƴܶ�(PSS)','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (41,'�����ƴܶ�(PSS)','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (42,'�����ƴܶ�(PSS)','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (43,'�����ƴܶ�(PSS)','���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (44,'�����ƴܶ�(PSS)','��ħ');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (45,'����� ������','��ħ');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (46,'����� ������','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (47,'����� ������','��ȣ��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (48,'����� ����','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (49,'����� ����','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (50,'����� ����','��ȣ��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (51,'����� ����','â��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (52,'����� ����','��������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (53,'��������','��ħ');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (54,'��������','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (55,'��������','ȣ����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (56,'�޼��ź���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (57,'�޼��ź���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (58,'�޼��ź���','�ٴ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (59,'�޼��ź���','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (60,'�޼��ź���','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (61,'�޼��ź���','���鰨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (62,'�޼��ź���','����������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (63,'�޼��ź���','����������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (64,'��������','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (65,'ġ���� / ġ�ֿ�','�Ծ���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (66,'ġ���� / ġ�ֿ�','���ո�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (67,'ġ���� / ġ�ֿ�','��ġ������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (68,'�����ź���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (69,'�����ź���','ü�߰���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (70,'�����ź���','�ٴ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (71,'�����ź���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (72,'�����ź���','���÷�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (73,'�����ź���','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (74,'�����ź���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (75,'�����ź���','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (76,'�����ź���','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (77,'�����ź���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (78,'�����ź���','����������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (79,'��� ���ı�','�ٴ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (80,'��� ���ı�','�����ظ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (81,'��� ���ı�','��ȣ��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (82,'��� ���ı�','ȣ����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (83,'�Ǻκ�','�Ǻθ��ܱ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (84,'�Ǻκ�','�Ǻ��ӱ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (85,'�Ǻκ�','�Ǻν���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (86,'���̿�','�;���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (87,'���̿�','�Ǻθ��ܱ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (88,'���̿�','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (89,'���ߺ�','��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (90,'���ߺ�','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (91,'���ߺ�','���鰨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (92,'���ߺ�','���ݼ�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (93,'���溯��','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (94,'���溯��','ü�߰���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (95,'���溯��','�ٴ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (96,'���溯��','���÷�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (97,'���溯��','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (98,'���溯��','��������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (99,'���溯��','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (100,'���溯��','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (101,'���溯��','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (102,'���溯��','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (103,'�˷�����','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (104,'�˷�����','�Ǻθ��ܱ�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (105,'�˷�����','��Ż��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (106,'�˷�����','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (107,'������','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (108,'������','ü�߰���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (109,'������','���÷�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (110,'������','�๰');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (111,'������','������');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (112,'������','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (113,'������','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (114,'������','��ȣ��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (115,'����Ἦ','��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (116,'����Ἦ','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (117,'����Ἦ','ü�߰���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (118,'����Ἦ','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (119,'����Ἦ','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (120,'��������','ü�߰���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (121,'��������','�Ծ���');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (122,'��������','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (123,'��������','���ո�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (124,'�ĺ� ���̷���','��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (125,'�ĺ� ���̷���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (126,'�ĺ� ���̷���','����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (127,'�ĺ� ���̷���','�Ŀ尨��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (128,'�ĺ� ���̷���','�����');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (129,'�ĺ� ���̷���','��ȣ��');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (130,'�������������','�����̻�');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (131,'�������������','��ħ');
REM INSERTING into UM.D_WEAKEN
SET DEFINE OFF;
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (1,'�鳻��','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (2,'�鳻��','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (3,'�鳻��','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (4,'�鳻��','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (5,'�鳻��','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (6,'�鳻��','bteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (7,'�鳻��','husky');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (8,'�鳻��','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (9,'��ũ(�߰���Ż����)','dachs');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (10,'��ũ(�߰���Ż����)','welsh');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (11,'��ũ(�߰���Ż����)','chihua');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (12,'��ũ(�߰���Ż����)','beagle');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (13,'��ũ(�߰���Ż����)','peki');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (14,'��ũ(�߰���Ż����)','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (15,'��ũ(�߰���Ż����)','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (16,'��ũ(�߰���Ż����)','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (17,'��ũ(�߰���Ż����)','bhound');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (18,'������ Ż��','pome');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (19,'������ Ż��','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (20,'������ Ż��','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (21,'���忰','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (22,'���忰','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (23,'�����ƴܶ�(PSS)','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (24,'�����ƴܶ�(PSS)','dachs');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (25,'�����ƴܶ�(PSS)','malte');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (26,'�����ƴܶ�(PSS)','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (27,'�����ƴܶ�(PSS)','bichon');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (28,'�����ƴܶ�(PSS)','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (29,'�����ƴܶ�(PSS)','hava');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (30,'�����ƴܶ�(PSS)','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (31,'�����ƴܶ�(PSS)','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (32,'�����ƴܶ�(PSS)','peki');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (33,'�����ƴܶ�(PSS)','samo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (34,'�����ƴܶ�(PSS)','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (35,'�����ƴܶ�(PSS)','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (36,'�����ƴܶ�(PSS)','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (37,'�����ƴܶ�(PSS)','oeshee');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (38,'�����ƴܶ�(PSS)','lassa');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (39,'����� ������','pome');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (40,'����� ������','chihua');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (41,'����� ������','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (42,'����� ������','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (43,'����� ������','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (44,'��������','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (45,'��������','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (46,'��������','malte');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (47,'��������','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (48,'��������','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (49,'��������','point');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (50,'��������','britt');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (51,'��������','esspan');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (52,'��������','esett');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (53,'��������','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (54,'ġ���� / ġ�ֿ�','chihua');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (55,'ġ���� / ġ�ֿ�','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (56,'ġ���� / ġ�ֿ�','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (57,'ġ���� / ġ�ֿ�','pome');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (58,'ġ���� / ġ�ֿ�','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (59,'�����ź���','samo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (60,'�����ź���','buteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (61,'�����ź���','cteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (62,'�����ź���','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (63,'�����ź���','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (64,'�������������','stber');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (65,'�������������','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (66,'�������������','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (67,'�������������','bull');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (68,'�������������','masti');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (69,'�������������','rott');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (70,'�������������','pug');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (71,'�ĺ� ���̷���','rott');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (72,'�ĺ� ���̷���','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (73,'�ĺ� ���̷���','pitbul');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (74,'�ĺ� ���̷���','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (75,'�ĺ� ���̷���','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (76,'�ĺ� ���̷���','esspan');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (77,'�ĺ� ���̷���','amalam');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (78,'��������','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (79,'��������','weima');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (80,'��������','stber');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (81,'��������','gpoint');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (82,'��������','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (83,'����Ἦ','lassa');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (84,'����Ἦ','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (85,'����Ἦ','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (86,'����Ἦ','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (87,'����Ἦ','dalma');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (88,'����Ἦ','brteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (89,'����Ἦ','bull');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (90,'����Ἦ','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (91,'����Ἦ','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (92,'����Ἦ','welsh');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (93,'����Ἦ','peki');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (94,'���溯��','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (95,'���溯��','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (96,'���溯��','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (97,'���̿�','malte');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (98,'���̿�','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (99,'���̿�','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (100,'�Ǻκ�','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (101,'�Ǻκ�','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (102,'�Ǻκ�','great');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (103,'�Ǻκ�','akita');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (104,'�Ǻκ�','dalma');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (105,'�Ǻκ�','shar');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (106,'��� ���ı�','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (107,'��� ���ı�','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (108,'��� ���ı�','bteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (109,'��� ���ı�','dachs');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (110,'��� ���ı�','pome');
REM INSERTING into UM.HOSINFO
SET DEFINE OFF;
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (1,'24�ñ۷θ� ��������','https://www.instagram.com/glory.vet','�ǰ�,�Ƿ�>��������','02-855-8575','����Ư���� ��õ�� ���굿 145-13','����Ư���� ��õ�� ������ 483',302750,542205);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (2,'�����ﺸ ��������','http://blog.naver.com/chairman82','�ǰ�,�Ƿ�>��������','051-504-1813','�λ걤���� ������ ������ 28-15','�λ걤���� ������ �����Ϸ�63���� 11',496505,289497);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (3,'���� 24�� ��������','http://blog.naver.com/paju24ahcafe','�ǰ�,�Ƿ�>��������','031-944-5575','��⵵ ���ֽ� �񵿵� 941-1 �Ｚ������ 2�� 201ȣ','��⵵ ���ֽ� ���Ϸ� 87',288584,570234);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (4,'24�� ������ ���� �޵��ü���','http://blog.naver.com/dr_jiguchon','�ǰ�,�Ƿ�>��������','02-869-7582','����Ư���� ���α� ���ε� 505-17','����Ư���� ���α� �����߾ӷ�31�� 30 ��������',301589,544660);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (5,'���� 24�ñ۷θ� �����ǷἾ��','http://www.namc.co.kr','�ǰ�,�Ƿ�>��������','02-984-0075','����Ư���� ���ϱ� ������ 1163','����Ư���� ���ϱ� ����4�� 3',314059,556398);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (6,'�λ굿�� �޵��ü���','http://www.busanamc.com/','�ǰ�,�Ƿ�>��������','051-868-7591','�λ걤���� ������ ������ 2-7','�λ걤���� ������ ������� 278',498371,288535);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (7,'�ƻ굿�� �ǷἾ��','http://blog.naver.com/asanimal','�ǰ�,�Ƿ�>��������','041-425-0075','��û���� �ƻ�� ��ȭ�� 1581','��û���� �ƻ�� ��ȭ���79���� 21 1, 2F',311961,464143);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (8,'û��ȣ�� ���� �޵��ü���','http://www.lakeamc.com/','�ǰ�,�Ƿ�>��������','032-568-0022','��õ������ ���� û�� 105-62','��õ������ ���� Ǫ����7���� 2',279116,547848);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (9,'N���� ��ȿ���� �����','http://www.namc.co.kr/','�ǰ�,�Ƿ�>��������','02-919-0075','����Ư���� ����� ��赿  371-2 1�� ��� 24�� N�����ǷἾ��','����Ư���� ����� ����� 456 ��Ϻ���',317849,562103);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (10,'�����ݷ����� �Ƿ��',null,'�ǰ�,�Ƿ�>��������','031-211-0975','��⵵ ������ �ȴޱ� �ΰ赿 979-2','��⵵ ������ �ȴޱ� ������ 461',313849,518846);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (11,'24�� �뵿�� ����','https://www.instagram.com/glory.vet','�ǰ�,�Ƿ�>��������','055-286-7511','��󳲵� â���� ���걸 �󳲵� 34-2','��󳲵� â���� ���걸 ������ 10',462237,291512);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (12,'���� 24�� ȣ������ �ǷἾ��','http://blog.naver.com/gimpoamc','�ǰ�,�Ƿ�>��������','031-8049-0203','��⵵ ������ ��絿 1296-3','��⵵ ������ �����Ѱ�11�� 328 �������� 212ȣ',284212,562280);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (13,'24�� �ø����� ���� �޵��ü���','http://allimals.pet-mate.net/','�ǰ�,�Ƿ�>��������','063-275-7979','����ϵ� ���ֽ� ������ ��õ��1�� 809-3','����ϵ� ���ֽ� ������ ��õ�߾ӷ� 213',320829,363258);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (14,'24�� �̷� ���� �ǷἾ��','http://mirae24.co.kr','�ǰ�,�Ƿ�>��������','031-705-2475','��⵵ ������ �д籸 ������ 80-1','��⵵ ������ �д籸 ������255���� 1',323130,531766);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (15,'24�� ��������',null,'�ǰ�,�Ƿ�>��������','042-487-0839','���������� ���� ź�浿 1028','���������� ���� ������ 138 ��������',345865,416376);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (16,'24�� �ҷ� ���� ����','http://blog.naver.com/sorae-ah','�ǰ�,�Ƿ�>��������','032-438-3227','��õ������ ������ ������ 751-1','��õ������ ������ �ҷ�������16���� 75 ��Ÿ���� C�� 1�� 24�üҷ���������',288050,533866);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (17,'24�� ��� ����Ʈ ��������','http://blog.naver.com/smartah16283','�ǰ�,�Ƿ�>��������','031-432-1224','��⵵ ����� ���յ�  2513-1','��⵵ ����� ���3�� 86 ����������2 2�� 213ȣ',287670,530553);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (18,'24�� ���ɾ� ���� �ǷἾ��','http://blog.naver.com/goodcare24','�ǰ�,�Ƿ�>��������','02-6956-2475','����Ư���� ���Ǳ� ��õ�� 1673-21','����Ư���� ���Ǳ� ���μ�ȯ�� 1861 1�� 103ȣ',307941,542502);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (19,'24�� ���Ͽ� ���� �޵��ü���',null,'�ǰ�,�Ƿ�>��������','055-288-5055','��󳲵� â���� ��â�� ���赿 465-3','��󳲵� â���� ��â�� ���̴��56���� 2-35 2��',457764,295657);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (20,'�ؿ�� 24�� ���� �Ƿ�� ','https://blog.naver.com/volants','�ǰ�,�Ƿ�>��������','051-702-7582','�λ걤���� �ؿ�뱸 �µ� 1476-1','�λ걤���� �ؿ�뱸 ���� 45 ��������� 1�� 101ȣ',507386,286042);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (21,'24�� ���� ��������','blog.naver.com/numberhana','�ǰ�,�Ƿ�>��������','02-534-3475','����Ư���� ���ʱ� ����1�� 20-45 �������������� 133ȣ','����Ư���� ���ʱ� ����� 24 ���������ֱ��߽ɻ�1��',312642,545452);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (22,'�ؿ�� 24�� ���� �Ƿ�� ','https://blog.naver.com/volants','�ǰ�,�Ƿ�>��������','051-702-7582','�λ걤���� �ؿ�뱸 �µ� 1476-1','�λ걤���� �ؿ�뱸 ���� 45 ��������� 1�� 101ȣ',507386,286042);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (23,'24�� �ִ� ��������',null,'�ǰ�,�Ƿ�>��������','02-926-8275','����Ư���� ���ϱ� ������5�� 3-1','����Ư���� ���ϱ� ������ 99 ��������',313626,554001);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (24,'24�� �� ���� �ǷἾ��','http://www.solamc.co.kr/','�ǰ�,�Ƿ�>��������','031-345-4500','��⵵ ������ �꺻�� 1147','��⵵ ������ ���� 529 �ݰ�2�����ֻ��վ���Ʈ �� 1��',304763,529247);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (25,'24�� ��Ŭ���� �����޵��ü���','http://blog.naver.com/theclassamc','�ǰ�,�Ƿ�>��������','031-713-7975','��⵵ ������ �д籸 ���ڵ� 169-1','��⵵ ������ �д籸 ������� 275 �Ƶ����Ӹ��� A�� �� 1�� 101ȣ',321145,529143);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (26,'�ٸ��� ���� �ǷἾ��',null,'�ǰ�,�Ƿ�>��������','02-903-7582','����Ư���� ���ϱ� ������ 39-10','����Ư���� ���ϱ� ���ط� 65',313907,560356);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (27,'��Ÿ�� ���� �޵��ü���','http://vitaminamc.com','�ǰ�,�Ƿ�>��������','031-465-7582','��⵵ �Ⱦ�� ���ȱ� �Ⱦ絿 847-10','��⵵ �Ⱦ�� ���ȱ� �Ⱦ�� 374-1',304305,534182);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (28,'ž�� ���� �޵��ü���','http://tamc.kr','�ǰ�,�Ƿ�>��������','053-637-7501','�뱸������ �޼��� ���ε� 72-1','�뱸������ �޼��� ����� 291 �����߼�Ÿ��',448686,357881);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (29,'IU 24�� ���� �޵��ü���',null,'�ǰ�,�Ƿ�>��������','02-926-8275','��⵵ �����ν� �����ε� 94-6','��⵵ �����ν� ����� 52',316606,570937);
--------------------------------------------------------
--  DDL for Index D_BOARD_BNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_BOARD_BNO_PK" ON "UM"."D_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_COMMENT_CNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_COMMENT_CNO_PK" ON "UM"."D_COMMENT" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_DISEASE_DNAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_DISEASE_DNAME_PK" ON "UM"."D_DISEASE" ("DNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_MEMBER_MID_UQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_MEMBER_MID_UQ" ON "UM"."D_MEMBER" ("MID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_MEMBER_MNICK_UQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_MEMBER_MNICK_UQ" ON "UM"."D_MEMBER" ("MNICK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_MEMBER_MNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_MEMBER_MNO_PK" ON "UM"."D_MEMBER" ("MNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_PET_PNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_PET_PNO_PK" ON "UM"."D_PET" ("PNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_SPECIES_SPCODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_SPECIES_SPCODE_PK" ON "UM"."D_SPECIES" ("SPCODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_SPECIES_SPNAME_UQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_SPECIES_SPNAME_UQ" ON "UM"."D_SPECIES" ("SPNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_SYMPTOM_SYNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_SYMPTOM_SYNO_PK" ON "UM"."D_SYMPTOM" ("SYNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index D_WEAKEN_WNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."D_WEAKEN_WNO_PK" ON "UM"."D_WEAKEN" ("WNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012336
--------------------------------------------------------

  CREATE UNIQUE INDEX "UM"."SYS_C0012336" ON "UM"."HOSINFO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table D_BOARD
--------------------------------------------------------

  ALTER TABLE "UM"."D_BOARD" ADD CONSTRAINT "D_BOARD_BNO_PK" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_COMMENT
--------------------------------------------------------

  ALTER TABLE "UM"."D_COMMENT" ADD CONSTRAINT "D_COMMENT_CNO_PK" PRIMARY KEY ("CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_DISEASE
--------------------------------------------------------

  ALTER TABLE "UM"."D_DISEASE" ADD CONSTRAINT "D_DISEASE_DNAME_PK" PRIMARY KEY ("DNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_MEMBER
--------------------------------------------------------

  ALTER TABLE "UM"."D_MEMBER" ADD CONSTRAINT "D_MEMBER_MID_UQ" UNIQUE ("MID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "UM"."D_MEMBER" ADD CONSTRAINT "D_MEMBER_MNICK_UQ" UNIQUE ("MNICK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "UM"."D_MEMBER" ADD CONSTRAINT "D_MEMBER_MNO_PK" PRIMARY KEY ("MNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_PET
--------------------------------------------------------

  ALTER TABLE "UM"."D_PET" MODIFY ("PNAME" CONSTRAINT "D_PET_PNAME_NN" NOT NULL ENABLE);
 
  ALTER TABLE "UM"."D_PET" ADD CONSTRAINT "D_PET_PNO_PK" PRIMARY KEY ("PNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_SPECIES
--------------------------------------------------------

  ALTER TABLE "UM"."D_SPECIES" ADD CONSTRAINT "D_SPECIES_SPCODE_PK" PRIMARY KEY ("SPCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "UM"."D_SPECIES" ADD CONSTRAINT "D_SPECIES_SPNAME_UQ" UNIQUE ("SPNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_SYMPTOM
--------------------------------------------------------

  ALTER TABLE "UM"."D_SYMPTOM" ADD CONSTRAINT "D_SYMPTOM_SYNO_PK" PRIMARY KEY ("SYNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_WEAKEN
--------------------------------------------------------

  ALTER TABLE "UM"."D_WEAKEN" ADD CONSTRAINT "D_WEAKEN_WNO_PK" PRIMARY KEY ("WNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOSINFO
--------------------------------------------------------

  ALTER TABLE "UM"."HOSINFO" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table D_BOARD
--------------------------------------------------------

  ALTER TABLE "UM"."D_BOARD" ADD CONSTRAINT "D_BOARD_DNAME_FK" FOREIGN KEY ("DNAME")
	  REFERENCES "UM"."D_DISEASE" ("DNAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table D_COMMENT
--------------------------------------------------------

  ALTER TABLE "UM"."D_COMMENT" ADD CONSTRAINT "D_COMMENT_BNO_FK" FOREIGN KEY ("BNO")
	  REFERENCES "UM"."D_BOARD" ("BNO") ENABLE;
 
  ALTER TABLE "UM"."D_COMMENT" ADD CONSTRAINT "D_COMMENT_MNICK_FK" FOREIGN KEY ("MNICK")
	  REFERENCES "UM"."D_MEMBER" ("MNICK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table D_PET
--------------------------------------------------------

  ALTER TABLE "UM"."D_PET" ADD CONSTRAINT "D_PET_MID_FK" FOREIGN KEY ("MID")
	  REFERENCES "UM"."D_MEMBER" ("MID") ENABLE;
 
  ALTER TABLE "UM"."D_PET" ADD CONSTRAINT "D_PET_SPCODE_FK" FOREIGN KEY ("SPCODE")
	  REFERENCES "UM"."D_SPECIES" ("SPCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table D_SYMPTOM
--------------------------------------------------------

  ALTER TABLE "UM"."D_SYMPTOM" ADD CONSTRAINT "D_SYMPTOM_DNAME_FK" FOREIGN KEY ("DNAME")
	  REFERENCES "UM"."D_DISEASE" ("DNAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table D_WEAKEN
--------------------------------------------------------

  ALTER TABLE "UM"."D_WEAKEN" ADD CONSTRAINT "D_WEAKEN_DNAME_FK" FOREIGN KEY ("DNAME")
	  REFERENCES "UM"."D_DISEASE" ("DNAME") ENABLE;
 
  ALTER TABLE "UM"."D_WEAKEN" ADD CONSTRAINT "D_WEAKEN_SPCODE_FK" FOREIGN KEY ("SPCODE")
	  REFERENCES "UM"."D_SPECIES" ("SPCODE") ENABLE;
