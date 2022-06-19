/* 회원 */
DROP TABLE MEMBER 
	CASCADE CONSTRAINTS;

/* 예매 */
DROP TABLE RESERVATION 
	CASCADE CONSTRAINTS;

/* 게시판 */
DROP TABLE BOARD 
	CASCADE CONSTRAINTS;

/* 코멘트 */
DROP TABLE COMMENTS 
	CASCADE CONSTRAINTS;

/* 첨부파일 */
DROP TABLE FILES 
	CASCADE CONSTRAINTS;

/* 관리자 */
DROP TABLE MANAGER 
	CASCADE CONSTRAINTS;

/* 게시판구분 */
DROP TABLE BOARDTYPE 
	CASCADE CONSTRAINTS;

/* 공항 */
DROP TABLE AIRPORT 
	CASCADE CONSTRAINTS;

/* 탑승객 */
DROP TABLE PASSENGER 
	CASCADE CONSTRAINTS;

/* 운행일정 */
DROP TABLE SCHEDULE 
	CASCADE CONSTRAINTS;

/* 결제/환불 */
DROP TABLE PAY 
	CASCADE CONSTRAINTS;

/* 쪽지 */
DROP TABLE NOTE 
	CASCADE CONSTRAINTS;

/* 쪽지관리 */
DROP TABLE NOTEMAN 
	CASCADE CONSTRAINTS;

/* 카카오 */
DROP TABLE KAKAO 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE MEMBER (
	MEM_NO NUMBER NOT NULL, /* 회원코드 */
	MEM_ID VARCHAR2(150) NOT NULL, /* 아이디 */
	MEM_PWD VARCHAR2(150) NOT NULL, /* 비밀번호 */
	MEM_NAME VARCHAR2(150) NOT NULL, /* 이름 */
	M_TEL1 VARCHAR2(10) NOT NULL, /* 핸드폰1 */
	M_TEL2 VARCHAR2(10) NOT NULL, /* 핸드폰2 */
	M_TEL3 VARCHAR2(10) NOT NULL, /* 핸드폰3 */
	M_EMAIL1 VARCHAR2(60) NOT NULL, /* 이메일1 */
	M_EMAIL2 VARCHAR2(60) NOT NULL, /* 이메일2 */
	M_BIRTHDAY VARCHAR(8) NOT NULL, /* 생년월일 */
	M_ZIPCODE VARCHAR2(150), /* 우편번호 */
	M_ADD1 VARCHAR2(150), /* 주소 */
	M_ADD2 VARCHAR2(150), /* 상세주소 */
	M_MILEAGE NUMBER DEFAULT 0, /* 보유마일리지 */
	M_KAKAO VARCHAR(6) /* 카카오연동 */
);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			MEM_NO
		);

/* 예매 */
CREATE TABLE RESERVATION (
	R_NO NUMBER NOT NULL, /* 예매번호 */
	R_DATE DATE NOT NULL, /* 예매일자 */
	R_PAY NUMBER NOT NULL, /* 예매금액 */
	R_ADULT NUMBER DEFAULT 0, /* 성인인원수 */
	R_CHILD NUMBER DEFAULT 0, /* 소아인원수 */
	R_CHECKPAY CHAR, /* 결제확인유무(Y/N) */
	MEM_NO NUMBER NOT NULL, /* 회원코드 */
	S_NAME VARCHAR2(50) /* 항공편명 */
);

ALTER TABLE RESERVATION
	ADD
		CONSTRAINT PK_RESERVATION
		PRIMARY KEY (
			R_NO
		);

/* 게시판 */
CREATE TABLE BOARD (
	B_NO NUMBER NOT NULL, /* 게시판번호 */
	B_ID VARCHAR2(50) NOT NULL, /* 아이디 */
	B_PWD VARCHAR2(50) NOT NULL, /* 비밀번호 */
	B_TITLE VARCHAR2(50) NOT NULL, /* 게시글제목 */
	B_CONTENT CLOB NOT NULL, /* 게시글내용 */
	B_REGDATE DATE DEFAULT SYSDATE, /* 등록일자 */
	B_COUNT NUMBER DEFAULT 0, /* 조회수 */
	B_LIKE NUMBER DEFAULT 0, /* 추천수 */
	BT_NO NUMBER /* 타입번호 */
);

ALTER TABLE BOARD
	ADD
		CONSTRAINT PK_BOARD
		PRIMARY KEY (
			B_NO
		);

/* 코멘트 */
CREATE TABLE COMMENTS (
	C_NO NUMBER NOT NULL, /* 코멘트 번호 */
	B_NO NUMBER NOT NULL, /* 게시판번호 */
	C_ID VARCHAR2(50) NOT NULL, /* 아이디 */
	C_CONTENT CLOB NOT NULL, /* 코멘트내용 */
	C_REGDATE DATE DEFAULT SYSDATE, /* 등록날짜 */
	C_GROUPNO NUMBER DEFAULT 0, /* 그룹번호 */
	C_STEP NUMBER DEFAULT 0, /* 글의 단계 */
	C_SORTNO NUMBER DEFAULT 0, /* 글의 정렬순서 */
	C_DELFLAG CHAR DEFAULT 'N'  /* 삭제 flag */
);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT PK_COMMENTS
		PRIMARY KEY (
			C_NO
		);

/* 첨부파일 */
CREATE TABLE FILES (
	F_NO NUMBER NOT NULL, /* 파일번호 */
	F_NAME VARCHAR2(50), /* 파일제목 */
	B_NO NUMBER NOT NULL, /* 게시판번호 */
	F_REGDATE DATE DEFAULT SYSDATE, /* 업로드날짜 */
	F_COUNT NUMBER DEFAULT 0, /* 다운수 */
	F_FILESIZE NUMBER DEFAULT 0, /* 파일사이즈 */
	F_ORIGINNAME VARCHAR2(50) /* 변경전파일명 */
);

ALTER TABLE FILES
	ADD
		CONSTRAINT PK_FILES
		PRIMARY KEY (
			F_NO
		);

/* 관리자 */
CREATE TABLE MANAGER (
	MAN_NO NUMBER NOT NULL, /* 관리자번호 */
	MAN_NAME VARCHAR2(50) NOT NULL, /* 관리자이름 */
	MAN_ID VARCHAR2(50) NOT NULL, /* 관리자아이디 */
	MAN_PWD VARCHAR2(50) NOT NULL /* 관리자비밀번호 */
);

ALTER TABLE MANAGER
	ADD
		CONSTRAINT PK_MANAGER
		PRIMARY KEY (
			MAN_NO
		);

/* 게시판구분 */
CREATE TABLE BOARDTYPE (
	BT_NO NUMBER NOT NULL, /* 타입번호 */
	BT_NAME VARCHAR2(50) /* 타입이름 */
);

ALTER TABLE BOARDTYPE
	ADD
		CONSTRAINT PK_BOARDTYPE
		PRIMARY KEY (
			BT_NO
		);

/* 공항 */
CREATE TABLE AIRPORT (
	A_NO VARCHAR2(50) NOT NULL, /* 공항번호 */
	A_NAME VARCHAR2(50) NOT NULL, /* 공항이름 */
	A_LOC VARCHAR2(50) NOT NULL /* 공항위치 */
);

ALTER TABLE AIRPORT
	ADD
		CONSTRAINT PK_AIRPORT
		PRIMARY KEY (
			A_NO
		);

/* 탑승객 */
CREATE TABLE PASSENGER (
	P_NO NUMBER NOT NULL, /* 승객번호 */
	R_NO NUMBER, /* 예매번호 */
	P_SEAT VARCHAR(4) NOT NULL, /* 좌석번호 */
	P_NAME VARCHAR2(50) NOT NULL, /* 승객이름 */
	P_BIRTHDAY VARCHAR(8) NOT NULL, /* 생년월일 */
	P_CON VARCHAR2(50) NOT NULL /* 국적 */
);

ALTER TABLE PASSENGER
	ADD
		CONSTRAINT PK_PASSENGER
		PRIMARY KEY (
			P_NO
		);

/* 운행일정 */
CREATE TABLE SCHEDULE (
	S_NAME VARCHAR2(50) NOT NULL, /* 항공편명 */
	A_NO VARCHAR2(50), /* 출발공항번호 */
	A_NO2 VARCHAR2(50), /* 도착공항번호 */
	S_STARTTIME DATE NOT NULL, /* 최초출발시간 */
	S_ARRTIME DATE NOT NULL, /* 최종도착시간 */
	S_PERSON NUMBER /* 수용가능인원 */
);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT PK_SCHEDULE
		PRIMARY KEY (
			S_NAME
		);

/* 결제/환불 */
CREATE TABLE PAY (
	P_NO NUMBER NOT NULL, /* 예매번호 */
	MEM_NO NUMBER, /* 회원코드 */
	P_PAY NUMBER, /* 결제금액 */
	P_CANCLE NUMBER DEFAULT 0, /* 취소금액 */
	P_PAYTIME DATE DEFAULT SYSDATE, /* 결제시간 */
	P_MILEAGE NUMBER DEFAULT 0 /* 사용마일리지 */
);

ALTER TABLE PAY
	ADD
		CONSTRAINT PK_PAY
		PRIMARY KEY (
			P_NO
		);

/* 쪽지 */
CREATE TABLE NOTE (
	N_NO NUMBER NOT NULL, /* 쪽지번호 */
	MAN_NO NUMBER, /* 관리자번호 */
	N_TITLE VARCHAR2(50), /* 쪽지제목 */
	N_CONTENT CLOB NOT NULL, /* 쪽지내용 */
	N_TIME DATE DEFAULT SYSDATE /* 보낸시간 */
);

ALTER TABLE NOTE
	ADD
		CONSTRAINT PK_NOTE
		PRIMARY KEY (
			N_NO
		);

/* 쪽지관리 */
CREATE TABLE NOTEMAN (
	NM_NO NUMBER NOT NULL, /* 쪽지관리번호 */
	MEM_NO NUMBER, /* 회원코드 */
	NM_CHECKREAD CHAR, /* 읽음유무 */
	NM_READDATE DATE, /* 읽은날짜 */
	N_NO NUMBER /* 쪽지번호 */
);

ALTER TABLE NOTEMAN
	ADD
		CONSTRAINT PK_NOTEMAN
		PRIMARY KEY (
			NM_NO
		);

/* 카카오 */
CREATE TABLE KAKAO (
	MEM_NO NUMBER NOT NULL, /* 회원코드 */
	K_NAME VARCHAR2(150) NOT NULL, /* 카카오이름 */
	K_EMAIL VARCHAR2(150) NOT NULL /* 카카오이메일 */
);

ALTER TABLE RESERVATION
	ADD
		CONSTRAINT FK_MEMBER_TO_RESERVATION
		FOREIGN KEY (
			MEM_NO
		)
		REFERENCES MEMBER (
			MEM_NO
		);

ALTER TABLE RESERVATION
	ADD
		CONSTRAINT FK_SCHEDULE_TO_RESERVATION
		FOREIGN KEY (
			S_NAME
		)
		REFERENCES SCHEDULE (
			S_NAME
		);

ALTER TABLE BOARD
	ADD
		CONSTRAINT FK_BOARDTYPE_TO_BOARD
		FOREIGN KEY (
			BT_NO
		)
		REFERENCES BOARDTYPE (
			BT_NO
		);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT FK_BOARD_TO_COMMENTS
		FOREIGN KEY (
			B_NO
		)
		REFERENCES BOARD (
			B_NO
		);

ALTER TABLE FILES
	ADD
		CONSTRAINT FK_BOARD_TO_FILES
		FOREIGN KEY (
			B_NO
		)
		REFERENCES BOARD (
			B_NO
		);

ALTER TABLE PASSENGER
	ADD
		CONSTRAINT FK_RESERVATION_TO_PASSENGER
		FOREIGN KEY (
			R_NO
		)
		REFERENCES RESERVATION (
			R_NO
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_AIRPORT_TO_SCHEDULE
		FOREIGN KEY (
			A_NO
		)
		REFERENCES AIRPORT (
			A_NO
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_AIRPORT_TO_SCHEDULE2
		FOREIGN KEY (
			A_NO2
		)
		REFERENCES AIRPORT (
			A_NO
		);

ALTER TABLE PAY
	ADD
		CONSTRAINT FK_MEMBER_TO_PAY
		FOREIGN KEY (
			MEM_NO
		)
		REFERENCES MEMBER (
			MEM_NO
		);

ALTER TABLE PAY
	ADD
		CONSTRAINT FK_RESERVATION_TO_PAY
		FOREIGN KEY (
			P_NO
		)
		REFERENCES RESERVATION (
			R_NO
		);

ALTER TABLE NOTE
	ADD
		CONSTRAINT FK_MANAGER_TO_NOTE
		FOREIGN KEY (
			MAN_NO
		)
		REFERENCES MANAGER (
			MAN_NO
		);

ALTER TABLE NOTEMAN
	ADD
		CONSTRAINT FK_NOTE_TO_NOTEMAN
		FOREIGN KEY (
			N_NO
		)
		REFERENCES NOTE (
			N_NO
		);

ALTER TABLE NOTEMAN
	ADD
		CONSTRAINT FK_MEMBER_TO_NOTEMAN
		FOREIGN KEY (
			MEM_NO
		)
		REFERENCES MEMBER (
			MEM_NO
		);

ALTER TABLE KAKAO
	ADD
		CONSTRAINT FK_MEMBER_TO_KAKAO
		FOREIGN KEY (
			MEM_NO
		)
		REFERENCES MEMBER (
			MEM_NO
		);
		
drop sequence seq_MEMBER;
--회원시퀀스

create sequence seq_MEMBER
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_RESERVATION;
--예약시퀀스
create sequence seq_RESERVATION
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_BOARD;
--게시판시퀀스
create sequence seq_BOARD
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_COMMENTS;
--코멘트시퀀스
create sequence seq_COMMENTS
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_FILES;
--파일첨부시퀀스
create sequence seq_FILES
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_MANAGER;
--관리자시퀀스
create sequence seq_MANAGER
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_AIRPORT;
--공항시퀀스
create sequence seq_AIRPORT
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_PASSENGER;
--탑승객시퀀스
create sequence seq_PASSENGER
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_SCHEDULE;
--운행일정시퀀스
create sequence seq_SCHEDULE
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_PAY;
--결제/환불시퀀스
create sequence seq_PAY
increment by 1
start with 1
nocycle
nocache;

drop sequence seq_NOTE;
--쪽지시퀀스
create sequence seq_NOTE
increment by 1
start with 1
nocycle
nocache;
						 
--data insert
insert into boardtype values(1, '공지사항');
insert into boardtype values(2, '유실물조회');
insert into boardtype values(3, '고객의소리');
commit;				 

						  
			  
			
	   
		

							  
				 
							   
			  
			
	   
		

						
					
						 
			  
			
	   
		

						  
					
						   
			  
			
	   
		

					   
					   
						
			  
			
	   
		

						  
					
						   
			  
			
	   
		

							
						  
							 
			  
			
	   
		

						  
				 
						   
			  
			
	   
		

							
					
							 
			  
			
	   
		

						   
					   
							
			  
			
	   
		

					  
						
					   
			  
			
	   
		

					   
				 
						
			  
			
	   
		