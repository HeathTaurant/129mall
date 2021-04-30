use 129mall;

create table member(
mem_id int primary key AUTO_INCREMENT not null,
mem_userid varchar(50) unique  not null,
mem_email varchar(50) not null,
mem_password varchar(50) not null,
mem_username varchar(10) not null,
mem_phone varchar(15) not null,
mem_birthday datetime,
mem_sex int,
mem_postcode int not null,
mem_address1 varchar(50) not null,
mem_address2 varchar(50),
mem_register_datetime datetime);


create table item(
it_id int primary key AUTO_INCREMENT not null,
it_name varchar(50) unique not null,
it_color int,
it_size int,
it_category int,
it_summary text(50),
it_price int,
it_hit int,
it_datetime datetime,
it_sell_count int);

create table orderlist(
order_id int primary key AUTO_INCREMENT not null,
mem_userid varchar(50) not null,
payment_info varchar(20) not null,
order_total_money int
);


create table order_detail(
order_detail_id int primary key AUTO_INCREMENT not null,
order_id int,
order_detail_count int);


create table cart(
cart_id int primary key AUTO_INCREMENT not null,
mem_userid varchar(50),
it_id int,
it_color int,
it_size int,
cart_count int, --상품 수량
it_price int);

create table size(
size_id int primary key AUTO_INCREMENT not null,
size varchar(30));

create table color(
color_id int primary key AUTO_INCREMENT not null,
color varchar(30));

create table category(
category_id int primary key AUTO_INCREMENT not null,
category_name varchar(30));

create table img(
img_id  int primary key AUTO_INCREMENT not null,
it_id int,
img_thum varchar(100),
img_mini varchar(100),
img_detail varchar(100));

create table notice(
notice_id  int primary key AUTO_INCREMENT not null,
notice_groupid int,
notice_title varchar(50),
notice_hit int,
notice_date datetime,
notice_content varchar(10000),
notice_available int,
notice_admin_id varchar(50));

create table qna(
qna_id int primary key AUTO_INCREMENT not null,
qna_groupid int,
qna_title varchar(50),
qna_hit int,
qna_date datetime,
qna_content varchar(10000),
qna_available int,
qna_admin_id varchar(50));

create table q_board(
q_borard_id int,
q_board_title varchar(50),
q_board_hit int,
q_board_date datetime,
q_board_content varchar(10000),
q_board_available int,
mem_userid varchar(50));

create table review(
review_id int primary key AUTO_INCREMENT not null,
mem_userid varchar(50),
it_id int,
review_date datetime,
review_content varchar(50),
review_available int
);

create table Recently_products( -- 최근 본 상품
mem_userid varchar(50),
it_id int);



