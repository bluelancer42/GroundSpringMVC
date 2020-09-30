INSERT INTO `authority`(`name`, `id`) VALUES ('ROLE_ADMIN', 1);
INSERT INTO `authority`(`name`, `id`) VALUES ('ROLE_USER', 2);
INSERT INTO `user_authority`(`authority_id`, `user_id`) VALUES (1, 1);
INSERT INTO `user_authority`(`authority_id`, `user_id`) VALUES (2, 2);
INSERT INTO `subscriptions` (`id`, `name`, `lastSentDate`) VALUES (1,'ironman','2015-11-15 22:14:54');
INSERT INTO `subscriptions` (`id`, `name`, `lastSentDate`) VALUES (2,'rabi','2015-10-15 22:14:54');