desc emp;

--�ּ�, �Ʒ��� select ������ ����
SELECT * from emp;

--�÷��� �����ؼ� select
select ename, job, hiredate
    from emp;
--job�� ���� Ű�����ΰ͸� ����

SELECT DISTINCT DEPTNO 
    FROM EMP;
    
SELECT DISTINCT EMPNO, DEPTNO
    FROM EMP;
   
SELECT DISTINCT JOB, DEPTNO
    FROM EMP;
--�÷��� �������ΰ�쿡 DISTINCT�� ���� �Ѵ� ������ �־�� �ߺ������ȴ�.

--������ WHERE 
SELECT * FROM EMP
    WHERE EMPNO = 7499;
    
SELECT * FROM EMP
    WHERE ENAME= 'ȫ�浿';

--���� ����� ���� ���� ����ǥ �ʼ�!!

SELECT ENAME, SAL FROM EMP
    WHERE SAL BETWEEN 1500 AND 3000;
    
--�޿� SAL�� 1500 �̻��� ��� ��ȸ

SELECT *FROM EMP
    WHERE SAL >= 1500;
    
SELECT SYSDATE, TO_CHAR(SYSDATE,'RRRR') "RRRR",
                TO_CHAR(SYSDATE,'RR') "RR",
                TO_CHAR(SYSDATE,'YEAR') "YEAR"
                    FROM EMP;
