#-------------------------------------------------------------------------
# Build I-Group Portatl Survey Section
#-------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-surveysection.sql,v $
# $Date: 2013/02/23 16:47:00 $
# $Id: build-surveysection.sql,v 1.3 2013/02/23 16:47:00 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS surveysection;
CREATE TABLE surveysection ( 	
	surveysection_id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	survey_id			INTEGER UNSIGNED NOT NULL,
	surveysection_name	VARCHAR(60),
	sequence			SMALLINT
	)    CHARACTER SET utf8
	;
