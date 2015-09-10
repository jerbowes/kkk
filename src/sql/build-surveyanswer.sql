#-------------------------------------------------------------------------
# Build I-Group Portal Survey
#-------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-surveyanswer.sql,v $
# $Date: 2013/02/23 16:09:27 $
# $Id: build-surveyanswer.sql,v 1.2 2013/02/23 16:09:27 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS surveyanswer;
CREATE TABLE surveyanswer ( 	
	surveyanswer_id			INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	surveyquestion_id		INTEGER UNSIGNED NOT NULL,
	surveyanswer_answer		VARCHAR(120),
	answer_type				VARCHAR(30),
	valid_range				VARCHAR(120)
	)    CHARACTER SET utf8
	;
