--------------------------------------------------------
--  파일이 생성됨 - 토요일-6월-12-2021   
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
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (6,'디스크(추간판탈출증)',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (7,'슬개골 탈구',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (8,'췌장염',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (9,'간문맥단락(PSS)',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (10,'기관지 협착증',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (11,'재생성 빈혈',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (12,'심장사상충',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (13,'급성신부전',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (14,'유선종양',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (15,'치은염 / 치주염',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (16,'만성신부전',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (17,'고관절이형성증',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (18,'파보 바이러스',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (1,'링웜',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (2,'감기',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (3,'포도중독',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (4,'백내장',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (5,'장폐색',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (19,'구강종양',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (20,'신장결석',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (21,'비강종양',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (22,'알레르기',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (23,'간경변증',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (24,'광견병',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (25,'외이염',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (26,'피부병',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_BOARD (BNO,DNAME,BDATE) values (27,'쿠싱 증후군',to_date('20/07/02','RR/MM/DD'));
REM INSERTING into UM.D_COMMENT
SET DEFINE OFF;
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (3,'umum',2,to_date('20/05/04','RR/MM/DD'),'I');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (4,'umum',4,to_date('20/05/28','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (5,'umum',25,to_date('20/05/28','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (8,'수혁이',2,to_date('20/09/24','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (6,'umum',16,to_date('20/06/04','RR/MM/DD'),'I');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (7,'umum',16,to_date('20/06/04','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (1,'wwwww',10,to_date('19/08/31','RR/MM/DD'),'V');
Insert into UM.D_COMMENT (CNO,MNICK,BNO,CDATE,CTYPE) values (2,'umum',26,to_date('19/09/04','RR/MM/DD'),'I');
REM INSERTING into UM.D_DISEASE
SET DEFINE OFF;
Insert into UM.D_DISEASE (DNAME,DAGE) values ('링웜',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('감기',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('포도중독',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('백내장',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('장폐색',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('디스크(추간판탈출증)',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('슬개골 탈구',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('췌장염',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('간문맥단락(PSS)',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('기관지 협착증',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('재생성 빈혈',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('심장사상충',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('급성신부전',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('유선종양',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('치은염 / 치주염',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('만성신부전',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('쿠싱 증후군',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('피부병',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('외이염',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('광견병',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('간경변증',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('알레르기',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('비강종양',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('신장결석',0);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('구강종양',1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('파보 바이러스',-1);
Insert into UM.D_DISEASE (DNAME,DAGE) values ('고관절이형성증',0);
REM INSERTING into UM.D_MEMBER
SET DEFINE OFF;
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (7,'abcd','1234','라온','U',to_date('20/05/21','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (12,'djatngur12','1234','수혁이','U',to_date('20/09/24','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (8,'엄수혁','1234','라온이','U',to_date('20/06/04','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (3,'djatngus','1234','umum','U',to_date('20/06/10','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (6,'djatngur','1234','wwwww','U',to_date('20/06/17','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (11,'djatngur123','1234','안녕','U',to_date('20/07/02','RR/MM/DD'));
Insert into UM.D_MEMBER (MNO,MID,MPASSWORD,MNICK,MTYPE,MDATE) values (10,'soohyuk96','songgh73','장라온','U',to_date('20/07/02','RR/MM/DD'));
REM INSERTING into UM.D_PET
SET DEFINE OFF;
Insert into UM.D_PET (PNO,MID,SPCODE,PNAME) values (1,'djatngus','mpoo','모모');
REM INSERTING into UM.D_SPECIES
SET DEFINE OFF;
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('mpoo','미니어쳐푸들');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('tpoo','토이푸들');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('coca','코카스파니엘');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('schn','슈나우저');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('retri','리트리버');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bteri','보스턴테리어');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('husky','시베리안허스키');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('yteri','요크셔테리어');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('dachs','닥스훈트');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('welsh','웰시코기');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('chihua','치와와');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('beagle','비글');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('peki','페키니즈');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bhound','바셋하운드');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('pome','포메라니안');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('malte','말티즈');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bichon','비숑프리제');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('shitzu','시츄');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('hava','하바네즈');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('samo','사모예드');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('dober','도베르만핀셔');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('schaf','저먼셰퍼드');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('oeshee','올드잉글리쉬쉽독');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('lassa','라사압소');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('point','포인터');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('britt','브리트니');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('esspan','잉글리쉬스프링거스파니엘');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('esett','잉글리시세터');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('buteri','불테리어');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('cteri','케언테리어');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('stber','세인트버나드');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('bull','불독');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('masti','마스티프');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('rott','로트와일러');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('pug','퍼그');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('pitbul','핏불');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('amalam','알래스칸맬러뮤트');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('weima','와이마라너');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('gpoint','저먼숏헤어포인터');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('dalma','달마시안');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('brteri','블랙러시안테리어');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('great','그레이트데인');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('akita','아키타');
Insert into UM.D_SPECIES (SPCODE,SPNAME) values ('shar','샤페이');
REM INSERTING into UM.D_SYMPTOM
SET DEFINE OFF;
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (1,'링웜','털탈모');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (2,'링웜','털모질악화');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (3,'링웜','발톱이상');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (4,'감기','눈물많음');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (5,'감기','콧물');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (6,'감기','기침');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (7,'포도중독','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (8,'포도중독','무뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (9,'포도중독','입악취');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (10,'포도중독','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (11,'포도중독','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (12,'포도중독','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (13,'포도중독','발작');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (14,'백내장','눈불투명');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (15,'백내장','눈시력저하');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (16,'장폐색','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (17,'장폐색','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (18,'장폐색','변검은색');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (19,'장폐색','변비');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (20,'장폐색','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (21,'장폐색','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (22,'장폐색','복부팽만');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (23,'장폐색','입침');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (24,'디스크(추간판탈출증)','걸음이상');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (25,'디스크(추간판탈출증)','경련');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (26,'슬개골 탈구','걸음이상');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (27,'슬개골 탈구','무릎소리');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (28,'췌장염','열');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (29,'췌장염','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (30,'췌장염','체중감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (31,'췌장염','다뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (32,'췌장염','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (33,'췌장염','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (34,'췌장염','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (35,'췌장염','과호흡');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (36,'간문맥단락(PSS)','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (37,'간문맥단락(PSS)','다뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (38,'간문맥단락(PSS)','혈뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (39,'간문맥단락(PSS)','눈시력저하');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (40,'간문맥단락(PSS)','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (41,'간문맥단락(PSS)','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (42,'간문맥단락(PSS)','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (43,'간문맥단락(PSS)','경련');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (44,'간문맥단락(PSS)','입침');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (45,'기관지 협착증','기침');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (46,'기관지 협착증','발작');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (47,'기관지 협착증','과호흡');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (48,'재생성 빈혈','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (49,'재생성 빈혈','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (50,'재생성 빈혈','과호흡');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (51,'재생성 빈혈','창백');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (52,'재생성 빈혈','수면증가');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (53,'심장사상충','기침');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (54,'심장사상충','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (55,'심장사상충','호흡곤란');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (56,'급성신부전','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (57,'급성신부전','무뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (58,'급성신부전','다뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (59,'급성신부전','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (60,'급성신부전','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (61,'급성신부전','수면감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (62,'급성신부전','음수량증가');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (63,'급성신부전','음수량감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (64,'유선종양','종양');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (65,'치은염 / 치주염','입악취');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (66,'치은염 / 치주염','입잇몸붉음');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (67,'치은염 / 치주염','입치석증가');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (68,'만성신부전','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (69,'만성신부전','체중감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (70,'만성신부전','다뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (71,'만성신부전','혈뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (72,'만성신부전','눈시력저하');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (73,'만성신부전','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (74,'만성신부전','변비');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (75,'만성신부전','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (76,'만성신부전','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (77,'만성신부전','발작');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (78,'만성신부전','음수량증가');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (79,'쿠싱 증후군','다뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (80,'쿠싱 증후군','복부팽만');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (81,'쿠싱 증후군','과호흡');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (82,'쿠싱 증후군','호흡곤란');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (83,'피부병','피부몸긁기');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (84,'피부병','피부핥기');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (85,'피부병','피부습진');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (86,'외이염','귀악취');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (87,'외이염','피부몸긁기');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (88,'외이염','귀지');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (89,'광견병','열');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (90,'광견병','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (91,'광견병','수면감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (92,'광견병','공격성증가');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (93,'간경변증','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (94,'간경변증','체중감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (95,'간경변증','다뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (96,'간경변증','눈시력저하');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (97,'간경변증','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (98,'간경변증','변검은색');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (99,'간경변증','변비');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (100,'간경변증','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (101,'간경변증','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (102,'간경변증','발작');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (103,'알레르기','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (104,'알레르기','피부몸긁기');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (105,'알레르기','털탈모');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (106,'알레르기','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (107,'비강종양','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (108,'비강종양','체중감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (109,'비강종양','눈시력저하');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (110,'비강종양','콧물');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (111,'비강종양','변설사');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (112,'비강종양','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (113,'비강종양','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (114,'비강종양','과호흡');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (115,'신장결석','열');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (116,'신장결석','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (117,'신장결석','체중감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (118,'신장결석','무뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (119,'신장결석','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (120,'구강종양','체중감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (121,'구강종양','입악취');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (122,'구강종양','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (123,'구강종양','입잇몸붉음');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (124,'파보 바이러스','열');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (125,'파보 바이러스','구토');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (126,'파보 바이러스','혈뇨');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (127,'파보 바이러스','식욕감소');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (128,'파보 바이러스','무기력');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (129,'파보 바이러스','과호흡');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (130,'고관절이형성증','걸음이상');
Insert into UM.D_SYMPTOM (SYNO,DNAME,SYNAME) values (131,'고관절이형성증','입침');
REM INSERTING into UM.D_WEAKEN
SET DEFINE OFF;
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (1,'백내장','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (2,'백내장','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (3,'백내장','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (4,'백내장','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (5,'백내장','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (6,'백내장','bteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (7,'백내장','husky');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (8,'백내장','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (9,'디스크(추간판탈출증)','dachs');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (10,'디스크(추간판탈출증)','welsh');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (11,'디스크(추간판탈출증)','chihua');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (12,'디스크(추간판탈출증)','beagle');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (13,'디스크(추간판탈출증)','peki');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (14,'디스크(추간판탈출증)','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (15,'디스크(추간판탈출증)','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (16,'디스크(추간판탈출증)','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (17,'디스크(추간판탈출증)','bhound');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (18,'슬개골 탈구','pome');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (19,'슬개골 탈구','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (20,'슬개골 탈구','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (21,'췌장염','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (22,'췌장염','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (23,'간문맥단락(PSS)','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (24,'간문맥단락(PSS)','dachs');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (25,'간문맥단락(PSS)','malte');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (26,'간문맥단락(PSS)','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (27,'간문맥단락(PSS)','bichon');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (28,'간문맥단락(PSS)','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (29,'간문맥단락(PSS)','hava');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (30,'간문맥단락(PSS)','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (31,'간문맥단락(PSS)','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (32,'간문맥단락(PSS)','peki');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (33,'간문맥단락(PSS)','samo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (34,'간문맥단락(PSS)','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (35,'간문맥단락(PSS)','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (36,'간문맥단락(PSS)','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (37,'간문맥단락(PSS)','oeshee');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (38,'간문맥단락(PSS)','lassa');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (39,'기관지 협착증','pome');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (40,'기관지 협착증','chihua');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (41,'기관지 협착증','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (42,'기관지 협착증','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (43,'기관지 협착증','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (44,'유선종양','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (45,'유선종양','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (46,'유선종양','malte');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (47,'유선종양','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (48,'유선종양','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (49,'유선종양','point');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (50,'유선종양','britt');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (51,'유선종양','esspan');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (52,'유선종양','esett');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (53,'유선종양','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (54,'치은염 / 치주염','chihua');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (55,'치은염 / 치주염','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (56,'치은염 / 치주염','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (57,'치은염 / 치주염','pome');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (58,'치은염 / 치주염','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (59,'만성신부전','samo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (60,'만성신부전','buteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (61,'만성신부전','cteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (62,'만성신부전','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (63,'만성신부전','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (64,'고관절이형성증','stber');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (65,'고관절이형성증','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (66,'고관절이형성증','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (67,'고관절이형성증','bull');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (68,'고관절이형성증','masti');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (69,'고관절이형성증','rott');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (70,'고관절이형성증','pug');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (71,'파보 바이러스','rott');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (72,'파보 바이러스','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (73,'파보 바이러스','pitbul');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (74,'파보 바이러스','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (75,'파보 바이러스','schaf');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (76,'파보 바이러스','esspan');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (77,'파보 바이러스','amalam');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (78,'구강종양','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (79,'구강종양','weima');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (80,'구강종양','stber');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (81,'구강종양','gpoint');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (82,'구강종양','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (83,'신장결석','lassa');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (84,'신장결석','yteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (85,'신장결석','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (86,'신장결석','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (87,'신장결석','dalma');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (88,'신장결석','brteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (89,'신장결석','bull');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (90,'신장결석','schn');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (91,'신장결석','shitzu');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (92,'신장결석','welsh');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (93,'신장결석','peki');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (94,'간경변증','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (95,'간경변증','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (96,'간경변증','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (97,'외이염','malte');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (98,'외이염','coca');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (99,'외이염','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (100,'피부병','dober');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (101,'피부병','retri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (102,'피부병','great');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (103,'피부병','akita');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (104,'피부병','dalma');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (105,'피부병','shar');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (106,'쿠싱 증후군','mpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (107,'쿠싱 증후군','tpoo');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (108,'쿠싱 증후군','bteri');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (109,'쿠싱 증후군','dachs');
Insert into UM.D_WEAKEN (WNO,DNAME,SPCODE) values (110,'쿠싱 증후군','pome');
REM INSERTING into UM.HOSINFO
SET DEFINE OFF;
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (1,'24시글로리 동물병원','https://www.instagram.com/glory.vet','건강,의료>동물병원','02-855-8575','서울특별시 금천구 독산동 145-13','서울특별시 금천구 시흥대로 483',302750,542205);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (2,'사직삼보 동물병원','http://blog.naver.com/chairman82','건강,의료>동물병원','051-504-1813','부산광역시 동래구 사직동 28-15','부산광역시 동래구 사직북로63번길 11',496505,289497);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (3,'파주 24시 동물병원','http://blog.naver.com/paju24ahcafe','건강,의료>동물병원','031-944-5575','경기도 파주시 목동동 941-1 삼성프라자 2층 201호','경기도 파주시 교하로 87',288584,570234);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (4,'24시 지구촌 동물 메디컬센터','http://blog.naver.com/dr_jiguchon','건강,의료>동물병원','02-869-7582','서울특별시 구로구 구로동 505-17','서울특별시 구로구 구로중앙로31길 30 유성빌딩',301589,544660);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (5,'강북 24시글로리 동물의료센터','http://www.namc.co.kr','건강,의료>동물병원','02-984-0075','서울특별시 성북구 길음동 1163','서울특별시 성북구 삼양로4길 3',314059,556398);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (6,'부산동물 메디컬센터','http://www.busanamc.com/','건강,의료>동물병원','051-868-7591','부산광역시 연제구 거제동 2-7','부산광역시 연제구 거제대로 278',498371,288535);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (7,'아산동물 의료센터','http://blog.naver.com/asanimal','건강,의료>동물병원','041-425-0075','충청남도 아산시 용화동 1581','충청남도 아산시 용화고길79번길 21 1, 2F',311961,464143);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (8,'청라호수 동물 메디컬센터','http://www.lakeamc.com/','건강,의료>동물병원','032-568-0022','인천광역시 서구 청라동 105-62','인천광역시 서구 푸른로7번길 2',279116,547848);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (9,'N동물 의효센터 노원점','http://www.namc.co.kr/','건강,의료>동물병원','02-919-0075','서울특별시 노원구 상계동  371-2 1층 노원 24시 N동물의료센터','서울특별시 노원구 노원로 456 백암빌딩',317849,562103);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (10,'마음반려동물 의료원',null,'건강,의료>동물병원','031-211-0975','경기도 수원시 팔달구 인계동 979-2','경기도 수원시 팔달구 경수대로 461',313849,518846);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (11,'24시 용동물 병원','https://www.instagram.com/glory.vet','건강,의료>동물병원','055-286-7511','경상남도 창원시 성산구 상남동 34-2','경상남도 창원시 성산구 단정로 10',462237,291512);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (12,'김포 24시 호수동물 의료센터','http://blog.naver.com/gimpoamc','건강,의료>동물병원','031-8049-0203','경기도 김포시 운양동 1296-3','경기도 김포시 김포한강11로 328 더리버뷰 212호',284212,562280);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (13,'24시 올리몰스 동물 메디컬센터','http://allimals.pet-mate.net/','건강,의료>동물병원','063-275-7979','전라북도 전주시 덕진구 송천동1가 809-3','전라북도 전주시 덕진구 송천중앙로 213',320829,363258);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (14,'24시 미래 동물 의료센터','http://mirae24.co.kr','건강,의료>동물병원','031-705-2475','경기도 성남시 분당구 서현동 80-1','경기도 성남시 분당구 서현로255번길 1',323130,531766);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (15,'24시 동물병원',null,'건강,의료>동물병원','042-487-0839','대전광역시 서구 탄방동 1028','대전광역시 서구 문정로 138 서림빌딩',345865,416376);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (16,'24시 소래 동물 병원','http://blog.naver.com/sorae-ah','건강,의료>동물병원','032-438-3227','인천광역시 남동구 논현동 751-1','인천광역시 남동구 소래역남로16번길 75 더타워상가 C동 1층 24시소래동물병원',288050,533866);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (17,'24시 배곧 스마트 동물병원','http://blog.naver.com/smartah16283','건강,의료>동물병원','031-432-1224','경기도 시흥시 정왕동  2513-1','경기도 시흥시 배곧3로 86 센터프라자2 2층 213호',287670,530553);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (18,'24시 굿케어 동물 의료센터','http://blog.naver.com/goodcare24','건강,의료>동물병원','02-6956-2475','서울특별시 관악구 봉천동 1673-21','서울특별시 관악구 남부순환로 1861 1층 103호',307941,542502);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (19,'24시 유니온 동물 메디컬센터',null,'건강,의료>동물병원','055-288-5055','경상남도 창원시 의창구 도계동 465-3','경상남도 창원시 의창구 원이대로56번길 2-35 2층',457764,295657);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (20,'해운대 24시 동물 의료원 ','https://blog.naver.com/volants','건강,의료>동물병원','051-702-7582','부산광역시 해운대구 좌동 1476-1','부산광역시 해운대구 양운로 45 베르나움상가 1층 101호',507386,286042);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (21,'24시 예스 동물병원','blog.naver.com/numberhana','건강,의료>동물병원','02-534-3475','서울특별시 서초구 반포1동 20-45 반포자이프라자 133호','서울특별시 서초구 잠원로 24 반포자이주구중심상가1동',312642,545452);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (22,'해운대 24시 동물 의료원 ','https://blog.naver.com/volants','건강,의료>동물병원','051-702-7582','부산광역시 해운대구 좌동 1476-1','부산광역시 해운대구 양운로 45 베르나움상가 1층 101호',507386,286042);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (23,'24시 애니 동물병원',null,'건강,의료>동물병원','02-926-8275','서울특별시 성북구 보문동5가 3-1','서울특별시 성북구 보문로 99 영광빌딩',313626,554001);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (24,'24시 솔 동물 의료센터','http://www.solamc.co.kr/','건강,의료>동물병원','031-345-4500','경기도 군포시 산본동 1147','경기도 군포시 고산로 529 금강2단지주상복합아파트 상가 1층',304763,529247);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (25,'24시 더클래스 동물메디컬센터','http://blog.naver.com/theclassamc','건강,의료>동물병원','031-713-7975','경기도 성남시 분당구 정자동 169-1','경기도 성남시 분당구 성남대로 275 아데나팰리스 A동 상가 1층 101호',321145,529143);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (26,'바른펫 동물 의료센터',null,'건강,의료>동물병원','02-903-7582','서울특별시 강북구 수유동 39-10','서울특별시 강북구 노해로 65',313907,560356);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (27,'비타민 동물 메디컬센터','http://vitaminamc.com','건강,의료>동물병원','031-465-7582','경기도 안양시 만안구 안양동 847-10','경기도 안양시 만안구 안양로 374-1',304305,534182);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (28,'탑스 동물 메디컬센터','http://tamc.kr','건강,의료>동물병원','053-637-7501','대구광역시 달서구 상인동 72-1','대구광역시 달서구 월곡로 291 상인중석타운',448686,357881);
Insert into UM.HOSINFO (ID,TITLE,LINK,CATEGORY,TELEPHONE,ADDRESS,ROADADDRESS,MAPX,MAPY) values (29,'IU 24시 동물 메디컬센터',null,'건강,의료>동물병원','02-926-8275','경기도 의정부시 의정부동 94-6','경기도 의정부시 태평로 52',316606,570937);
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
