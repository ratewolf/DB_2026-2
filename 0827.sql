CREATE TABLE customers (
    customer_id VARCHAR(20) NOT NULL,
    customer_name VARCHAR(10) NOT NULL,
    customer_age INT,
    customer_grade VARCHAR(10) NOT NULL,
    customer_job VARCHAR(20),
    customer_point INT DEFAULT 0,
    PRIMARY KEY(customer_id)
);

CREATE TABLE products (
    product_id CHAR(3) NOT NULL,
    product_name VARCHAR(20),
    product_stock INT,
    product_unit_price INT,
    product_manufacturer VARCHAR(20),
    PRIMARY KEY(product_id),
    CHECK (product_stock >= 0 AND product_stock <= 10000)
);

CREATE TABLE orders (
    order_id CHAR(3) NOT NULL,
    order_customer VARCHAR(20),
    order_product CHAR(3),
    order_quantity INT,
    order_shipping_address VARCHAR(30),
    order_date DATE,
    PRIMARY KEY(order_id),
    FOREIGN KEY(order_customer) REFERENCES customers(customer_id),
    FOREIGN KEY(order_product) REFERENCES products(product_id)
);

INSERT ALL
    INTO customers VALUES ('apple', '정소화', 20, 'gold', '학생', 1000)
    INTO customers VALUES ('banana', '김선우', 25, 'vip', '간호사', 2500)
    INTO customers VALUES ('carrot', '고명석', 28, 'gold', '교사', 4500)
    INTO customers VALUES ('orange', '김용욱', 22, 'silver', '학생', 0)
    INTO customers VALUES ('melon', '성원용', 35, 'gold', '회사원', 5000)
    INTO customers VALUES ('peach', '오형준', NULL, 'silver', '의사', 300)
    INTO customers VALUES ('pear', '채광주', 31, 'silver', '회사원', 500)
SELECT * FROM dual;

INSERT ALL
    INTO products VALUES ('p01', '그냥만두', 5000, 4500, '대한식품')
    INTO products VALUES ('p02', '매운쫄면', 2500, 5000, '민국푸드')
    INTO products VALUES ('p03', '쿵떡파이', 3600, 2600, '한빛제과')
    INTO products VALUES ('p04', '맛난초콜릿', 1250, 2500, '한빛제과')
    INTO products VALUES ('p05', '얼큰라면', 2200, 1200, '대한식품')
    INTO products VALUES ('p06', '통통우동', 1000, 1550, '민국푸드')
    INTO products VALUES ('p07', '달콤비스킷', 1650, 1500, '한빛제과')
SELECT * FROM dual;

INSERT ALL
    INTO orders VALUES ('o01', 'apple', 'p03', 10, '서울시 마포구', TO_DATE('2022-01-01', 'YYYY-MM-DD'))
    INTO orders VALUES ('o02', 'melon', 'p01', 5, '인천시 계양구', TO_DATE('2022-01-10', 'YYYY-MM-DD'))
    INTO orders VALUES ('o03', 'banana', 'p06', 45, '경기도 부천시', TO_DATE('2022-01-11', 'YYYY-MM-DD'))
    INTO orders VALUES ('o04', 'carrot', 'p02', 8, '부산시 금정구', TO_DATE('2022-02-01', 'YYYY-MM-DD'))
    INTO orders VALUES ('o05', 'melon', 'p06', 36, '경기도 용인시', TO_DATE('2022-02-20', 'YYYY-MM-DD'))
    INTO orders VALUES ('o06', 'banana', 'p01', 19, '충청북도 보은군', TO_DATE('2022-03-02', 'YYYY-MM-DD'))
    INTO orders VALUES ('o07', 'apple', 'p03', 22, '서울시 영등포구', TO_DATE('2022-03-15', 'YYYY-MM-DD'))
    INTO orders VALUES ('o08', 'pear', 'p02', 50, '강원도 춘천시', TO_DATE('2022-04-10', 'YYYY-MM-DD'))
    INTO orders VALUES ('o09', 'banana', 'p04', 15, '전라남도 목포시', TO_DATE('2022-04-11', 'YYYY-MM-DD'))
    INTO orders VALUES ('o10', 'carrot', 'p03', 20, '경기도 안양시', TO_DATE('2022-05-22', 'YYYY-MM-DD'))
SELECT * FROM dual;