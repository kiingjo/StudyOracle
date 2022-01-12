--���ڿ� �Լ�

--�빮�� UPPER, �ҹ��� LOWER
SELECT * FROM EMP
    WHERE JOB= UPPER('analyst');
 
SELECT LOWER(ENAME)AS ENAME , 
       LOWER(JOB) AS JOB 
            FROM EMP
                WHERE COMM IS NOT NULL;
                
--LENGTH ���� ����Ʈ������ ������� �׳� ���� ���ϴ� ���̴�.
SELECT ENAME, LENGTH(ENAME) AS �̸�����
    FROM EMP;
    
--SUBSTRING ���� �߶� ���� ���� ����Ѵ�!!!!!
SELECT SUBSTR('�ȳ��ϼ���. �Ѱ���IT�����п� �����͹��Դϴ�.', 18,4) AS PHASE FROM DUAL;
                
--REPLACE ���� ��ü
SELECT REPLACE('�ȳ��ϼ���. �Ѱ���IT�����п� �����͹��Դϴ�.','�ȳ��ϼ���','����������') AS PHASE 
    FROM DUAL;

--CONCAT�� ||    
SELECT 'A' || 'B' AS �׳���ģ�� ,
       CONCAT('A','B') AS CONCAT  FROM DUAL;
       
--TRIM ���� �����ִ� �Լ� ��, ���ڻ����� ������ ���ټ� ����.
SELECT TRIM('     �ȳ��ϼ���.     ') as �λ� FROM DUAL;    
SELECT LTRIM('     �ȳ��ϼ���.     ') AS �λ� FROM DUAL;    
SELECT RTRIM('     �ȳ��ϼ���.     ') AS �λ� FROM DUAL;    


--�ݿø�:ROUND ����:TRUNC

--SYSDATE : ���� ��¥�� �ð�
SELECT SYSDATE FROM DUAL;

--�� ��ȯ�Լ�
--TO_CHAR ���ڷ� 
SELECT ENAME, HIREDATE, 
              TO_CHAR(HIREDATE,'YYYY-MM-DD') AS HIREDATE, 
              TO_CHAR(SAL)|| '$' FROM EMP;
--TO_NUMBER ���ڷ�
SELECT TO_NUMBER('��õ���') FROM DUAL; --���ڷ� �ٲ� ���� ���ڰ��� ���� ���ڿ����Ѵ�!

--TO_DATE ��¥��
SELECT TO_DATE('2022-01-12'), 
       TO_DATE('01/12/2022','MM/DD/YYYY') FROM DUAL;
       
--NVL NULL���̶�� �ٸ������� ����������
SELECT ENAME, JOB, SAL, SAL*12 , NVL(COMM,0) AS COMM
    FROM EMP;
    
SELECT ENAME, JOB, SAL, SAL*12 + NVL(COMM,0) AS ����
    FROM EMP
        ORDER BY SAL*12 + NVL(COMM,0) DESC;
        
--�����Լ� SUM, COUNT, MIN, MAX, AVG

SELECT SAL, NVL(COMM,0) COMM FROM EMP;

SELECT SUM(SAL) TOTALSALARY, SUM(NVL(COMM,0)) TOTALCOMM FROM EMP;

SELECT JOB, SUM(SAL)
    FROM EMP
        GROUP BY JOB; --������ �޿� �հ�
        
SELECT JOB, ROUND(AVG(SAL),0) �޿����
    FROM EMP
        GROUP BY JOB; --������ �޿� ���
        
SELECT JOB, MAX(SAL) �ִ�ݾ�
    FROM EMP
        GROUP BY JOB
            ORDER BY MAX(SAL) DESC; --������ �ִ�ݾ�
            
SELECT MAX(SAL) �����ִ� , SUM(SAL) ��������޿��ݾ�, JOB
    FROM EMP
        GROUP BY JOB;
        
--HAVING : �����Լ�(�׷��Լ�)�� WHERE���� ���� ���� �׷��� HAVING ���!!
SELECT MAX(SAL) �����ִ� , SUM(SAL) ��������޿��ݾ�, JOB
    FROM EMP
        GROUP BY JOB
            HAVING MAX(SAL) > 4000;
        
SELECT DEPTNO, JOB, AVG(SAL) ��ձ޿�, 
                    MAX(SAL) �ִ�ݾ�,
                    MIN(SAL) �ּұݾ�, 
                    SUM(SAL) �հ�޿�, 
                    COUNT(*) �����
    FROM EMP
        GROUP BY DEPTNO, JOB
            HAVING AVG(SAL) >= 1000
                 ORDER BY DEPTNO, JOB;
                 
--ROLLUP ���հ� ��Ÿ���ִ� �Լ�
SELECT DEPTNO, NVL(JOB,'�հ�'), ROUND(AVG(SAL),0) ��ձ޿�, 
                    MAX(SAL) �ִ�ݾ�,
                    SUM(SAL) �հ�޿�, 
                    COUNT(*) �׷캰������
    FROM EMP
        GROUP BY ROLLUP(DEPTNO,JOB);
           -- HAVING AVG(SAL) >= 1000
                
                 



        

        

        

    







        
            
        
            