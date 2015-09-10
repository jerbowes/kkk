#------------------------------------------------------------------------
# Build zzz
#------------------------------------------------------------------------
# Project:	kkk
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/build-zzz.sql,v $
# $Id: build-zzz.sql,v 1.2 2015/08/14 15:39:55 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes,  jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS zzz;
CREATE TABLE zzz (
	zzz_id			integer unsigned primary key NOT NULL auto_increment,
	zzz_name		varchar(30),
	zzz_color		varchar(30),
	zzz_type		varchar(30),
	zzz_notes		varchar(80),
	last_updated	timestamp
	)    CHARACTER SET utf8
	;
