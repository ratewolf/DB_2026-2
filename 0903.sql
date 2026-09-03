-- DDL(데이터 정의어)
-- 테이블 변경


CREATE TABLE companys (
    company_id CHAR(3) NOT NULL,
    company_name VARCHAR(20),
    company_address VARCHAR(100),
    company_phone_number VARCHAR(20),
    PRIMARY KEY(company_id)
);

-- 컬럼(속성) 추가
ALTER TABLE customers ADD customer_join_date DATE;

-- 컬럼(속성) 삭제
ALTER TABLE customers DROP COLUMN customer_join_date;

-- 제약조건 추가
ALTER TABLE customers ADD CONSTRAINT CHK_AGE CHECK(customer_age >= 20);

-- 제약조건 삭제
ALTER TABLE customers DROP CONSTRAINT CHK_AGE;

-- 테이블 삭제
drop table companys;

-- DML(데이터 조작어)
-- insert(테이블에 데이터를 삽입, CRUD에서 Create, Read, Update, Delete 중 Create를 맡음.)

-- 고객 테이블에 데이터행 삽입
-- 모든 컬럼에 값이 삽입
-- 1번 방법: 테이블명()안에 모든 컬럼리스트를 나열
INSERT INTO customers(customer_id, customer_name, customer_age, customer_grade, customer_job, customer_point)
    VALUES('banana', '김선우', 25, 'vip', '간호사', 2500);

-- 2번 방법: 테이블명()안에 모든 컬럼리스트 생략
INSERT INTO customers
    VALUES('carrot', '고명석', 28, 'gold', '교사', 4500);
    
-- 3번 방법: 컬럼의 순서를 변경
INSERT INTO customers(customer_id, customer_name, customer_job, customer_grade, customer_point, customer_age)
    VALUES('orange', '김용욱', '학생', 'silver', 0, 22);
    
-- 4번 방법: 컬럼 일부를 컬럼리스트에서 생략, NOT NULL 제약조건이 없는 컬럼만 생략 가능
INSERT INTO customers(customer_id, customer_name, customer_grade, customer_job)
    VALUES('melon', '성원용', 'gold', '회사원');
    
INSERT INTO customers(customer_id, customer_name, customer_age, customer_grade, customer_job, customer_point)
    VALUES('strawberry', '최유경', 30, 'vip', '공무원', 100);
    
SELECT * FROM customers;

DELETE FROM customers WHERE customer_id = 'banana';