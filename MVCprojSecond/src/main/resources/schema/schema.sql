회원 테이블 생성
Create table tbl_member(
user_id varchar(10),
user_pw varchar(12),
user_name varchar(10),
user_email varchar(20),
user_regdate DATE DEFAULT sysdate,
user_updatedate DATE DEFAULT sysdate,
primary key(user_id)
);

게시판 테이블 생성
create table tbl_board(
bno number not null,          
title varchar2(200) not null,
content varchar2(4000),        
writer varchar2(50) not null,   
regdate date default sysdate, 
viewcnt number default 0,
show char(1),
primary key(bno)
);

댓글 테이블 생성
create table tbl_reply(
rno number not null, 
bno number not null,
replytext varchar2(1000) not null,
replyer varchar2(50),           
regdate date default sysdate, 
updatedate date default sysdate,
secret_reply char(1),
primary key(rno)
);

댓글 테이블 제약조건(외래키) 생성
alter table tbl_reply add constraint bno foreign key(bno) references tbl_board(bno);

시퀀스 생성 (게시판, 댓글)
CREATE SEQUENCE seq_board START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE reply_seq START WITH 1 INCREMENT BY 1;

게시판 첨부파일 테이블 생성
CREATE TABLE tbl_attach (
  fullname VARCHAR2(150) NOT NULL,
  bno NUMBER NOT NULL,
  regdate DATE DEFAULT SYSDATE,
  PRIMARY KEY(fullname)
);

유저 테이블 생성
CREATE TABLE tbl_user(
    userid VARCHAR2(50) NOT NULL,
    userpw VARCHAR2(50) NOT NULL,
    uname VARCHAR2(100) NOT NULL,
    upoint NUMBER DEFAULT 0,
    PRIMARY KEY(userid)
);

메세지 테이블 생성
CREATE TABLE tbl_message(
    mid NUMBER NOT NULL,
    targetid VARCHAR2(50) NOT NULL,
    sender VARCHAR2(50) NOT NULL,
    message VARCHAR2(4000) NOT NULL,
    opendate DATE,
    senddate DATE DEFAULT SYSDATE,
    PRIMARY KEY(mid)
);

메세지 테이블 시퀀스 생성
CREATE SEQUENCE message_seq START WITH 1 INCREMENT BY 1;

메세지 테이블 제약조건(외래키) 생성
ALTER TABLE tbl_message ADD CONSTRAINT fk_usertarget FOREIGN KEY (targetid) REFERENCES tbl_user(userid);

게시판 첨부파일 테이블 제약조건(외래키) 생성
ALTER TABLE tbl_attach ADD CONSTRAINT fk_board_attch FOREIGN KEY(bno) REFERENCES tbl_board(bno);

상품 테이블 생성, 상품 번호 기본키 설정
CREATE TABLE tbl_product (
product_id NUMBER, 
product_name VARCHAR2(50), 
product_price NUMBER DEFAULT 0,
product_desc VARCHAR2(500),   
product_url VARCHAR2(500),     
PRIMARY KEY(product_id)
);

상품 레코드 입력
INSERT INTO tbl_product VALUES (1,'나이키',100000,'나이키 2017년 신상제품입니다.','nike.jpg');
INSERT INTO tbl_product VALUES (2,'아디다스',80000,'아디다스의 스테디 셀러!','adidas.jpg');
INSERT INTO tbl_product VALUES (3,'뉴발란스',110000,'뉴발란스의 2016년 최고의 신발','newbalance.jpg');
INSERT INTO tbl_product VALUES (4,'푸마',98000,'푸마 30프로 특가할인 제품입니다.','puma.jpg');
INSERT INTO tbl_product VALUES (5,'팀버랜드',150000,'팀버랜드 스테디 셀러! 특별할인 중입니다.','timberland.png');
INSERT INTO tbl_product VALUES (6,'락포트',99000,'편안한 로퍼 락포트입니다.','rockport.jpg');
INSERT INTO tbl_product VALUES (7,'리복',120000,'2017 신상 퓨리 입고되었습니다.','reebok.jpg');
INSERT INTO tbl_product VALUES (8,'컨버스',60000,'컨버스 특가할인 중입니다.','converse.jpg');

상품 테이블 시퀀스 생성
CREATE SEQUENCE seq_product START WiTH 9 INCREMENT BY 1;

장바구니 테이블 생성
CREATE TABLE tbl_cart(
cart_id NUMBER NOT NULL PRIMARY KEY,
user_id VARCHAR2(50) NOT NULL,
product_id NUMBER NOT NULL,
amount NUMBER DEFAULT 0
);

장바구니 테이블 시퀀스 생성
CREATE SEQUENCE seq_cart START WiTH 10 INCREMENT BY 1;

장바구니 테이블 제약조건(외래키) 생성
ALTER TABLE tbl_cart ADD CONSTRAINT cart_userid_fk FOREIGN KEY(user_id) REFERENCES tbl_member(user_id);
ALTER TABLE tbl_cart ADD CONSTRAINT cart_product_fk FOREIGN KEY(product_id) REFERENCES tbl_product(product_id);

관리자 테이블 생성
CREATE TABLE tbl_admin (
    user_id VARCHAR(50) NOT NULL,
    user_pw VARCHAR(50) NOT NULL,
    user_name VARCHAR(50) NOT NULL,
    user_email VARCHAR(100),
    user_regdate DATE DEFAULT SYSDATE,
    user_updatedate DATE DEFAULT SYSDATE,
    PRIMARY KEY(user_id)
);