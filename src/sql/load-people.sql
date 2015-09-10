#------------------------------------------------------------------------
# Load people
#------------------------------------------------------------------------
# Project:	kkk
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/load-people.sql,v $
# $Id: load-people.sql,v 1.7 2015/08/16 16:13:23 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#------------------------------------------------------------------------
INSERT INTO people ( 
  people_id, username, first_name, nickname, middle_name, last_name, full_name,
  organization_id, email_1, email_2,
  home_street, home_city, home_state, home_zip, home_country, home_timezone,
  work_street, work_city, work_state, work_zip, work_country, work_timezone,
  day_phone, evening_phone, mobile_phone, sms,
  status, type
) VALUES ( 
  '88', 'rsmoot', 'Roscoe', 'Rocky', 'Centrus', 'Smoot', 'Roscoe Smoot',
  '88', 'rsmoot@gmail.com', 'rsmoot@example.com',
  '123 Main Street', 'Anywhere', 'NJ', '12345-6789','US','EST-5',
  '987 Industrial Ave', 'Buildtown', 'NJ', '12345-9876', 'US', 'EST-5',
  '777-333-1234', '777-444-1234', '777-555-1234', 'rsmoot@pager.com',
  'Active', 'Contractor'
);
