#-------------------------------------------------------------------------
#- Load organization
#-------------------------------------------------------------------------
#- Project: kkk
#- Status:	development
#-------------------------------------------------------------------------
#- $Source: /home/jbowes/kkk/src/sql/RCS/load-organization.sql,v $
#- $Id: load-organization.sql,v 1.2 2015/08/15 16:08:05 jbowes Exp $
#-------------------------------------------------------------------------
#- Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
INSERT INTO organization ( 	organization_id, organization_type, organization_level,
	organization_name, organization_shortname, organization_abbr, reports_to,
	primary_site, organization_url, notes
	)VALUES(
	'88','Manufacturer','2',
	'Acme Widgets, Incorporated', 'Acme', 'Acme Widgets', '',
	'88', 'http://acme.com',
	'Test entry'
	);





