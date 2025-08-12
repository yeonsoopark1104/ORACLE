-- 오라클에서 조건 처리
-- 페이+보너스의 합이 300이상인 사람을 구하세요
SELECT NAME, PAY, BONUS, PAY+BONUS
FROM PROFESSOR;

-- NVL
SELECT NAME, BONUS, NVL(BONUS, 0)
FROM PROFESSOR;

-- 페이+보너스의 합이 300이상인 사람을 구하세요

SELECT NAME *
FROM PROFESSOR
WHERE PAY+NVL(BONUS, 0) >= 300;

--NVL2
SELECT BONUS, NVL2(BONUS, 1000, 0)
FROM PROFESSOR;

----------
-- DECODE - 자바의 조건문(IF)
-- DECODE(컬럼명, '조건값이 칼럼값이랑 동일할 때 출력할 값', '조건 만족 안했을 때 출력할 값')
SELECT ENAME, JOB, DECODE(JOB, 'MANAGER', '매니저!', '그외') FROM EMP;
-- 주민번호 7번째가 1, 3이면 '남자' , 2,4면 '여자'
SELECT NAME, DECODE(SUBSTR(JUMIN, 7, 1), 1, '남자', 3, '남자', '여자') AS 성별
FROM STU;

-- IF - ELSE IF - ELSE
SELECT
    ENAME,
    JOB,
    DECODE(JOB, 'MANAGER', '매니저!', 'SALESMAN', '세일즈맨!', '그외')
FROM EMP;


