--------------------------------------------------------
--  ������ ������ - ȭ����-7��-25-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARDCOMSEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "KIC"."BOARDCOMSEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOARDSEQ2
--------------------------------------------------------

   CREATE SEQUENCE  "KIC"."BOARDSEQ2"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIC"."PRODUCTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CARTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIC"."CARTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SURVEYSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KIC"."SURVEYSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ANSWER
--------------------------------------------------------

  CREATE TABLE "KIC"."ANSWER" 
   (	"SER" NUMBER(*,0), 
	"ID" VARCHAR2(20 BYTE), 
	"ANSGENDER" NUMBER(1,0), 
	"ANS1" VARCHAR2(30 BYTE), 
	"ANS2" VARCHAR2(60 BYTE), 
	"PRODNAME" VARCHAR2(50 BYTE), 
	"RDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOARD2
--------------------------------------------------------

  CREATE TABLE "KIC"."BOARD2" 
   (	"NUM" NUMBER(*,0), 
	"BOARDID" VARCHAR2(3 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"SUBJECT" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"IMAGE" VARCHAR2(300 BYTE), 
	"REGDATE" DATE, 
	"READCNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOARDCOMMENT2
--------------------------------------------------------

  CREATE TABLE "KIC"."BOARDCOMMENT2" 
   (	"SER" NUMBER(*,0), 
	"NUM" NUMBER(*,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "KIC"."CART" 
   (	"CARTID" NUMBER(*,0), 
	"ID" VARCHAR2(20 BYTE), 
	"PRODNUM" NUMBER(*,0), 
	"PRODNAME" VARCHAR2(200 BYTE), 
	"QUANTITY" NUMBER(*,0), 
	"PRICE" NUMBER(*,0), 
	"RESULT" NUMBER(*,0), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER2
--------------------------------------------------------

  CREATE TABLE "KIC"."MEMBER2" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PASS" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"GENDER" NUMBER, 
	"TEL" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE), 
	"ZIPCODE" VARCHAR2(10 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"RDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "KIC"."PRODUCT" 
   (	"PRODNUM" NUMBER(*,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"PRICE" NUMBER(*,0), 
	"STOCK" NUMBER(*,0), 
	"INFO" VARCHAR2(2000 BYTE), 
	"IMAGE" VARCHAR2(200 BYTE), 
	"PRODGENDER" NUMBER, 
	"PRODANS1" VARCHAR2(20 BYTE), 
	"PRODANS2" VARCHAR2(20 BYTE), 
	"REGDATE" DATE, 
	"DETAIL" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into KIC.ANSWER
SET DEFINE OFF;
Insert into KIC.ANSWER (SER,ID,ANSGENDER,ANS1,ANS2,PRODNAME,RDATE) values (1,'admin',1,'fruit','cherry','�׽�Ʈ',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.ANSWER (SER,ID,ANSGENDER,ANS1,ANS2,PRODNAME,RDATE) values (2,'admin',1,'wood','void','�̼� �� �� �� ��Ǿ',to_date('23/07/25','RR/MM/DD'));
REM INSERTING into KIC.BOARD2
SET DEFINE OFF;
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (4,'1','admin','�������� �׽�Ʈ3','���� ����',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (2,'1','admin','�������� �׽�Ʈ 1','�������� �Դϴ�.','Creeper-icon.png',to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (3,'1','admin','�������� �׽�Ʈ2','�������� �׽�Ʈ2','pngwing.com.png',to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (5,'1','admin','�������� �׽�Ʈ4','�������� �׽�Ʈ4','Creeper-icon.png',to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (6,'1','admin','�������� �׽�Ʈ5','�������� �׽�Ʈ5','pngwing.com.png',to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (7,'1','admin','�������� �׽�Ʈ6','�������� �׽�Ʈ6','����1.jpg',to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (8,'1','admin','�������� �׽�Ʈ7','��','����2.jpg',to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (9,'2','admin','�̺�Ʈ �׽�Ʈ1 (~23.07.24)','�̺�Ʈ ����','����4.jpg',to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (10,'2','admin','�̺�Ʈ �׽�Ʈ2','2222',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (11,'2','admin','�̺�Ʈ �׽�Ʈ3','333333',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (12,'2','admin','�̺�Ʈ �׽�Ʈ4','4444444444',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (13,'2','admin','�̺�Ʈ �׽�Ʈ5','5555555555',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (14,'2','admin','�̺�Ʈ �׽�Ʈ6','6666666666',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (15,'1','admin','�������� �׽�Ʈ8','123',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (16,'1','admin','�������� �׽�Ʈ9','9999',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (17,'1','admin','�������� �׽�Ʈ10','101010101010',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (18,'1','admin','�������� �׽�Ʈ11','111',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (19,'1','admin','�������� �׽�Ʈ12','12121212',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (20,'1','admin','�������� �׽�Ʈ1313131','1313131313',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (21,'1','admin','�������� �׽�Ʈ14','14141414',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (22,'1','admin','�������� �׽�Ʈ15','151515',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (23,'1','admin','�������� �׽�Ʈ16','16161616',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (24,'1','admin','�������� �׽�Ʈ17','1717171717',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (25,'1','admin','�������� �׽�Ʈ18','181818',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (26,'1','admin','�������� �׽�Ʈ19','191919',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (27,'1','admin','�������� �׽�Ʈ20','202020',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (28,'1','admin','�������� �׽�Ʈ21','21212121',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (29,'1','admin','�������� �׽�Ʈ22','2222222222222',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (30,'1','admin','�������� �׽�Ʈ23','23333333333333',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (31,'1','admin','�������� �׽�Ʈ24','242424',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (32,'1','admin','�������� �׽�Ʈ25','252525',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (33,'1','admin','�������� �׽�Ʈ27','272727',null,to_date('23/07/25','RR/MM/DD'),0);
Insert into KIC.BOARD2 (NUM,BOARDID,NAME,SUBJECT,CONTENT,IMAGE,REGDATE,READCNT) values (34,'1','admin','�������� �׽�Ʈ ������','44545',null,to_date('23/07/25','RR/MM/DD'),0);
REM INSERTING into KIC.BOARDCOMMENT2
SET DEFINE OFF;
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (6,8,'parkpark','���3',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (4,8,'kimkim','���',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (5,8,'parkpark','���2',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (7,34,'admin','admin ���',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (8,34,'kimkim','kim ���',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (9,34,'parkpark','park ���',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (10,34,'parkpark','park ���2222',to_date('23/07/25','RR/MM/DD'));
Insert into KIC.BOARDCOMMENT2 (SER,NUM,NAME,CONTENT,REGDATE) values (11,34,'youyou','you ���',to_date('23/07/25','RR/MM/DD'));
REM INSERTING into KIC.CART
SET DEFINE OFF;
REM INSERTING into KIC.MEMBER2
SET DEFINE OFF;
Insert into KIC.MEMBER2 (ID,PASS,NAME,GENDER,TEL,EMAIL,ZIPCODE,ADDRESS,RDATE) values ('admin','admin','������',1,'010','010',null,null,to_date('23/07/25','RR/MM/DD'));
Insert into KIC.MEMBER2 (ID,PASS,NAME,GENDER,TEL,EMAIL,ZIPCODE,ADDRESS,RDATE) values ('parkpark','park','������',1,'019','123123',null,null,to_date('23/07/25','RR/MM/DD'));
Insert into KIC.MEMBER2 (ID,PASS,NAME,GENDER,TEL,EMAIL,ZIPCODE,ADDRESS,RDATE) values ('kimkim','kim','�����',1,'010','123123',null,null,to_date('23/07/25','RR/MM/DD'));
Insert into KIC.MEMBER2 (ID,PASS,NAME,GENDER,TEL,EMAIL,ZIPCODE,ADDRESS,RDATE) values ('youyou','you','���缮',1,'010100','10101010',null,null,to_date('23/07/25','RR/MM/DD'));
REM INSERTING into KIC.PRODUCT
SET DEFINE OFF;
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (4,'������ �콺�丮����',125000,100,'��ŭ�� �ڸ� �⿡ ������ �ɰ� �������� ��ȭ�� �̷�� �������� �������� ������ ��Ʈ���� ��','����-��-��Ʈ����.jpg',2,'flower','citrus',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (3,'�����޽� ��Ż �����̾�',108000,100,'���ν� �޻� �ӿ��� �Ŀ���ϰ� ������ ����� ���޿���� ��� ���������� ���','����-����-���޿��.jpg',2,'wood','sandal',to_date('23/07/25','RR/MM/DD'),'�̼� �� ���� ��Ǿ.png');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (5,'�̼� �� �� �� ��Ǿ',127000,100,'���� �¿� ���� ��鳪�� ��, �� ���� ����ȭ�� ���� ȭ��','����-����-���.jpg',1,'wood','pyeonbaeg',to_date('23/07/25','RR/MM/DD'),'�̼� �� ���� ��Ǿ.png');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (6,'�������� �� ������',174000,100,'�ÿ��� ���͸� �׸� ��Ʈ�� ���������� ���ÿ� �Ŀ�����ϰ� ������ ���϶� ���� ���� �ε巴�� �Ǻθ� ���ο�','����-��-���϶�.jpg',1,'flower','lilac',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (7,'�� ���� �ν�Ʈ ü��',100100,100,'���̽��� ��ũ�ϸ鼭 �ε巯�� ����Ʈ, ������ ������ ������ ü����� ������ �Ƹ�� ������ ����� ���� �� �����鼭�� ������ ���� ���ϼ��� ���','����-����-ü��.jpg',1,'fruit','cherry',to_date('23/07/25','RR/MM/DD'),'���ϻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (8,'�ε��콺�丮���� �� �� �ѿз�',182800,100,'���� �ٶ��� ������ �þ����� ���Ϳ�����, ��Ʈ, ������� ���������� ������ ���� �ǵ�� ������','�󺥴�.jpg',2,'flower','lavender',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (9,'�� ���� �� �� ��Ǿ',215800,100,'����� �ٹ߿��� �Ǿ������ ����� ���� ����� ������ ����','���.jpg',1,'flower','rose',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (10,'�� ���� �� �� �ѿз�',135800,100,'���� ����� ���̽�Ʈ ���� ����� ���, �̱׷��� ����','���.jpg',2,'flower','rose',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (11,'�� �� �׶� �� �� �ѿз�',80000,100,'���̿÷��� ���϶��� ����� �⿬���� �︮��Ʈ������ ���ξȴ� ������','���϶�.jpg',2,'flower','lilac',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (12,'�ʹٳ� ����ġ �׷���',63000,100,'�����  �󺥴� ���� ���� �� ���� ��ũ�� ǥ���� ����Ŀ','�� �󺥴�.jpg',1,'flower','lavender',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (13,'���̹��� �� �� �ѿз�',42000,100,'�����ִ� ������ �ε巯�� ���-��Ʈ����ǳ �����','��Ʈ����.jpg',1,'flower','citrus',to_date('23/07/25','RR/MM/DD'),'�ɻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (14,'�� ���� �� �� ��Ǿ',225000,100,'���ะ �ո񿡼� ������ ü���� ���ݸ�, ���̾� �Ǻ�ó�� ��� ���̸����� ������ �����','ü��.jpg',2,'fruit','cherry',to_date('23/07/25','RR/MM/DD'),'���ϻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (15,'��Ÿ�� ��ν� �� ��� �ڷ�',85800,100,'�����ƿ� �ڸ��� ũ�� �߶� �ٻ�Ϳ� �Բ� ��Ű�� ���� ������','������.jpg',1,'fruit','peach',to_date('23/07/25','RR/MM/DD'),'���ϻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (16,'ĵ�� �÷η� �� �� �ѿз�',113600,100,'���� Ĭ���Ͽ� ����� �ö� ����ó��, �ε巴�� �����ϴ� ������','����.jpg',1,'fruit','strawberry',to_date('23/07/25','RR/MM/DD'),'���ϻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (17,'���̿��� �� �� ��Ǿ',79000,100,'����߶��� ����, ������� ����ó�� �����ϰ� ������ ����','����.jpg',2,'fruit','strawberry',to_date('23/07/25','RR/MM/DD'),'���ϻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (18,'����� �� �ݷδϾ� ����',157950,100,'����� ������� ���������� ��¦ ����� ���λ� ��Ʈ�� ������ ���','����.jpg',1,'fruit','lemon',to_date('23/07/25','RR/MM/DD'),'���ϻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (19,'����� ���ø� �� �� ��Ǿ',285000,100,'ûû�� ������, ��Ȧ�� ���� �Ʒ��� ������ �޿�� ������ Ǫ����','����.jpg',2,'fruit','lemon',to_date('23/07/25','RR/MM/DD'),'���ϻ�.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (20,'�� Ʈ���� ��� �� ���',185000,100,'�Ϸ��̴� �ٴҶ�� ���볢�� ������� ������� ���̷� õõ�� ������ ����Ʈ-��� ��','��鳪��.jpg',2,'wood','pyeonbaeg',to_date('23/07/25','RR/MM/DD'),'������.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (21,'���� ���� ���',131000,100,'���ν� �޻� �ӿ��� �Ŀ���ϰ� ������ ����� ���޿���� ��� ���������� ���','���޿��.jpg',1,'wood','sandal',to_date('23/07/25','RR/MM/DD'),'������.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (22,'�˹� �� ����',157950,100,'���ٶ��� ��鸮�� �ҳ��� �������� ������ �ְ� ������ ��ũ�� ���','�ҳ���.jpg',1,'wood','sonamu',to_date('23/07/25','RR/MM/DD'),'������.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (23,'���κ���',68600,100,'�Ϸ��̴� �ٴ� ���� �帮���� �Ķ� �ҳ����� ���ٸ��� �����, �޾����� ���','�ҳ���.jpg',2,'wood','sonamu',to_date('23/07/25','RR/MM/DD'),'������.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (24,'������Ǿ ���̵���',59000,100,'Ǫ���� �ٵ��� ����� ������ ������ ���̷� �Ҿ���� ������ ����� ����','���̵���.jpg',1,'wood','void',to_date('23/07/25','RR/MM/DD'),'������.jpg');
Insert into KIC.PRODUCT (PRODNUM,NAME,PRICE,STOCK,INFO,IMAGE,PRODGENDER,PRODANS1,PRODANS2,REGDATE,DETAIL) values (25,'���̵�Ʈ ���̵���',59000,100,'�ڽ����� ������ ���� ��޽�����鼭�� ����� �̹����� �����ϸ�, ���̽� ��Ʈ�� �ô�������� �����ϰ� ������ ������ �����մϴ�','�� ���̵���.jpg',2,'wood','void',to_date('23/07/25','RR/MM/DD'),'������.jpg');
