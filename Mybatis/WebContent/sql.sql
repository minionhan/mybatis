CREATE TABLE `comment` (
   `comment_no` BIGINT(19) NOT NULL AUTO_INCREMENT,
   `user_id` VARCHAR(32) NOT NULL,
   `comment_content` MEDIUMTEXT NOT NULL,
   `reg_date` DATETIME NOT NULL,
   PRIMARY KEY (`comment_no`),
   UNIQUE INDEX `XPKnwc_comment` (`comment_no`)
);
insert  into comment(`comment_no`,`user_id`,`comment_content`,`reg_date`) values (1,'user1','사용자1','2012-04-13 15:04:29');
insert  into comment(`comment_no`,`user_id`,`comment_content`,`reg_date`) values (2,'user1','사용자2','2012-04-13 15:04:32');
insert  into comment(`comment_no`,`user_id`,`comment_content`,`reg_date`) values (3,'user2','사용자3','2012-04-13 15:04:35');
insert  into comment(`comment_no`,`user_id`,`comment_content`,`reg_date`) values (4,'user2','사용자4','2012-04-13 15:04:37');
insert  into comment(`comment_no`,`user_id`,`comment_content`,`reg_date`) values (5,'user3','사용자5','2012-04-13 15:04:41');
insert  into comment(`comment_no`,`user_id`,`comment_content`,`reg_date`) values (6,'user3','사용자6','2012-04-13 15:04:43');

CREATE TABLE `reply` (
   `reply_no` BIGINT(19) NOT NULL AUTO_INCREMENT,
   `comment_no` BIGINT(19) NOT NULL,
   `user_id` VARCHAR(32) NOT NULL,
   `reply_content` VARCHAR(300) NOT NULL,
   `reg_date` DATETIME NOT NULL,
   PRIMARY KEY (`reply_no`)
);
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (1,1,'user1','사용자1_1','2012-04-13 15:05:49');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (2,1,'user1','사용자1_2','2012-04-13 15:05:52');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (3,1,'user1','사용자1_3','2012-04-13 15:05:54');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (4,1,'user1','사용자1_4','2012-04-13 15:05:55');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (5,2,'user1','사용자1_5','2012-04-13 15:06:03');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (6,3,'user2','사용자2_1','2012-04-13 15:06:10');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (7,3,'user2','사용자2_2','2012-04-13 15:06:12');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (8,3,'user2','사용자2_3','2012-04-13 15:06:13');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (9,3,'user2','사용자2_4','2012-04-13 15:06:15');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (10,4,'user2','사용자2_5','2012-04-13 15:06:21');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (11,4,'user2','사용자2_6','2012-04-13 15:06:22');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (12,5,'user3','사용자3_1','2012-04-13 15:06:31');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (13,5,'user3','사용자3_2','2012-04-13 15:06:33');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (14,6,'user3','사용자3_3','2012-04-13 15:06:38');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (15,6,'user3','사용자3_4','2012-04-13 15:06:40');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (16,6,'user3','사용자3_5','2012-04-13 15:06:41');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (17,6,'user3','사용자3_','2012-04-13 15:06:42');
insert  into `reply`(`reply_no`,`comment_no`,`user_id`,`reply_content`,`reg_date`) values (18,6,'user3','사용자3_6','2012-04-13 15:06:43');

CREATE TABLE `user` (
   `user_id` VARCHAR(32) NOT NULL,
   `user_name` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`user_id`)
);

insert  into `user`(`user_id`,`user_name`) values ('user1','고객명1');
insert  into `user`(`user_id`,`user_name`) values ('user2','고객명2');
insert  into `user`(`user_id`,`user_name`) values ('user3','고객명3');