SELECT USER
FROM DUAL;
--==>> SCOTT

SELECT *
FROM TBL_MEMBERLIST;
--==>> ORA-00942: table or view does not exist


--�� ���̺� ����
CREATE TABLE TBL_MEMBERLIST
( ID	VARCHAR2(30)	NOT NULL
, PW	VARCHAR2(50)		NOT NULL
, NAME	VARCHAR2(50)		NOT NULL
, TEL	VARCHAR2(50)		NOT NULL
, EMAIL	VARCHAR2(100)
, CONSTRAINT MEMBERLIST_ID_PK PRIMARY KEY(ID)
);
--==>> Table TBL_MEMBERLIST��(��) �����Ǿ����ϴ�.


--�� ������ �Է�(��ȣȭ ��Ű�� ���)
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL)
VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '������', '010-1234-1234', 'admin@test.com');
--> ���ٱ���
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL) VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '������', '010-1234-1234', 'admin@test.com')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �⺻ ��ȸ ������ ����
SELECT ID, NAME, TEL, EMAIL
FROM TBL_MEMBERLIST
ORDER BY ID;
--> ���ٱ���
SELECT ID, NAME, TEL, EMAIL FROM TBL_MEMBERLIST ORDER BY ID
;
--==>>
/*
admin	������	010-1234-1234	admin@test.com
*/


--�� ������ �߰�(��ȣȭ ��Ű�� ���)
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL)
VALUES('jmh', CRYPTPACK.ENCRYPT('java006$', 'jmh'), '����ȭ', '010-8743-7042', 'jmh@test.com');
--> ���ٱ���
INSERT INTO TBL_MEMBERlIST(ID, PW, NAME, TEL, EMAIL) VALUES('jmh', CRYPTPACK.ENCRYPT('java006$', 'jmh'), '����ȭ', '010-8743-7042', 'jmh@test.com')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.



