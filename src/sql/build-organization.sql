#-------------------------------------------------------------------------
#- Build organization
#-------------------------------------------------------------------------
#- Project: vcs
#- Status:	development
#-------------------------------------------------------------------------
#- $Source: /home/jbowes/kkk/src/sql/RCS/build-organization.sql,v $
#- $Date: 2015/08/15 15:58:39 $
#- $Id: build-organization.sql,v 1.3 2015/08/15 15:58:39 jbowes Exp $
#-------------------------------------------------------------------------
#- Jerry Bowes, BCS Solutions, www.bcs-solutions.com, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS organization;
CREATE TABLE organization ( 	
	organization_id		INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	organization_name	VARCHAR(50) NOT NULL,
	organization_type	VARCHAR(50),
	organization_level	VARCHAR(50),
	organization_abbr	VARCHAR(15),
	organization_shortname	VARCHAR(50),
	organization_url	VARCHAR(80),
	primary_site		INTEGER,
	reports_to			INTEGER UNSIGNED,
	notes					TEXT
	);




