--문자열 함수

--대문자 UPPER, 소문자 LOWER
SELECT * FROM EMP
    WHERE JOB= UPPER('analyst');
 
SELECT LOWER(ENAME)AS ENAME , 
       LOWER(JOB) AS JOB 
            FROM EMP
                WHERE COMM IS NOT NULL;
                
--LENGTH 길이 바이트수랑은 상관없다 그냥 길이 뜻하는 것이다.
SELECT ENAME, LENGTH(ENAME) AS 이름길이
    FROM EMP;
    
--SUBSTRING 글자 잘라서 리턴 많이 사용한다!!!!!
SELECT SUBSTR('안녕하세요. 한가람IT전문학원 빅데이터반입니다.', 18,4) AS PHASE FROM DUAL;
                
--REPLACE 글자 대체
SELECT REPLACE('안녕하세요. 한가람IT전문학원 빅데이터반입니다.','안녕하세요','저리가세요') AS PHASE 
    FROM DUAL;

--CONCAT와 ||    
SELECT 'A' || 'B' AS 그냥합친거 ,
       CONCAT('A','B') AS CONCAT  FROM DUAL;
       
--TRIM 여백 지워주는 함수 단, 글자사이의 여백은 없앨수 없다.
SELECT TRIM('     안녕하세요.     ') as 인사 FROM DUAL;    
SELECT LTRIM('     안녕하세요.     ') AS 인사 FROM DUAL;    
SELECT RTRIM('     안녕하세요.     ') AS 인사 FROM DUAL;    


--반올림:ROUND 버림:TRUNC

--SYSDATE : 현재 날짜와 시간
SELECT SYSDATE FROM DUAL;

--형 변환함수
--TO_CHAR 문자로 
SELECT ENAME, HIREDATE, 
              TO_CHAR(HIREDATE,'YYYY-MM-DD') AS HIREDATE, 
              TO_CHAR(SAL)|| '$' FROM EMP;
--TO_NUMBER 숫자로
SELECT TO_NUMBER('이천사백') FROM DUAL; --숫자로 바꿀 때는 숫자같이 생긴 문자여야한다!

--TO_DATE 날짜로
SELECT TO_DATE('2022-01-12'), 
       TO_DATE('01/12/2022','MM/DD/YYYY') FROM DUAL;
       
--NVL NULL값이라면 다른값으로 변경시켜줘라
SELECT ENAME, JOB, SAL, SAL*12 , NVL(COMM,0) AS COMM
    FROM EMP;
    
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS 연봉
    FROM EMP
        ORDER BY SAL*12 + NVL(COMM,0) DESC;
        
--집계함수 SUM, COUNT, MIN, MAX, AVG

SELECT SAL, NVL(COMM,0) COMM FROM EMP;

SELECT SUM(SAL) TOTALSALARY, SUM(NVL(COMM,0)) TOTALCOMM FROM EMP;

SELECT JOB, SUM(SAL)
    FROM EMP
        GROUP BY JOB; --직업별 급여 합계
        
SELECT JOB, ROUND(AVG(SAL),0) 급여평균
    FROM EMP
        GROUP BY JOB; --직업별 급여 평균
        
SELECT JOB, MAX(SAL) 최대금액
    FROM EMP
        GROUP BY JOB
            ORDER BY MAX(SAL) DESC; --직업별 최대금액
            
SELECT MAX(SAL) 월급최대 , SUM(SAL) 직업군당급여금액, JOB
    FROM EMP
        GROUP BY JOB;
        
--HAVING : 집계함수(그룹함수)는 WHERE절에 쓸수 없다 그래서 HAVING 사용!!
SELECT MAX(SAL) 월급최대 , SUM(SAL) 직업군당급여금액, JOB
    FROM EMP
        GROUP BY JOB
            HAVING MAX(SAL) > 4000;
        
SELECT DEPTNO, JOB, AVG(SAL) 평균급여, 
                    MAX(SAL) 최대금액,
                    MIN(SAL) 최소금액, 
                    SUM(SAL) 합계급여, 
                    COUNT(*) 사람수
    FROM EMP
        GROUP BY DEPTNO, JOB
            HAVING AVG(SAL) >= 1000
                 ORDER BY DEPTNO, JOB;
                 
--ROLLUP 소합계 나타내주는 함수
SELECT DEPTNO, NVL(JOB,'합계'), ROUND(AVG(SAL),0) 평균급여, 
                    MAX(SAL) 최대금액,
                    SUM(SAL) 합계급여, 
                    COUNT(*) 그룹별직원수
    FROM EMP
        GROUP BY ROLLUP(DEPTNO,JOB);
           -- HAVING AVG(SAL) >= 1000
                
                 



        

        

        

    







        
            
        
            