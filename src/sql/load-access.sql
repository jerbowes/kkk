#------------------------------------------------------------------------
# Load access
#------------------------------------------------------------------------
# Project:	kkk
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/load-access.sql,v $
# $Id: load-access.sql,v 1.3 2015/08/16 15:58:01 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#------------------------------------------------------------------------
# Password : [test579]
# Encrypted Password : [19e2ede71546e6159a6fe32b7676d10b]
INSERT INTO access ( 	
	access_id, people_id, metagroup_id, access_login, access_password,
	access_role, access_class, access_level, expiration_date
)VALUES(
	'1', '88', '88', 'rsmoot', '19e2ede71546e6159a6fe32b7676d10b',
	'User', 'Local', '1', '2017-07-07'
);
