--������� ��ȸ�ϴ� SELECTION(���ǰ����� ���ڴ�)
SELECT * FROM EMP
    WHERE SAL=5000;
    
SELECT * FROM EMP
    WHERE JOB = 'CLERK';

--IS NULL ����, AND�� OR ����
SELECT *FROM EMP
    WHERE COMM=0 OR COMM IS NULL;
    
SELECT * FROM EMP
    WHERE COMM IS NULL AND JOB='ANALYST';

--NVL2(COL1,COL2,COL3) COL1���� NULL�� �ƴϸ� COL2 NULL�̸� COL3��   
SELECT EMPNO, ENAME, SAL, COMM,
    NVL2(COMM, COMM, 0) "NVL2"
        FROM EMP;

-- ���� : �ΰ� �̻��� ���̺��� �ϳ��� ���̺�ó�� ��ȸ�ϴ� ���
SELECT E.EMPNO, E.ENAME, E.JOB, E.HIREDATE , E.SAL, D.DEPTNO, D.DNAME--ALIAS�ϴ¹� �˱�
    FROM EMP E JOIN DEPT D
        ON E.DEPTNO = D.DEPTNO;
    
--DISTINCT ����
SELECT DISTINCT (JOB) FROM EMP;

--��Ī ALIAS, ORDER BY ����
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        ORDER BY SAL DESC; --ASC ��������, DESC��������
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE SAL*12 + NVL(COMM,0) >=10000; --ANNSAL�� ������. ������ ��������
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE SAL <> 1000; --�����ʴٴ� <>
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE NOT SAL = 1000; 
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE SAL IN(800,1600,5000);
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE SAL=800 OR SAL=1600 OR SAL=5000;
        
--BETWEEN A AND B
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
       -- WHERE SAL >=1600 AND SAL <=2975;
       WHERE SAL BETWEEN 1600 AND 2975;
       
--LIKE ã����� �ܾ��� �Ϻθ� �˰����� �� ���
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE ENAME LIKE 'J%'; --J�� �����ϴ� �͵� J%
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE ENAME LIKE '%ES'; --ES�� ������ �͵� %ES
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE ENAME LIKE '%E%'; --�߰��� E ���� �͵� %E%
        
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ANNSAL
    FROM EMP
        WHERE ENAME LIKE '__RD';--RD�� ������ �ϴµ� �� ���ڱ��̰� 4���� Ȱ�뵵 ����
        
        


        




        
        