
-- 아이템 
-- 이 테이블을 생성하기 전에
-- Category 와 Image 테이블을 먼저 
-- 생성하고 commit 한 후
-- 생성해야함

CREATE TABLE Item(
	item_no number(12) PRIMARY KEY,
	item_name varchar2(50) NOT NULL,
	price number(12) DEFAULT 0,
	pd_date varchar2(20) DEFAULT '없음', -- 생산년도, 30년산 등등 계산에 사용
	capa number(4) DEFAULT 0, -- 용량 ml
	description varchar2(300) DEFAULT '없음',
	pd_org varchar2(20) NOT NULL, -- 제품 원산지
	sale_type varchar(20) DEFAULT '일반판매', -- 선물용, 일반판매용,세일판매용
	cate_name varchar2(100) NOT NULL,-- 카테고리 
	img_name varchar2(100),
	big_img varchar2(100));
	  
