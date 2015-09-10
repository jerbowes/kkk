#------------------------------------------------------------------------
# Build preference
#------------------------------------------------------------------------
# Project:	igroupportal
# Status:	production
#------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-preference.sql,v $
# $Id: build-preference.sql,v 1.3 2013/01/13 15:28:55 jbowes Exp $
# $Date: 2013/01/13 15:28:55 $
#------------------------------------------------------------------------
# Jerry Bowes, MKP-IT Development Coordinator, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS preference;
CREATE TABLE preference (
	preference_id 			integer unsigned PRIMARY KEY auto_increment,
	preference_name			varchar(80),
	preference_class		varchar(30),	# User, Application, System
	preference_type			varchar(30),	# Binary, Range, Choice, Query, QueryArray
	preference_tag			varchar(30),	# Cross Reference
	default_value			varchar(30),
	preference_description	text,
	range_list				varchar(200),
	vgroups					varchar(200),
	responds_to				integer unsigned,
	responds_how			varchar(15),	# Same, Opposite, Blank, Delete
	is_lead					ENUM('Yes','No') default 'No',
	is_warrior				ENUM('Yes','No') default 'Yes',
	is_required				ENUM('Yes','No') default 'No',
	is_released				ENUM('Yes','No') default 'No'
	)    CHARACTER SET utf8
	;

