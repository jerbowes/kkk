#------------------------------------------------------------------------
# Build orgrole, Org Chart
#------------------------------------------------------------------------
# Project:	igroupportal
# Status:	production
#------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-orgrole.sql,v $
# $Id: build-orgrole.sql,v 1.1 2013/05/27 13:19:55 jbowes Exp $
# $Date: 2013/05/27 13:19:55 $
# $DateLastModified$
# $Revision: 1.1 $
#------------------------------------------------------------------------
# Jerry Bowes, MKP-IT Development Coordinator, jerbowes@yahoo.com
#------------------------------------------------------------------------
DROP TABLE IF EXISTS orgrole;
CREATE TABLE orgrole (
	orgrole_id				integer unsigned PRIMARY KEY auto_increment,
	org_id					integer unsigned NOT NULL,
	orgrole_name			varchar(40) NOT NULL,	
	orgrole_longname		varchar(80),	
	orgrole_term			smallint unsigned,
	orgrole_emailsuffix		varchar(40),
	orgrole_abbreviation	varchar(20) NOT NULL,	
	reports_to_orgrole		integer unsigned,
	orgrole_description		text
	)	CHARACTER SET utf8
	;


