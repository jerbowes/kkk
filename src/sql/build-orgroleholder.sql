#------------------------------------------------------------------------
# Build orgroleholder, Org Chart
#------------------------------------------------------------------------
# Project:	wic
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/wic/src/sql/RCS/build-orgroleholder.sql,v $
# $Id: build-orgroleholder.sql,v 1.10 2012/04/08 16:21:23 jbowes Exp $
# $Date: 2012/04/08 16:21:23 $
# $DateLastModified$
# $Revision: 1.10 $
#------------------------------------------------------------------------
# Jerry Bowes, MKP-IT Development Coordinator, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS orgroleholder;
CREATE TABLE orgroleholder (
	orgroleholder_id		integer unsigned PRIMARY KEY auto_increment,
	orgrole_id				integer unsigned not null,
	warrior_id				integer unsigned not null,
	which_id				integer unsigned not null,
	orgroleholder_alias		varchar(30),
	orgroleholder_notes		text,
	orgroleholder_email		varchar(80),
	orgroleholder_url		varchar(80),
	start_date				date NOT NULL,
	end_date				date NOT NULL
	)	CHARACTER SET utf8
	;

