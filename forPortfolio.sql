-- user registration -- -- -- -- -- -- -- -- -- -- -- --

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
    
    drop table user;
    select * from user;
--     select * from portfolio.user;

-- -----------------------------------------

-- product table ---------------------------

create table product(
	product_id int(10) default 0 primary key,
    product_name varchar(15) default null,
    product_info varchar(300) default null,
    product_img varchar(300) default null

);

-- review table ----------------------------

create table review(
	review_id mediumint not null auto_increment primary key,
    review_date date,
    view_count int default 0 not null,
    likes int default 0 not null
);
-- brand table -----------------------------

create table brand(
	brand_id mediumint not null auto_increment,
    brand_name varchar(30) default null,
    primary key(brand_id)
);