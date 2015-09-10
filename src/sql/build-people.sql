#------------------------------------------------------------------------
# Build people
#------------------------------------------------------------------------
# Project:	kkk
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-people.sql,v $
# $Id: build-people.sql,v 1.6 2015/08/16 16:12:53 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS people;
CREATE TABLE people (
  people_id integer unsigned NOT NULL primary key auto_increment,
  username varchar(40),
  first_name varchar(40),
  nickname varchar(40),
  middle_name varchar(40),
  last_name varchar(40),
  full_name varchar(60),

  organization_id integer unsigned,
  email_1 varchar(60)  ,
  email_2 varchar(60)  ,

  home_street varchar(65)  ,
  home_city varchar(40)  ,
  home_state varchar(50)  ,
  home_zip varchar(10)  ,
  home_country varchar(5)  NOT NULL default 'US',
  home_timezone varchar(10)  ,

  work_street varchar(65)  ,
  work_city varchar(40)  ,
  work_state varchar(50)  ,
  work_zip varchar(10)  ,
  work_timezone varchar(10)  ,
  work_country varchar(5)  NOT NULL default 'US',

  day_phone varchar(20)  ,
  evening_phone varchar(20)  ,
  mobile_phone varchar(20)  ,
  sms varchar(20)  ,

  status varchar(20)  NOT NULL default 'Active',
  type varchar(20)  NOT NULL default 'Active'
) DEFAULT CHARSET=utf8;
