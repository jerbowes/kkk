#-------------------------------------------------------------------------
# Build task
#-------------------------------------------------------------------------
# Project: prodops
# Status:	development
#-------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-task.sql,v $
# $Id: build-task.sql,v 1.1 2015/08/30 16:04:41 jbowes Exp $
#-------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS task;
CREATE TABLE task ( 	
	task_id				INTEGER PRIMARY KEY AUTO_INCREMENT,
	assignee_id			INTEGER NOT NULL,
	assigner_id			INTEGER NOT NULL,
	project_id			INTEGER NOT NULL,
	ticket_id			VARCHAR(15),
	sequence			INTEGER,
	last_modified		TIMESTAMP,
	date_started		DATE,
	date_due			DATE,
	deliverables		VARCHAR(250),
	alternate_id		INTEGER,
	task_priority		VARCHAR(20),
	task_category		VARCHAR(20),
	task_status			VARCHAR(80),
	task_state			VARCHAR(20),
	task_type			VARCHAR(20),
	hours_estimated		SMALLINT,
	hours_spent			SMALLINT,
	percent_complete	SMALLINT,
	task_summary		VARCHAR(80),
	task_details		TEXT
	);
