drop database if exists wfnfdb;
create database wfnfdb CHARACTER SET utf8 COLLATE utf8_general_ci;

grant all on wfnfdb.* to 'wfnfadmin'@'localhost' identified by 'wfnf@123#';

use wfnfdb;

create table if not exists `user_sessions` (
       session_id varchar(40) DEFAULT '0' NOT NULL,
       ip_address varchar(45) DEFAULT '0' NOT NULL,
       user_agent varchar(120) NOT NULL,
       last_activity int(10) unsigned DEFAULT 0 NOT NULL,
       user_data text NOT NULL,
       PRIMARY KEY (session_id),
       KEY `last_activity_idx` (`last_activity`)
)ENGINE=INNODB CHARSET=utf8;

create table if not exists status_master(
       status_id int auto_increment primary key,
       status_name varchar(50) not null unique,
       status_created  timestamp default '0000-00-00 00:00:00',
       status_updated timestamp default current_timestamp on update current_timestamp,
       unique key(status_name)
)ENGINE=INNODB CHARSET=utf8;

create table if not exists role_master(
       role_id int auto_increment primary key,
       role_name varchar(50) not null unique,
       role_created  timestamp default '0000-00-00 00:00:00',
       role_updated timestamp default current_timestamp on update current_timestamp,
       unique key(role_name)
)ENGINE=INNODB CHARSET=utf8;

create table if not exists user_master(
       user_id int unsigned not null auto_increment primary key,
       registration_no varchar(20) not null unique,
       user_fname varchar(100) not null,
       user_mname varchar(100),
       user_lname varchar(100) not null,
       user_password varchar(100) not null  default 'e99a18c428cb38d5f260853678922e03',
       user_address varchar(500) not null default "Address",
       user_city varchar(100) not null default "City",
       user_state varchar(100) not null default "State",
       user_country varchar(100) not null default "India",
       user_pin varchar(10) not null default "111111",
       user_photo varchar(100) not null default "NULL",
       user_phone varchar(12) not null default "9999999999",
       user_email varchar(100) not null,
       user_status int not null default 4,
       user_created timestamp DEFAULT '0000-00-00 00:00:00',
       user_updated timestamp DEFAULT current_timestamp on update current_timestamp,
       unique key(user_email)
) ENGINE=INNODB CHARSET=utf8;

create table if not exists user_role_map(
       user_id int unsigned not null,
       role_name varchar(25) not null default "Volunteer",
       foreign key(user_id) references user_master(user_id) on delete cascade
) ENGINE=INNODB CHARSET=utf8;

/* Table Creted for Send Email Function */
create table if not exists send_email(
  id int auto_increment primary key,
  email_id varchar(50) not null,
  email_subject varchar(50) not null,
  email_body text not null,
  invalid int(10) not null default '0'
)ENGINE=INNODB CHARSET=utf8;

