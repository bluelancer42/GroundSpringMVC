DROP TABLE IF EXISTS subscripitions;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS authorities;


CREATE TABLE subscripitions (
  subscriptionId VARCHAR(10) NOT NULL primary key,
  subscriptionName VARCHAR(100) NOT NULL,
  lastSentDate Date
);

create table user (
    username varchar(50) not null primary key,
    enabled boolean not null
);

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references user (username)
);
