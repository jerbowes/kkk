#-------------------------------------------------------------------------
#- Build site
#-------------------------------------------------------------------------
#- Project: kkk
#- Status:	development
#-------------------------------------------------------------------------
#- $Source: /home/jbowes/kkk/src/sql/RCS/build-site.sql,v $
#- $Id: build-site.sql,v 1.1 2015/08/15 16:05:20 jbowes Exp $
#-------------------------------------------------------------------------
#- Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS site;
CREATE TABLE site ( 	
	site_id			INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	site_name		VARCHAR(30) NOT NULL,
	site_street		VARCHAR(30),
	site_building	VARCHAR(30),
	site_mailstop	VARCHAR(30),
	site_city		VARCHAR(30),
	site_state		VARCHAR(2),
	site_province	VARCHAR(30),
	site_timezone	VARCHAR(10),
	site_zip		VARCHAR(10),
	site_country	VARCHAR(30),
	site_fax		VARCHAR(30),
	site_type		VARCHAR(30),
	site_phone		VARCHAR(30),
	site_url		VARCHAR(30),
	reports_to		INTEGER,
	notes			TEXT
	);

