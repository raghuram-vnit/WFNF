use wfnfdb;

delete from user_master;
alter table user_master auto_increment=1;

delete from role_master;
alter table role_master auto_increment=1;

delete from status_master;
alter table status_master auto_increment=1;


insert into status_master(status_id, status_name) value(1, 'Active');
insert into status_master(status_id, status_name) value(2, 'Inactive');

insert into role_master(role_id, role_name) value(1, 'Admin');
insert into role_master(role_id, role_name) value(2, 'Farmer');
insert into role_master(role_id, role_name) value(3, 'Volunteer');

insert into user_master(user_fname, user_lname, user_email, user_status) value('Wfnf', 'Admin', 'admin@wfnf.com', 'Active');

insert into user_role_map(user_id, role_name) value(1, 'Admin');
