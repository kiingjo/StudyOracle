desc emp;

--주석, 아래의 select 구문을 실행
SELECT * from emp;

--컬럼을 구분해서 select
select ename, job, hiredate
    from emp;
--job은 원래 키워드인것만 알자

SELECT DISTINCT DEPTNO 
    FROM EMP;
    
SELECT DISTINCT EMPNO, DEPTNO
    FROM EMP;
   
SELECT DISTINCT JOB, DEPTNO
    FROM EMP;
--컬럼이 여러개인경우에 DISTINCT쓸 때는 둘다 같은게 있어야 중복삭제된다.

--조건절 WHERE 
SELECT * FROM EMP
    WHERE EMPNO = 7499;
    
SELECT * FROM EMP
    WHERE ENAME= '홍길동';

--문자 사용할 때는 작은 따옴표 필수!!

SELECT ENAME, SAL FROM EMP
    WHERE SAL BETWEEN 1500 AND 3000;
    
--급여 SAL가 1500 이상인 사람 조회

SELECT *FROM EMP
    WHERE SAL >= 1500;
    
SELECT SYSDATE, TO_CHAR(SYSDATE,'RRRR') "RRRR",
                TO_CHAR(SYSDATE,'RR') "RR",
                TO_CHAR(SYSDATE,'YEAR') "YEAR"
                    FROM EMP;
