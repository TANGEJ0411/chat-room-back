create database ai_chat_db;
use ai_chat_db;
create table user (
	id INT auto_increment,
    account varchar(20) NOT NULL unique,
    password varchar(20) NOT NULL,
    created_time TIMESTAMP NOT NULL,
    primary key(id)
);
create table message (
	id INT auto_increment,
    from_who varchar(20) NOT NULL,
    to_who varchar(20) NOT NULL,
    message varchar(512) NOT NULL,
    created_time TIMESTAMP NOT NULL,
    ai_type varchar(20) NOT NULL,
    primary key(id)
);

INSERT INTO user (account, password, created_time) 
VALUES ('ej', 'ej', CONVERT_TZ(NOW(), 'UTC', 'Asia/Taipei'));

select * from user;
