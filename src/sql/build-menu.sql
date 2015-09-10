#-------------------------------------------------------------------------
#- Build menu
#-------------------------------------------------------------------------
#- Project: kkk
#- Status:	development
#--------------------------------------------------------------------------
#- $Source: /home/jbowes/kkk/src/sql/RCS/build-menu.sql,v $
#- $Id: build-menu.sql,v 1.1 2015/08/15 14:48:57 jbowes Exp $
#-------------------------------------------------------------------------
#- Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS menu;
CREATE TABLE menu ( 	
	menu_id				INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	table_name			VARCHAR(20),
	field_name			VARCHAR(30),
	choice				VARCHAR(30),
	moreinfo_url		VARCHAR(80),
	sub_of				INTEGER UNSIGNED,
	is_default			enum('Y','N'),
	description			TEXT
	);
