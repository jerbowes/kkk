#------------------------------------------------------------------------
# Build igprocess
#------------------------------------------------------------------------
# Project:	wic
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-igprocess.sql,v $
# $Id: build-igprocess.sql,v 1.3 2013/01/13 01:47:13 jbowes Exp $
# $Date: 2013/01/13 01:47:13 $
# $DateLastModified$
# $Revision: 1.3 $
#------------------------------------------------------------------------
# Jerry Bowes, MKP-IT Development Coordinator, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS igprocess;
CREATE TABLE igprocess (
	igprocess_id 				integer UNSIGNED PRIMARY KEY auto_increment,
	igprocess_name				varchar(80) UNIQUE NOT NULL,
	igprocess_class				varchar(30) NOT NULL,	# Process, Facilitation, Meeting Format, Training
	igprocess_type				varchar(30) NOT NULL,	# Warrior, Magician, Lover, King, Outside Checkin, 
	igprocess_energy			varchar(30),	# Warrior, Magician, Lover, King, 
	igprocess_format			varchar(30),	# Diads, Round
	igprocess_state				varchar(15) NOT NULL DEFAULT 'New',	# New, Review, Released, Stale
	igprocess_rating			varchar(8),     # e.g. 2.4 (348)
	igprocess_description		text NOT NULL,
	igprocess_keywords		    varchar(200),
	igprocess_level				tinyint UNSIGNED NOT NULL DEFAULT '2',
	igprocess_participation		varchar(15),
	igprocess_minutes			smallint,
	last_updated				timestamp,
	updated_by					integer unsigned,
	igprocess_attribution		text,
	contributor_id					integer unsigned
	)    CHARACTER SET utf8
	;

