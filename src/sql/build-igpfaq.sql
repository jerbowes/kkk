#-------------------------------------------------------------------------
# Build IGP FAQ
#-------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/build-igpfaq.sql,v $
# $Date: 2013/02/17 16:14:09 $
# $Id: build-igpfaq.sql,v 1.1 2013/02/17 16:14:09 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, BCS Solutions, www.bcs-solutions.com, jerbowes@yahoo.com
#-------------------------------------------------------------------------
DROP TABLE IF EXISTS igpfaq;
CREATE TABLE igpfaq ( 	
	igpfaq_id			INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	igpfaq_access		TINYINT NOT NULL DEFAULT '0',
	assignee_id		    INTEGER UNSIGNED,
	igpfaq_audience		VARCHAR(30),
	igpfaq_category		VARCHAR(30),
	igpfaq_content		TEXT,
	igpfaq_class		VARCHAR(30),
	igpfaq_keywords		VARCHAR(80),
	last_modified	    TIMESTAMP,
	more_info		    VARCHAR(140),
	igpfaq_state		VARCHAR(15),
	igpfaq_subcategory	VARCHAR(30),
	igpfaq_summary		VARCHAR(80),
	shelf_life		    SMALLINT,
	igpfaq_type			VARCHAR(30)
	)    CHARACTER SET utf8
	;
