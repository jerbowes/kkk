#-------------------------------------------------------------------------
# Build program
#-------------------------------------------------------------------------
# Project: 	prodops
# Status:	development
# Synopsis:
#-------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-program.sql,v $
# $Id: build-program.sql,v 1.1 2015/08/30 15:50:12 jbowes Exp $
#-------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS program;
CREATE TABLE program ( 	
	program_id			INTEGER PRIMARY KEY AUTO_INCREMENT,
	program_name		VARCHAR(50) UNIQUE,
	program_type		VARCHAR(50),
	program_tag			VARCHAR(20) UNIQUE,
	owner_id			INTEGER UNSIGNED,
	program_status		VARCHAR(50),
	program_summary				VARCHAR(80),
	program_description			TEXT,
	program_url					VARCHAR(220)
	);



