SELECT USER
FROM DUAL;
--==>> SCOTT

SELECT *
FROM TBL_MEMBERLIST;
--==>> ORA-00942: table or view does not exist


--○ 테이블 생성
CREATE TABLE TBL_MEMBERLIST
( ID	VARCHAR2(30)	NOT NULL
, PW	VARCHAR2(50)		NOT NULL
, NAME	VARCHAR2(50)		NOT NULL
, TEL	VARCHAR2(50)		NOT NULL
, EMAIL	VARCHAR2(100)
, CONSTRAINT MEMBERLIST_ID_PK PRIMARY KEY(ID)
);
--==>> Table TBL_MEMBERLIST이(가) 생성되었습니다.


--○ 데이터 입력(암호화 패키지 사용)
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL)
VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '관리자', '010-1234-1234', 'admin@test.com');
--> 한줄구성
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL) VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '관리자', '010-1234-1234', 'admin@test.com')
;
--==>> 1 행 이(가) 삽입되었습니다.


--○ 커밋
COMMIT;
--==>> 커밋 완료.


--○ 기본 조회 쿼리문 구성
SELECT ID, NAME, TEL, EMAIL
FROM TBL_MEMBERLIST
ORDER BY ID;
--> 한줄구성
SELECT ID, NAME, TEL, EMAIL FROM TBL_MEMBERLIST ORDER BY ID
;
--==>>
/*
admin	관리자	010-1234-1234	admin@test.com
*/


--○ 데이터 추가(암호화 패키지 사용)
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL)
VALUES('jmh', CRYPTPACK.ENCRYPT('java006$', 'jmh'), '정미화', '010-8743-7042', 'jmh@test.com');
--> 한줄구성
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL) VALUES('jmh', CRYPTPACK.ENCRYPT('java006$', 'jmh'), '정미화', '010-8743-7042', 'jmh@test.com')
;
--==>> 1 행 이(가) 삽입되었습니다.


--○ 커밋
COMMIT;
--==>> 커밋 완료.



