#-------------------------------------------------------------------------
# Build I-Group Portal Survey Question Results Database
#-------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-surveyresult.sql,v $
# $Date: 2013/02/23 16:56:33 $
# $Id: build-surveyresult.sql,v 1.2 2013/02/23 16:56:33 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS surveyresult;
CREATE TABLE surveyresult ( 	
	surveyresult_id			INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	survey_id		    	INTEGER UNSIGNED NOT NULL,
	surveyquestion_id    	INTEGER UNSIGNED NOT NULL,
	surveyanswer_id	    	INTEGER UNSIGNED NOT NULL,
	responder_id	    	INTEGER UNSIGNED NOT NULL,
	answer_value			TEXT,
	UNIQUE KEY onlyone (survey_id, surveyquestion_id, surveyanswer_id, responder_id)
	)    CHARACTER SET utf8
	;
