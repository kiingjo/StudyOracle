--1번
SELECT * FROM MEMBERTBL;
DESC MEMBERTBL;

SELECT LOWER(EMAIL) EMAIL
    ,   MOBILE
    ,   NAMES
    ,   ADDR
    ,   LEVELS
        FROM membertbl
            ORDER BY NAMES DESC;
            
--2번
DESC BOOKSTBL;

SELECT NAMES as 책제목
        , AUTHOR as 저자명
        , RELEASEDATE as 출판일
        , PRICE as 가격
        FROM BOOKSTBL
            ;
            
--3번
SELECT D.NAMES AS 장르
    ,  B.NAMES AS 책제목
    ,  B.AUTHOR AS 저자
    ,  TO_CHAR(b.releasedate,'YYYY-MM-DD') AS 출판일
    ,  b.isbn AS 책코드번호
    ,  b.price || '원' AS 가격
        FROM bookstbl B JOIN DIVTBL D
            ON b.division=d.division
                ORDER BY IDX DESC;


--4번
 INSERT INTO MEMBERTBL
 (IDX, NAMES, LEVELS, ADDR, MOBILE, EMAIL, USERID, PASSWORD, LASTLOGINDT, LOGINIPADDR)
 VALUES
 (SEQ_MEM.nextval,'홍길동', 'A', '부산시 동구 초량동', '010-7989-0909', 'HGD09@NAVER.COM', 'HGD7989', '12345',NULL,NULL);
 
 --5번
 SELECT NVL(D.NAMES,'--합계--') AS 장르
    ,  SUM(b.price) AS 장르별합계금액
        FROM bookstbl B JOIN DIVTBL D
            ON b.division=d.division
                GROUP BY ROLLUP(D.NAMES);


