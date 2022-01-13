--�⺻ �̳�����(ANSI/SQL)
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
            
--PL/SQL �̳����� JOIN->, ON->WHERE
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
            
--LEFT OUTER JOIN ���� ������ �������� ������ ���� �� ���� �����Ͱ� ������ NULL
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
        
--RIGHT OUTER JOIN ������ �������� ��ġ���� �ʴ� ���� NULL�� ����
SELECT empno 
    , ename
    , job 
    , TO_CHAR(hiredate,'YYYY-MM-DD') �Ի糯¥
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
        
--3�� ���̺� ����
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
            

        

         

            
        
        
        

    
