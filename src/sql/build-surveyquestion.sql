#-------------------------------------------------------------------------
# Build I-Group Portal Survey Question Database
#-------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-surveyquestion.sql,v $
# $Date: 2013/02/23 15:49:51 $
# $Id: build-surveyquestion.sql,v 1.2 2013/02/23 15:49:51 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS surveyquestion;
CREATE TABLE surveyquestion ( 	
	surveyquestion_id				INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	author_id		    			INTEGER UNSIGNED,
	surveyquestion_question			VARCHAR(120),
	surveyquestion_type				VARCHAR(50),
	surveyquestion_instructions		TEXT
	)    CHARACTER SET utf8
	;
