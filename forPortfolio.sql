-- 시간대 설정 에러가 뜰 경우 --------------------------------

select @@system_time_zone; -- 내 시스템 시간 확인
select @@global.time_zone; -- 글로벌 시간대 확인
set @@global.time_zone = '+9:00'; -- 시간대 변경
select @@global.time_zone; -- 시간대 확인

-- user registration -- -- -- -- -- -- -- -- -- -- -- --

delete from user;
drop table user;

create table user(
	id mediumint not null auto_increment,
    first_name varchar(20) default null,
    last_name varchar(20) default null,
    username varchar(20) default null,
    password varchar(20) default null,
    address varchar(50) default null,
    email varchar(50) default null,
    phone varchar(15) default null,
    primary key (id),
    unique key (username)
    );
    
	insert into user values(1, 'admin', 'admin', 'admin', 'Tkfkdgo450.', '833 E River Pkwy', 'admin@otakuReviews.com', '01012345678');
    select * from user;
    alter table user auto_increment=1;

-- product table ---------------------------

delete from product;
drop table product;

create table product(
	product_id mediumint not null auto_increment,
    product_name varchar(30) not null,
    product_brand varchar(30) not null,
    product_price float not null,
    star int not null,
    product_review varchar(500) default null,
    username varchar(20) default null,
    -- product_img varchar(300) default null
    primary key (product_id),
    foreign key (username) references user (username)
    ON DELETE CASCADE
	ON UPDATE CASCADE
);

alter table product auto_increment=1;
select * from product;
