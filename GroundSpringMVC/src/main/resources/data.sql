insert into user(username, enabled)values('ground',true);
insert into authorities(username,authority)values('ground','ROLE_ADMIN');
 
insert into user(username, enabled)values('subscripition',true);
insert into authorities(username,authority)values('ground','ROLE_USER');

insert into subscription(subscriptionId, subscriptionName, lastSentDate)values(1,'SqlTest1','2013-06-11')
insert into subscription(subscriptionId, subscriptionName, lastSentDate)values(1,'SqlTest2','2018-06-11')
insert into subscription(subscriptionId, subscriptionName, lastSentDate)values(1,'SqlTest3','2019-06-11')
insert into subscription(subscriptionId, subscriptionName, lastSentDate)values(1,'SqlTest4','2020-06-11')