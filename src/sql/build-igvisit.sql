#------------------------------------------------------------------------
# Build igvisit, I-Group Visit
#------------------------------------------------------------------------
# Project:	igroupportal
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-igvisit.sql,v $
# $Id: build-igvisit.sql,v 1.1 2013/05/14 15:17:55 jbowes Exp $
# $Date: 2013/05/14 15:17:55 $
# $URL$
#------------------------------------------------------------------------
# Jerry Bowes, MKP-IT Development Coordinator, jerbowes@yahoo.com
# Jerry Bowes, MKP-USA I-Group Vice-Chairman
#------------------------------------------------------------------------
DROP TABLE IF EXISTS igvisit;
CREATE TABLE igvisit (
	igvisit_id 				integer unsigned PRIMARY KEY auto_increment,
	requester_id			integer unsigned NOT NULL,
	igroup_id				integer unsigned NOT NULL,
	visit_date				date,
	status					varchar(14),
	igvisit_type			varchar(30),
	igvisit_description		varchar(120),
	visitor_id				varchar(120),
	reference_url			varchar(200)
	)    CHARACTER SET utf8
	;

