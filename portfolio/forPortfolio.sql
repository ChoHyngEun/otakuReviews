-- 시간대 설정 에러가 뜰 경우 --------------------------------

select @@system_time_zone; -- 내 시스템 시간 확인
select @@global.time_zone; -- 글로벌 시간대 확인
set @@global.time_zone = '9:00'; -- 시간대 변경
select @@global.time_zone; -- 시간대 확인

-- user registration -- -- -- -- -- -- -- -- -- -- -- --

drop table user;

create table user(
	id mediumint not null auto_increment,
    first_name varchar(15) default null,
    last_name varchar(15) default null,
    username varchar(15) default null,
    password varchar(15) default null,
    address varchar(50) default null,
    email varchar(50) default null,
    phone varchar(12) default null,
    primary key (id)
    );
    
    select * from user;

-- product table ---------------------------

drop table product;

create table product(
	product_id mediumint not null auto_increment primary key,
    product_name varchar(30) not null,
    product_brand varchar(30) not null,
    product_price float not null,
    product_review varchar(500) not null
    -- product_img varchar(300) default null
);

select * from product;

-- review table (기존) ----------------------------

drop table review;

create table review(
	review_id mediumint not null auto_increment primary key,
    content varchar(500) not null,
    product_id mediumint not null,
    username varchar(15) not null
);

select * from review;

-- brand table -----------------------------

drop table brand;

create table brand(
	brand_id mediumint not null auto_increment,
    brand_name varchar(30) default null,
    primary key(brand_id)
);

select * from brand;