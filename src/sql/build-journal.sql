#------------------------------------------------------------------------
# Build Transaction Journal
#------------------------------------------------------------------------
# Project: kkk
# Status: development
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-journal.sql,v $
# $Id: build-journal.sql,v 1.1 2015/08/15 21:42:46 jbowes Exp $
#-------------------------------------------------------------------------
# Jerry Bowes,  jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS journal;
CREATE TABLE journal (
	journal_id		INTEGER PRIMARY KEY AUTO_INCREMENT,
	source_table	VARCHAR(30) NOT NULL,
	source_id		INTEGER NOT NULL,
	author_id		INTEGER NOT NULL,
	journal_type	VARCHAR(30),
	journal_access	VARCHAR(30),
	notification	VARCHAR(30),
	reference_url	VARCHAR(120),
	cc_list			VARCHAR(200),
	journal_summary			VARCHAR(80),
	date_created			TIMESTAMP,
	follow_up	 	VARCHAR(15),	
	notify			VARCHAR(15),
	journal_detail			TEXT
) ;


