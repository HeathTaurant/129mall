order_detailuse 129mall;

create table member(
mem_id int(11) primary key AUTO_INCREMENT not null,
mem_userid varchar(50) unique  not null,
mem_email varchar(50) not null,
mem_password varchar(50) not null,
mem_username varchar(10) not null,
mem_phone varchar(15) not null,
mem_birthday char,
mem_sex tinyint,
mem_postcode int(6) not null,
mem_address1 varchar(50) not null,
mem_address2 varchar(50),
mem_register_datetime datetime,
mem_register_ip varchar(20),
mem_lastlogin_datetime datetime,
mem_lastlogin_ip varchar(20));


create table item(
it_id int(11) primary key AUTO_INCREMENT not null,
it_name varchar(50) not null,
it_color int(4),
it_size int(4),
it_category int(4),
it_summary text(50),
it_price int(10),
it_hit int(6),
it_datetime datetime,
it_updated_datetime datetime,
it_sell_count int(6));

create table orderlist(
or_id int(11) primary key AUTO_INCREMENT not null,
mem_userid varchar(50) not null,
payment_info varchar(20) not null,
order_detail_id int not null,
cor_total_money int(11));


create table order_detail(
order_detail_id int(11) primary key AUTO_INCREMENT not null,
cor_id bigint(11),
mem_userid varchar(50),
it_id int(11),
it_color int(4),
it_size int(4),
order_detail_count int(4),
de_price int(11),
price int(11));


create table cart(
cart_id int(11) primary key AUTO_INCREMENT not null,
mem_userid varchar(50),
it_id int(11),
it_color int(4),
it_size int(4),
cart_count int(4),
prive int(11),
de_prive int(11));

create table size(
size_id int(4) primary key AUTO_INCREMENT not null,
size varchar(30));

create table color(
color_id int(4) primary key AUTO_INCREMENT not null,
color varchar(30));

create table category(
category_id int(4) primary key AUTO_INCREMENT not null,
category_name varchar(30));

create table img(
img_id  int(4) primary key AUTO_INCREMENT not null,
it_id int(11),
img_thum varchar(100),
img_mini varchar(100),
img_detail varchar(100));

create table notice(
notice_id  int(4) primary key AUTO_INCREMENT not null,
notice_groupid int(4),
notice_title varchar(50),
notice_hit int(10),
notice_date datetime,
notice_content varchar(10000),
notice_available int(4),
notice_admin_id varchar(50));

create table qna(
qna_id int(4) primary key AUTO_INCREMENT not null,
qna_groupid int(4),
qna_title varchar(50),
qna_hit int(10),
qna_date datetime,
qna_content varchar(10000),
qna_available int(4),
qna_admin_id varchar(50));

create table q_board(
q_borard_id int(4),
q_board_title varchar(50),
q_board_hit int(5),
q_board_date datetime,
q_board_content varchar(10000),
q_board_available int(4),
mem_userid varchar(50));

create table reply(
reply_num int(4) primary key AUTO_INCREMENT not null,
reply_mem_id varchar(50),
reply_date datetime,
reply_content varchar(10000),
reply_available int(4),
mem_userid varchar(50),
reply_level int(4));

create table review(
review_id int(4) primary key AUTO_INCREMENT not null,
review_date datetime,
review_content varchar(50),
review_available int(4),
mem_userid varchar(50),
it_id int(4));

create table Recently_products(
mem_userid varchar(50),
it_id int(11));

-- 2021-04-27 3시 48분 하진영 테이블 수정완료--
use 129mal;

alter table cart change prive price int;
alter table cart change de_prive de_price int;
alter table order_detail change order_detail_id order_id int;
alter table order_detail drop column cor_id;
alter table orderlist change or_id order_id int;
alter table orderlist drop column order_detail_id;

-- 2021-04-29 20시 48분 하진영 테이블 수정완료--
alter table order_detail add column it_name int after it_id;
alter table Cart add column it_name int after it_id;
