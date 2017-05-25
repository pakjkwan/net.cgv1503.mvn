
-- 회원 관리

CREATE TABLE Member(
	email varchar2(50) PRIMARY KEY,
	pass varchar2(50) NOT NULL,
	name varchar2(30) NOT NULL,
	phone varchar2(13),
);


