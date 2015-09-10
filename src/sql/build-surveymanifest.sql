#-------------------------------------------------------------------------
# Build I-Group Portal Survey Question Manifest
#-------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-surveymanifest.sql,v $
# $Date: 2013/02/23 16:46:15 $
# $Id: build-surveymanifest.sql,v 1.3 2013/02/23 16:46:15 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS surveymanifest;
CREATE TABLE surveymanifest ( 	
	surveymanifest_id	INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	surveysection_id	INTEGER UNSIGNED NOT NULL,
	survey_id			INTEGER UNSIGNED NOT NULL,
	surveyquestion_id	INTEGER UNSIGNED,
	sequence			SMALLINT
	)    CHARACTER SET utf8
	;
