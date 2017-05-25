create table hobby(
hobby_idx number(4) primary key,
name varchar2(10),
title varchar2(10),
content varchar2(20),
gender varchar2(4),
hobby varchar2(10),
img_file_name varchar2(30)
);

alter table hobby modify(gender varchar2 (5));
alter table hobby add(gender varchar2 (5));

create sequence hobby_seq start with 1 increment by 1;