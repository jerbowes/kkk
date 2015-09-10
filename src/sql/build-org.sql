#------------------------------------------------------------------------
# Build org, Org Chart
# aka councils
#------------------------------------------------------------------------
# Project:	igroupportal
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-org.sql,v $
# $Id: build-org.sql,v 1.1 2013/05/27 13:19:00 jbowes Exp $
# $Date: 2013/05/27 13:19:00 $
# $DateLastModified$
# $Revision: 1.1 $
#------------------------------------------------------------------------
# Jerry Bowes, MKP-IT Development Coordinator, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS org;
CREATE TABLE org (
	org_id 				integer unsigned PRIMARY KEY auto_increment,
	org_tier			varchar(30),	# Region, Center, I-Group Region
	reports_to_org		integer unsigned,
	org_name			varchar(40),
	org_longname		varchar(60),
	org_shortname		varchar(20),
	org_abbreviation	varchar(20),
	org_description		text
	)	CHARACTER SET utf8
	;

