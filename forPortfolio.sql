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

