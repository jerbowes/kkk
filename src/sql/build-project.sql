#-------------------------------------------------------------------------
# Build project
#-------------------------------------------------------------------------
# Project:  prodops
# Status:	development
#-------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-project.sql,v $
# $Id: build-project.sql,v 1.1 2015/08/30 16:01:58 jbowes Exp $
#-------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS project;
CREATE TABLE project ( 	
	project_id			INTEGER PRIMARY KEY AUTO_INCREMENT,
	program_id			INTEGER NOT NULL,
	project_type		VARCHAR(20),
	ticket_id			INTEGER,
	department_id		INTEGER DEFAULT '1',
	project_tag			VARCHAR(20) UNIQUE,
	project_name		VARCHAR(50),
	project_status		VARCHAR(120),
	project_state		VARCHAR(20),
	project_summary		VARCHAR(80),
	project_url			VARCHAR(80),
	project_priority	VARCHAR(6),
	project_urgency		VARCHAR(30),
	percent_complete	SMALLINT,
	estimated_hours		SMALLINT,
	actual_hours		SMALLINT,
	date_opened			DATE,
	date_approved		DATE,
	date_started		DATE,
	date_due			DATE,
	owner_id			INTEGER,
	alternate_id		INTEGER,
	projmgr_id			INTEGER,
	project_details		TEXT
	);
