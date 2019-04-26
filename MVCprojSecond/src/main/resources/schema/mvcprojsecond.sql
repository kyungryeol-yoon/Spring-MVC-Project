--------------------------------------------------------
--  File created - Friday-April-26-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MESSAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRING"."MESSAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRING"."REPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "SPRING"."SEQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 122 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CART
--------------------------------------------------------

   CREATE SEQUENCE  "SPRING"."SEQ_CART"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Table TBL_ADMIN
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_ADMIN" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(50 BYTE), 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"USER_EMAIL" VARCHAR2(100 BYTE), 
	"USER_REGDATE" DATE DEFAULT SYSDATE, 
	"USER_UPDATEDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_ATTACH
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_ATTACH" 
   (	"FULLNAME" VARCHAR2(150 BYTE), 
	"BNO" NUMBER, 
	"REGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_BOARD
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_BOARD" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"VIEWCNT" NUMBER DEFAULT 0, 
	"SHOW" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_CART
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_CART" 
   (	"CART_ID" NUMBER, 
	"USER_ID" VARCHAR2(50 BYTE), 
	"PRODUCT_ID" NUMBER, 
	"AMOUNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_MEMBER
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_MEMBER" 
   (	"USER_ID" VARCHAR2(10 BYTE), 
	"USER_PW" VARCHAR2(12 BYTE), 
	"USER_NAME" VARCHAR2(10 BYTE), 
	"USER_EMAIL" VARCHAR2(20 BYTE), 
	"USER_REGDATE" DATE DEFAULT sysdate, 
	"USER_UPDATEDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_MESSAGE
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_MESSAGE" 
   (	"MID" NUMBER, 
	"TARGETID" VARCHAR2(50 BYTE), 
	"SENDER" VARCHAR2(50 BYTE), 
	"MESSAGE" VARCHAR2(4000 BYTE), 
	"OPENDATE" DATE, 
	"SENDDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_PRODUCT
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_PRODUCT" 
   (	"PRODUCT_ID" NUMBER, 
	"PRODUCT_NAME" VARCHAR2(50 BYTE), 
	"PRODUCT_PRICE" NUMBER DEFAULT 0, 
	"PRODUCT_DESC" VARCHAR2(500 BYTE), 
	"PRODUCT_URL" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_REPLY
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_REPLY" 
   (	"RNO" NUMBER, 
	"BNO" NUMBER, 
	"REPLYTEXT" VARCHAR2(1000 BYTE), 
	"REPLYER" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"UPDATEDATE" DATE DEFAULT sysdate, 
	"SECRET_REPLY" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Table TBL_USER
--------------------------------------------------------

  CREATE TABLE "SPRING"."TBL_USER" 
   (	"USERID" VARCHAR2(50 BYTE), 
	"USERPW" VARCHAR2(50 BYTE), 
	"UNAME" VARCHAR2(100 BYTE), 
	"UPOINT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
REM INSERTING into SPRING.TBL_ADMIN
SET DEFINE OFF;
REM INSERTING into SPRING.TBL_ATTACH
SET DEFINE OFF;
REM INSERTING into SPRING.TBL_BOARD
SET DEFINE OFF;
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (120,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (119,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),1,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (118,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (117,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (116,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (115,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),1,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (114,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (113,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),1,'n');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (112,'Table112','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),15,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (111,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),2,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (110,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (109,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (108,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (107,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (106,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (105,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (104,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (103,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (102,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (101,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (100,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (99,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (98,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (97,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (96,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (95,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (94,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (93,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (92,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (91,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (90,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (89,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (88,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (87,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (86,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (85,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (84,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (83,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (82,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (81,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (80,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (79,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (78,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (77,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (76,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (75,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (74,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (73,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (72,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (71,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (70,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (69,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (68,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (67,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (66,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (65,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (64,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (63,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (62,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (61,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (60,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (59,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (58,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (57,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (56,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (55,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (54,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (53,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (52,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (51,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (50,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (49,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (48,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (47,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (46,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (45,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (44,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (43,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (42,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (41,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (40,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (39,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (38,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (37,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (36,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (35,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (34,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (33,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (32,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (31,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (30,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (29,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (28,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (27,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (26,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (25,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (24,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (23,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (22,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (21,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (20,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (19,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (18,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (17,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (16,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (15,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (14,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (13,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (12,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (11,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (10,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (9,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (8,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (7,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (6,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (5,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (4,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (3,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (2,'Table','There is so much to do','Chris',to_date('25-APR-19','DD-MON-RR'),0,'y');
Insert into SPRING.TBL_BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,VIEWCNT,SHOW) values (1,'What is AOP?','I don''t know AOP.','Chris',to_date('24-APR-19','DD-MON-RR'),14,'y');
REM INSERTING into SPRING.TBL_CART
SET DEFINE OFF;
REM INSERTING into SPRING.TBL_MEMBER
SET DEFINE OFF;
Insert into SPRING.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_REGDATE,USER_UPDATEDATE) values ('Lee','qlqjs','Lee','lee@gmail.com',to_date('23-APR-19','DD-MON-RR'),to_date('23-APR-19','DD-MON-RR'));
Insert into SPRING.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,USER_EMAIL,USER_REGDATE,USER_UPDATEDATE) values ('Chris','qlqjs','iamChris','chris@gmail.com',to_date('23-APR-19','DD-MON-RR'),to_date('23-APR-19','DD-MON-RR'));
REM INSERTING into SPRING.TBL_MESSAGE
SET DEFINE OFF;
REM INSERTING into SPRING.TBL_PRODUCT
SET DEFINE OFF;
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (8,'Converse',60000,'Converse Specials are being discounted','converse.jpg');
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (7,'Reebok',120000,'2017 New Fury wore','reebok.jpg');
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (6,'Lockup',99000,'Comfortable loopers palp.','Rockport.jpg');
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (5,'Timberland',150000,'Timberland Steady sellers! Special discounts','timberland.png');
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (4,'PUMA',98000,'PUMA 30 PRO special discount product.','Puma.jpg');
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (3,'New Balance',110000,'2016s New Balance Shoes','newbalance.jpg');
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (2,'Adidas',80000,'adidas steady seller! ',' adidas.jpg ');
Insert into SPRING.TBL_PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_DESC,PRODUCT_URL) values (1,'nike',100000,'nike 2017s new model.','nike.jpg');
REM INSERTING into SPRING.TBL_REPLY
SET DEFINE OFF;
Insert into SPRING.TBL_REPLY (RNO,BNO,REPLYTEXT,REPLYER,REGDATE,UPDATEDATE,SECRET_REPLY) values (1,1,'reply lee','Lee',to_date('24-APR-19','DD-MON-RR'),to_date('24-APR-19','DD-MON-RR'),'n');
REM INSERTING into SPRING.TBL_USER
SET DEFINE OFF;
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user08','1234','koo',0);
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user07','1234','cho',0);
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user06','1234','yang',0);
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user05','1234','yoon',0);
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user04','1234','choi',0);
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user03','1234','park',0);
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user02','1234','lee',0);
Insert into SPRING.TBL_USER (USERID,USERPW,UNAME,UPOINT) values ('user01','1234','kim',0);
--------------------------------------------------------
--  DDL for Index SYS_C0010027
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010027" ON "SPRING"."TBL_ADMIN" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010014
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010014" ON "SPRING"."TBL_ATTACH" ("FULLNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C009996
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C009996" ON "SPRING"."TBL_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010020
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010020" ON "SPRING"."TBL_CART" ("CART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010021
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010021" ON "SPRING"."TBL_MEMBER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010010
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010010" ON "SPRING"."TBL_MESSAGE" ("MID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010016
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010016" ON "SPRING"."TBL_PRODUCT" ("PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010000
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010000" ON "SPRING"."TBL_REPLY" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010005
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C0010005" ON "SPRING"."TBL_USER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING" ;
--------------------------------------------------------
--  Constraints for Table TBL_ADMIN
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_ADMIN" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING"  ENABLE;
  ALTER TABLE "SPRING"."TBL_ADMIN" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_ADMIN" MODIFY ("USER_PW" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_ADMIN" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_ATTACH
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_ATTACH" ADD PRIMARY KEY ("FULLNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING"  ENABLE;
  ALTER TABLE "SPRING"."TBL_ATTACH" MODIFY ("BNO" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_ATTACH" MODIFY ("FULLNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_BOARD" ADD PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING"  ENABLE;
  ALTER TABLE "SPRING"."TBL_BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_BOARD" MODIFY ("BNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_CART
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_CART" ADD PRIMARY KEY ("CART_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING"  ENABLE;
  ALTER TABLE "SPRING"."TBL_CART" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_CART" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_CART" MODIFY ("CART_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MEMBER
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_MEMBER" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_MESSAGE
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_MESSAGE" ADD PRIMARY KEY ("MID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "SPRING"  ENABLE;
  ALTER TABLE "SPRING"."TBL_MESSAGE" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_MESSAGE" MODIFY ("SENDER" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_MESSAGE" MODIFY ("TARGETID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_MESSAGE" MODIFY ("MID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_PRODUCT
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_PRODUCT" ADD PRIMARY KEY ("PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_REPLY" ADD PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING"  ENABLE;
  ALTER TABLE "SPRING"."TBL_REPLY" MODIFY ("REPLYTEXT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_REPLY" MODIFY ("BNO" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_REPLY" MODIFY ("RNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_USER
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_USER" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SPRING"  ENABLE;
  ALTER TABLE "SPRING"."TBL_USER" MODIFY ("UNAME" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_USER" MODIFY ("USERPW" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."TBL_USER" MODIFY ("USERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_ATTACH
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_ATTACH" ADD CONSTRAINT "FK_BOARD_ATTCH" FOREIGN KEY ("BNO")
	  REFERENCES "SPRING"."TBL_BOARD" ("BNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_CART
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_CART" ADD CONSTRAINT "CART_PRODUCT_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "SPRING"."TBL_PRODUCT" ("PRODUCT_ID") ENABLE;
  ALTER TABLE "SPRING"."TBL_CART" ADD CONSTRAINT "CART_USERID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "SPRING"."TBL_MEMBER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_MESSAGE
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_MESSAGE" ADD CONSTRAINT "FK_USERTARGET" FOREIGN KEY ("TARGETID")
	  REFERENCES "SPRING"."TBL_USER" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "SPRING"."TBL_REPLY" ADD CONSTRAINT "BNO" FOREIGN KEY ("BNO")
	  REFERENCES "SPRING"."TBL_BOARD" ("BNO") ENABLE;
