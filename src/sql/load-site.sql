#-------------------------------------------------------------------------
#- Loadsite
#-------------------------------------------------------------------------
#- Project: kkk
#- Status:	development
#-------------------------------------------------------------------------
#- $Source: /home/jbowes/kkk/src/sql/RCS/load-site.sql,v $
#- $Id: load-site.sql,v 1.3 2015/08/15 16:19:19 jbowes Exp $
#-------------------------------------------------------------------------
#- Jerry Bowes, jerbowes@yahoo.com
#-------------------------------------------------------------------------
INSERT INTO site ( 	
	site_id,
	site_name,
	site_street,
	site_city,
	site_state,
	site_province,
	site_zip,
	site_country,
	site_timezone,
	site_building,
	site_fax,
	site_type,
	site_phone,
	site_url,
	reports_to,
	notes
	)VALUES(
	'88',					# site_id
	'Acme, Buildtown',		# site_name
	'987 Intustrial Drive', # site_street
	'Buildtown',			# site_city
	'NJ',					# site_state
	'',						# site_province
	'12345-9876',			# site_zip
	'US',					# site_country
	'EST-5',				# site_timezone
	'B-1',					# site_building
	'777-222-3456',			# site_fax
	'Manufacturing',		# site_type
	'777-222-6456',			# site_phone
	'http://b1.acme.com',	# site_url
	'',						# reports_to
	''						# notes
	);


