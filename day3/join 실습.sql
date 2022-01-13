--기본 이너조인(ANSI/SQL)
SELECT empno 
    , ename
    , job 
    , hiredate
    , SAL
    , E.deptno
    , d.deptno 
    , dname
    FROM EMP E JOIN DEPT D
        ON E.DEPTNO=D.DEPTNO
            WHERE E.JOB='SALESMAN';
            
--PL/SQL 이너조인 JOIN->, ON->WHERE
SELECT empno 
    , ename
    , job 
    , hiredate
    , SAL
    , E.deptno
    , d.deptno 
    , dname
    FROM EMP E , DEPT D
        WHERE 1=1 --TIP
            AND E.DEPTNO=D.DEPTNO
            AND E.JOB='SALESMAN';
            
--LEFT OUTER JOIN 왼쪽 데이터 기준으로 오른쪽 했을 때 없는 데이터가 나오면 NULL
SELECT empno 
    , ename
    , job 
    , hiredate
    , SAL
    , E.deptno
    , d.deptno 
    , dname
    FROM EMP E LEFT OUTER JOIN DEPT D
        ON E.DEPTNO=D.DEPTNO;
        
--RIGHT OUTER JOIN 오른쪽 기준으로 일치하지 않는 값은 NULL로 낸다
SELECT empno 
    , ename
    , job 
    , TO_CHAR(hiredate,'YYYY-MM-DD') 입사날짜
    , SAL
    , E.deptno
    , d.deptno 
    , dname
    FROM EMP E RIGHT OUTER JOIN DEPT D
        ON E.DEPTNO=D.DEPTNO;
--PL/SQL LEFT OUTER JOIN        
SELECT empno 
    , ename
    , job 
    , hiredate
    , SAL
    , E.deptno
    , d.deptno 
    , dname
    FROM EMP E ,DEPT D
        WHERE E.DEPTNO=D.DEPTNO(+);
        
--PL/SQL RIGHT OUTER JOIN        
SELECT empno 
    , ename
    , job 
    , hiredate
    , SAL
    , E.deptno
    , d.deptno 
    , dname
    FROM EMP E ,DEPT D
        WHERE E.DEPTNO(+)=D.DEPTNO;
        
--3개 테이블 조인
SELECT empno 
    , E.ename
    , E.job 
    , TO_CHAR(hiredate,'YYYY/MM/DD')
    , E.SAL
    , E.deptno
    , d.deptno 
    , dname
    FROM EMP E, DEPT D, BONUS B
        WHERE E.DEPTNO=D.DEPTNO
            AND E.ENAME=B.ENAME;
            

        

         

            
        
        
        

    
