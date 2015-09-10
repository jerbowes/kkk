#-------------------------------------------------------------------------
# Build I-Group Portal Survey
#-------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-survey.sql,v $
# $Date: 2013/05/14 14:57:35 $
# $Id: build-survey.sql,v 1.4 2013/05/14 14:57:35 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS survey;
CREATE TABLE survey ( 	
	survey_id			INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	author_id		    INTEGER UNSIGNED,
	survey_name			VARCHAR(50),
	open_date			DATE,
	close_date			DATE,
	questions_per_page	TINYINT,
	audience			VARCHAR(80),
	center_id			INTEGER UNSIGNED default 0,
	igroup_members		varchar(6),
	igroup_region		INTEGER UNSIGNED,
	survey_description		TEXT
	)    CHARACTER SET utf8
	;
