--1��
SELECT * FROM MEMBERTBL;
DESC MEMBERTBL;

SELECT LOWER(EMAIL) EMAIL
    ,   MOBILE
    ,   NAMES
    ,   ADDR
    ,   LEVELS
        FROM membertbl
            ORDER BY NAMES DESC;
            
--2��
DESC BOOKSTBL;

SELECT NAMES as å����
        , AUTHOR as ���ڸ�
        , RELEASEDATE as ������
        , PRICE as ����
        FROM BOOKSTBL
            ;
            
--3��
SELECT D.NAMES AS �帣
    ,  B.NAMES AS å����
    ,  B.AUTHOR AS ����
    ,  TO_CHAR(b.releasedate,'YYYY-MM-DD') AS ������
    ,  b.isbn AS å�ڵ��ȣ
    ,  b.price || '��' AS ����
        FROM bookstbl B JOIN DIVTBL D
            ON b.division=d.division
                ORDER BY IDX DESC;


--4��
 INSERT INTO MEMBERTBL
 (IDX, NAMES, LEVELS, ADDR, MOBILE, EMAIL, USERID, PASSWORD, LASTLOGINDT, LOGINIPADDR)
 VALUES
 (SEQ_MEM.nextval,'ȫ�浿', 'A', '�λ�� ���� �ʷ���', '010-7989-0909', 'HGD09@NAVER.COM', 'HGD7989', '12345',NULL,NULL);
 
 --5��
 SELECT NVL(D.NAMES,'--�հ�--') AS �帣
    ,  SUM(b.price) AS �帣���հ�ݾ�
        FROM bookstbl B JOIN DIVTBL D
            ON b.division=d.division
                GROUP BY ROLLUP(D.NAMES);


