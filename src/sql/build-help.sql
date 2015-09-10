#------------------------------------------------------------------------
# Build help
#------------------------------------------------------------------------
# Project:	kkk
# Status:	production
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-help.sql,v $
# $Id: build-help.sql,v 1.2 2015/08/14 03:24:38 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS help;
CREATE TABLE help (
	help_id			int(11) unsigned NOT NULL auto_increment PRIMARY KEY,
	meta_id 		int(11) unsigned NOT NULL,
	contact_id 		int(11) unsigned NOT NULL,
	language		varchar(30) NOT NULL default 'US_English',
	topic			varchar(30),
	subtopic		varchar(30),
	application		varchar(30),
	context			varchar(30),
	summary			varchar(60),
	help_type		varchar(30) default 'Explanation',
	sequence		smallint	default '100',
	level			smallint	default '10',
	module			varchar(30),
	table_name		varchar(30),
	field_name		varchar(30),
	keywords		varchar(200),
	short_help		text,
	long_help		text,
	last_modified	TIMESTAMP
	)    CHARACTER SET utf8
	;

