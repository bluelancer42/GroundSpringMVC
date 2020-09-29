DROP TABLE IF EXISTS subscripitions;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS authorities;


CREATE TABLE subscripitions (
  subscriptionId VARCHAR(10) NOT NULL,
  subscriptionName VARCHAR(100) NOT NULL,
  lastSentDate Date
);

create table users (
    username varchar(50) not null primary key,
    enabled boolean not null
);

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references users (username)
);

insert into users(username, enabled)values('ground',true);
insert into authorities(username,authority)values('ground','ROLE_ADMIN');
 
insert into users(username, enabled)values('subscripition',true);
insert into authorities(username,authority)values('ground','ROLE_USER');