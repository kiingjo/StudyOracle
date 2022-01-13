--데이터 입력(INSERT)
INSERT INTO BONUS(ENAME 
                 , JOB
                 , SAL
                 , COMM)
                     VALUES('JACK'
                         , 'SALEMAN'
                         , '4000'
                         , NULL); 
COMMIT ; --완전저장
ROLLBACK ; --취소

--DML
--INSERT 테이블에 컬럼 삽입하는 법 SEQ_TEST1.NEXTVAL 
INSERT INTO TEST1
            (IDX, TITLE, DESCS, REGDATE)
VALUES (1,'내용증명','내용내용내용',TO_DATE('2021-12-31','YYYY-MM-DD'));

INSERT INTO TEST1
            (IDX, TITLE, DESCS, REGDATE)
VALUES (SEQ_TEST1.CURRVAL,'내용증명2','내용내용내용2',SYSDATE);

INSERT INTO TEST1
            (IDX, TITLE, DESCS, REGDATE)
VALUES (SEQ_TEST1.NEXTVAL,'내용증명4','내용내용내용4',SYSDATE);

--시퀀스 CURRVAL, NEXTVAL 시퀀스 만드는 거는 그냥 마우스로 만들면 된다!
SELECT SEQ_TEST1.CURRVAL FROM DUAL; 

SELECT SEQ_STR.NEXTVAL FROM DUAL;

--UPDATE **UPDATE에는 WHERE절을 무조건 포함해야한다!!!
UPDATE TEST1
    SET TITLE = '이런?'
    , DESCS = '실수입니다.'
        WHERE IDX=5;
        
COMMIT;

--DELETE **DELETE에는 WHERE절을 무조건 포함해야한다!!!
DELETE FROM TEST1
    WHERE IDX=5;
    
--서브쿼리 **SELECT에서 사용하는 것 ROWNUM-> 행 숫자 나타내준다.
SELECT ROWNUM, SU.ENAME, SU.JOB ,SU.SAL, SU.COMM 
    FROM 
    (SELECT ENAME, JOB, SAL, COMM FROM EMP
    ORDER BY SAL DESC) SU
        WHERE ROWNUM=1;

--서브쿼리와 조인 더 공부해야한다!!
--DML은 커밋하기 전에 확인을 해야한다. WHERE절 무조건 들어가야한다!



