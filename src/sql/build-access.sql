#------------------------------------------------------------------------
# Build access
#------------------------------------------------------------------------
# Project:	kkk
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-access.sql,v $
# $Id: build-access.sql,v 1.2 2015/08/16 15:57:31 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS access;
CREATE TABLE access ( 	
	access_id			INTEGER PRIMARY KEY AUTO_INCREMENT,
	people_id			INTEGER NOT NULL,
	metagroup_id		INTEGER NOT NULL,
	access_login		VARCHAR(20) UNIQUE,
	access_password		VARCHAR(35),
	access_class		VARCHAR(20) NOT NULL,
	access_role		VARCHAR(20) NOT NULL,
	access_level		TINYINT NOT NULL DEFAULT '1',
	expiration_date		DATE
	);
