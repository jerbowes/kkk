#------------------------------------------------------------------------
# Load menu
#------------------------------------------------------------------------
# Project:	kkk
# Status:	development
#------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/sql/RCS/load-menu.sql,v $
# $Id: load-menu.sql,v 1.7 2015/08/19 18:11:40 jbowes Exp $
#------------------------------------------------------------------------
# Jerry Bowes, jerbowes@yahoo.com
#------------------------------------------------------------------------

#-------------------
## Asset: Accounting State
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'accounting_state', 'In Use', 'N', 'In Use');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'accounting_state', 'Defective', 'N', 'Defective');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'accounting_state', 'Missing', 'N', 'Missing');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'accounting_state', 'Disposed', 'N', 'Disposed');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'accounting_state', 'Suspension', 'N', 'Suspension');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'accounting_state', 'In Stock', 'N', 'In Stock');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'accounting_state', 'Unknown', 'N', 'Unknown');

#-------------------
## Asset: Asset Class
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Disk Storage', 'N', 'Disk Storage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Tape Storage', 'N', 'Tape Storage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Network Equipment', 'N', 'Network Equipment');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Server', 'N', 'Server');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Desktop Workstation', 'N', 'Desktop Workstation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Laptop', 'N', 'Laptop');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Printer', 'N', 'Printer');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Office Equipment', 'N', 'Office Equipment');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_class', 'Security Equipment', 'N', 'Security Equipment');

#-------------------
## Asset: Asset State
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'New', 'N', 'New');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'RMA', 'N', 'RMA - Out for Repair');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'In Use', 'N', 'In Use');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Storage', 'N', 'Storage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Decommissioned', 'N', 'Decommissioned');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Disposed', 'N', 'Disposed');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Waiting Disposal', 'N', 'Waiting Disposal');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Online Unused', 'N', 'Online Unused');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Unknown', 'N', 'Unknown');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Bench Spare', 'N', 'Bench Spare');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Cold Spare', 'N', 'Cold Spare');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Hot Spare', 'N', 'Hot Spare');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Bringup', 'N', 'Bringup');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_state', 'Play Box', 'N', 'Play Box');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Online Idle', 'N', 'Online Idle');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Powered Off', 'N', 'Powered Off');

#-------------------
## Asset: Asset Status
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'New', 'N', 'New');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'RMA', 'N', 'RMA - Out for Repair');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'In Use', 'N', 'In Use');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Storage', 'N', 'Storage');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Decommissioned', 'N', 'Decommissioned');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Disposed', 'N', 'Disposed');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Waiting Disposal', 'N', 'Waiting Disposal');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Online Unused', 'N', 'Online Unused');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Unknown', 'N', 'Unknown');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Racked Unused', 'N', 'Racked Unused');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_status', 'Bringup', 'N', 'Bringup');
INSERT INTO menu (table_name, field_name, choice, is_default, description)
VALUES ('asset','asset_status','Graveyard', 'N', 'Graveyard');
INSERT INTO menu (table_name, field_name, choice, is_default, description)
VALUES ('asset','asset_status','Maintenance', 'N', 'Maintenance');
INSERT INTO menu (table_name, field_name, choice, is_default, description)
VALUES ('asset','asset_status','Available', 'N', 'Available');

#-------------------
## Asset: Asset Type
#-------------------

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'File Server', 'N', 'File Server');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Disk Array', 'N', 'Disk Array');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Infrastructure Server', 'N', 'Infastructure Server');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Computer', 'N', 'Computer');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Networked Sensor', 'N', 'Networked Sensor');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Printer', 'N', 'Printer');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Network Equipment', 'N', 'Network Equipment');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Telecomm Equipment', 'N', 'Telecomm Equipment');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Remote Management', 'N', 'Remote Management');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'PDU', 'N', 'Power Distribution Unit');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Switch', 'N', 'Switch');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Router', 'N', 'Router');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Load Balancer', 'N', 'Load Balancer');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Windows Laptop', 'N', 'Windows Laptop');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'asset_type', 'Apple Laptop', 'N', 'Apple Laptop');

#-------------------
## Asset: Destiny
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'destiny', 'Continued Operation', 'N', 'Continued Operation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'destiny', 'Replace', 'N', 'Replace');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'destiny', 'Relocate', 'N', 'Relocate');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'destiny', 'Decommission', 'N', 'Decommission');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'destiny', 'Disposal', 'N', 'Disposal');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'destiny', 'Unknown', 'N', 'Unknown');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'destiny', 'Repurpose', 'N', 'Repurpose');

#-------------------
## Asset: Employment
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Production Operation', 'N', 'Production Operation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Configuration-Setup', 'N', 'Configuration-Setup');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Decommissioned', 'N', 'Decommissioned');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Online Idle', 'N', 'Online Idle');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Powered Off', 'N', 'Powered Off');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Unknown', 'N', 'Unknown');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Employee Use', 'N', 'Employee Use');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'employment', 'Unknown', 'N', 'Unknown');

#-------------------
## Asset: Form Factor
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'form_factor', 'Desktop', 'N', 'Desktop');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'form_factor', 'Desktop Tower', 'N', 'Desktop Tower');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'form_factor', 'Laptop', 'N', 'Laptop');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'form_factor', 'Rack Mounted', 'N', 'Rack Mounted');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'form_factor', 'Standalone ', 'N', 'Standalone');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'form_factor', 'Other', 'N', 'Other');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'form_factor', 'Blade', 'N', 'Blade');


#-------------------
## Asset: Monitored
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'monitored', 'Yes', 'N', 'Yes');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'monitored', 'No', 'N', 'No');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'monitored', 'TBD', 'N', 'TBD');

#-------------------
## Asset: OS
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'os', 'MacOS', 'N', 'MacOS');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'os', 'Centos', 'N', 'Centos');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'os', 'Windows 7', 'N', 'Windows 7');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'os', 'Windows XP', 'N', 'Windows XP');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'os', 'Cisco IOS', 'N', 'Cisco IOS');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'os', 'NA', 'N', 'NA');

#-------------------
## Asset: Redundant Power
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'redundant_power', 'Yes', 'N', 'Yes');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'redundant_power', 'No', 'N', 'No');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'asset', 'redundant_power', 'TBD', 'N', 'TBD');

#-------------------
## Assetrole: authorization
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'assetrole', 'authorization', 'Approved', 'N', 'OK');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'assetrole', 'authorization', 'Rejected', 'N', 'Bad');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'assetrole', 'authorization', 'Unknown', 'N', 'Unknown');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'assetrole', 'authorization', 'Exception', 'N', 'Unknown');
#------------------------
## Calendar: calendar_type
#------------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'calendar', 'calendar_type', 'Software Deploy', 'N', 'Software Deploy');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'calendar', 'calendar_type', 'ISP Maintenance', 'N', 'ISP Maintenance');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'calendar', 'calendar_type', 'Certificate Expiration', 'N', 'Certificate Expiration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'calendar', 'calendar_type', 'License Expiration', 'N', 'License Expiration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'calendar', 'calendar_type', 'Security Issue', 'N', 'Security Issue');

#------------------------
## Correction: correction_type
#------------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'correction', 'correction_type', 'Code Change', 'N', 'Code Change');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'correction', 'correction_type', 'Chef Change', 'N', 'Chef Change');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'correction', 'correction_type', 'Procedure', 'N', 'Procedure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'correction', 'correction_type', 'Training', 'N', 'Training');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'correction', 'correction_type', 'Tool Change', 'N', 'Tool Change');

#------------------------------------
## Dependency
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('dependancy','dependancy_type','Resource Competition','Resource Competition');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('dependancy','dependancy_type','Completion','Completion');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('dependancy','dependancy_type','Defininition','Defininition');

#------------------------
## Deploy: deploy_payload
#------------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_payload', 'Base Image', 'Base Image', 'Base Image');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_payload', 'RPM', 'RPM', 'RPM');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_payload', 'Patch', 'Patch', 'Patch');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_payload', 'Database Update', 'Database Update', 'Database Update');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_payload', 'Database Schema Change', 'Database Schema Change', 'Database Schema Change');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_payload', 'PHP Web Code', 'PHP Web Code', 'PHP Web Code');

#------------------------
## Deploy: deploy_type
#------------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_type', 'Scheduled Release', 'Scheduled Release', 'Scheduled Release');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_type', 'UnScheduled Release', 'UnScheduled Release', 'UnScheduled Release');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_type', 'Application SW Hotfix', 'Application SW Hotfix', 'Hotfix made to application or component software or configuration files resulting in deployed application deviating from production standard.');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_type', 'Platform Hotfix', 'Platform Hotfix', 'Hotfix made to operating system or utility configurations resulting in host operating system deviating from production standard');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_type', 'Infrastructure Update', 'Infrastructure Update', 'Infrastructure Update');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_type', 'Development', 'Development', 'Development');

#------------------------
## Deploy: deploy_result
#------------------------

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_result', 'Unverified', 'Unverified', 'Unverified');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_result', 'Fail No Rollback', 'Fail No Rollback', 'Fail No Rollback');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_result', 'Fail And Rollback', 'Fail And Rollback', 'Fail And Rollback');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'deploy_result', 'Success', 'Success', 'Success');


#------------------------
## Deploy: qa_required
#------------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'qa_required', 'Component Unit Test', 'Component Unit Test', 'Component Unit Test');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'qa_required', 'Component Regression', 'Component Regression', 'Component Regession');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploy', 'qa_required', 'System Regression', 'System Regression', 'System Regession');

#------------------------
## Deploytarget: deploytarget_class
#------------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'ELITE-Production', 'ELITE-Production', 'ELITE-Production');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'ELITE-Volunteers', 'ELITE-Volunteers', 'ELITE-Volunteers');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'ELITE-Backend', 'ELITE-Backend', 'ELITE-Backend');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'AR-Production', 'AR-Production', 'AR-Production');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'AR-Volunteers', 'AR-Volunteers', 'AR-Volunteers');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'HSS-Production', 'HSS-Production', 'HSS-Production');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'HSS-Development', 'HSS-Development', 'HSS-Development');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'HSS-Volunteers', 'HSS-Volunteers', 'HSS-Volunteers');
INSERT INTO menu (table_name, field_name, choice, is_default, description )

VALUES ( 'deploytarget', 'deploytarget_class', 'AWS-Production', 'AWS-Production', 'AWS-Production');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'AWS-Production', 'AWS-Production', 'AWS-Production');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'AWS-Stage', 'AWS-Stage', 'AWS-Stage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'DevTools Infrastructure', 'DevTools Infrastructure', 'DevTools Infrastructure');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'Support Infrastructure', 'Support Infrastructure', 'Support Infrastructure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'deploytarget', 'deploytarget_class', 'Production Infrastructure', 'Production Infrastructure', 'Production Infrastructure');


#-------------------
## DNS: cname_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'cname_type', 'HTTP Virtual Host', 'HTTP Virtual Host', 'HTTP Virtual Host');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'cname_type', 'Web Service', 'Web Service', 'Web Service');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'cname_type', 'Failover Standby', 'Failover Standby', 'Web Service');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'cname_type', 'LB-VIP', 'LB-VIP', 'Load Balanced Virtual IP');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'cname_type', 'Production Service', 'Production Service', 'Production Service');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'cname_type', 'N/A', 'N/A', 'Not Applicable');

#-------------------
## DNS: record_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'record_type', 'A', 'A', 'A');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'record_type', 'CNAME', 'CNAME', 'CNAME');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'record_type', 'PTR', 'PTR', 'PTR');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'record_type', 'SPF', 'SPF', 'SPF');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'record_type', 'TXT', 'TXT', 'TXT');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'dns', 'record_type', 'NS', 'NS', 'NS');

#-------------------
## Error: impact
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I0D: Environment Degraded', 'N', 'Application Degraded');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I0O: Environment Outage', 'N', 'Application Outage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I1D: Application Degraded', 'N', 'Application Degraded');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I1O: Application Outage', 'N', 'Application Outage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I2D: Service Degraded', 'N', 'Service Degraded');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I2O: Service Outage', 'N', 'Service Outage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I3O: Component Outage', 'N', 'Component Outage');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I3D: Component Degraded', 'N', 'Component Degraded');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I4D: Feature Degraded', 'N', 'Feature Degraded');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I4O: Feature Outage', 'N', 'Feature Outage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I5O: Node Outage', 'N', 'Node Outage');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'error', 'error_impact', 'I5D: Node Degraded', 'N', 'Node Degraded');


#-------------------
## Faq: Audience
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'audience', 'Sysadmin Only', 'N', 'Sysadmin Only');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'audience', 'Helpdesk Staff', 'N', 'Helpdesk Staff');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'audience', 'Engineering Users', 'N', 'Engineering Users');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'audience', 'Corp Users', 'N', 'Corp Users');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'audience', 'University Users', 'N', 'Corp Users');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'audience', 'Public', 'N', 'Public');

#-------------------
## Faq: Class
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'ALM', 'N', 'Asset Lifecycle Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'AMS', 'N', 'Account Management, and Security');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'CS', 'N', 'Customer Service');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'NDS', 'N', 'Network Directory Services');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'FDO', 'N', 'Facilities and DataCenter Ops');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'FSM', 'N', 'File Storage Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'IMA', 'N', 'Infrastructure Monitoring and Alerts');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'MCM', 'N', 'Machine Configuration Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'STCM', 'N', 'Sysadmin Tools Configuration Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'PPDC', 'N', 'Policies, Procedures, and Documentation Control');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'SysOpsProc', 'N', 'System Admin Operations Procedures');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'SysOpsRef', 'N', 'System Admin Operation Reference');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'SysOpsProj', 'N', 'System Admin Project Operation Information');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
  VALUES ( 'faq', 'class', 'Admin', 'N', 'General Corporate Administration');

#-------------------
## Faq: Shelf Life
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'shelf_life', '15', 'N', '15');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'shelf_life', '30', 'N', '30');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'shelf_life', '45', 'Y', '45');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'shelf_life', '60', 'N', '60');

#-------------------
## Faq: Status
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'status', 'New', 'Y', 'New');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'status', 'Draft', 'N', 'Draft');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'status', 'Review', 'N', 'Review');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'status', 'Released', 'N', 'Released');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'faq', 'status', 'Stale', 'N', 'Stale');

#-------------------
## Function: function_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'General', 'Y', 'General');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Logging', 'Y', 'Logging');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Database update', 'Y', 'Database update');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Content Ingestion', 'Y', 'Content Ingestion');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Data Management', 'Y', 'Data Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Resource Management', 'Y', 'Resource Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'User Administration', 'Y', 'User Administration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'User Authentication', 'Y', 'User Authentication');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Billing', 'Y', 'Billing');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Data Upload', 'Y', 'Data Upload');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'function', 'function_type', 'Data Download', 'Y', 'Data Download');

#-------------------
## Help: Language
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'language', 'US_English', 'N', 'US_English');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'language', 'CAN_French', 'N', 'CAN_French');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'language', 'German', 'N', 'German');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'language', 'EU_FRENCH', 'N', 'EU_French');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'language', 'US_English', 'N', 'US_English');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'language', 'MEX_Spanish', 'N', 'MEX_Spanish');

#-------------------
## Help: Type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'help_type', 'User Overview', 'N', 'User Overview');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'help_type', 'Tutorial', 'N', 'Tutorial');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'help_type', 'Explanation', 'Y', 'Explanation');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'help_type', 'Usage', 'N', 'Usage');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'help_type', 'Administration', 'N', 'Administration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'help', 'help_type', 'Architecture', 'N', 'Architecture');


#-------------------
## Helpdesk: Category
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'File Storage', 'N', 'File Storage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Backups', 'N', 'Backups');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'LDAP/OD', 'N', 'LDAP/OD');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Sysadmin CM', 'N', 'Sysadmin CML');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Machine CM', 'N', 'Machine CM');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Windows Systems', 'N', 'Windows Systems');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Linux Systems', 'N', 'Linux Systems');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Unix Systems', 'N', 'Unix Systems');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Internal Web', 'N', 'Internal Web');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Corporate Web', 'N', 'Corporate Web');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'User Accounts', 'N', 'User Accounts');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Email', 'N', 'Email');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Network', 'N', 'Network');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'category', 'Web Applications: Wiki', 'N', 'Web Applications: Wiki');

#-------------------
## Helpdesk: Priority
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'priority', 'P1: Critical', 'N', 'P1: Critical');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'priority', 'P2: Urgent', 'N', 'P2: Urgent');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'priority', 'P3: Routine', 'N', 'P3: Routine');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'priority', 'P4: Future', 'N', 'P4: Future');

#-------------------
## Helpdesk: State
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'state', 'New', 'N', 'New');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'state', 'Assigned', 'N', 'Assigned');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'state', 'Hold for Requester', 'N', 'Hold, Waiting Customer Input');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'state', 'Complete', 'N', 'Complete');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'state', 'Closed', 'N', 'Closed');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'state', 'Stuck', 'N', 'Stuck waiting on other factors');

#-------------------
## Helpdesk: Type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'type', 'New Web Form', 'N', 'New Web Form');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'type', 'Account Management', 'N', 'Account Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'type', 'Account Management', 'N', 'Account Management');

#-------------------
## Helpdesk: Urgency
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'urgency', 'P1: Critical', 'N', 'P1: Critical');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'urgency', 'P2: Urgent', 'N', 'P2: Urgent');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'urgency', 'P3: Routine', 'N', 'P3: Routine');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'helpdesk', 'urgency', 'P4: Future', 'N', 'P4: Future');

#-------------------
## Host: Destiny
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'destiny', 'Continued Operation', 'N', 'Continued Operation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'destiny', 'Replace', 'N', 'Replace');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'destiny', 'Upgrade', 'N', 'Upgrade');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'destiny', 'Redeploy', 'N', 'Redeploy');

#-------------------
## Host: Employment
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'employment', 'Production Operation', 'N', 'Production Operation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'employment', 'Development Ops', 'N', 'Development Operation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'employment', 'Eval', 'N', 'Eval');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'employment', 'Non Operation', 'N', 'Non Operation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'employment', 'Configuration-Setup', 'N', 'Configuration-Setup');

#-------------------
## Host: Monitored
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'monitored', 'Yes', 'N', 'Yes, monitored by Nagios');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'monitored', 'No', 'N', 'No, Not monitored by Nagios');

#-------------------
## Host: Status
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_status', 'Online', 'N', 'Online');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_status', 'RMA', 'N', 'RMA');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_status', 'Decommissioned', 'N', 'Decommissioned');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_status', 'Offline', 'N', 'Offline');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_status', 'Fail', 'N', 'Fail');

#-------------------
## Host: Host Class
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_type', 'Physical Host', 'N', 'Physical Host');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_type', 'VmWare Virtual Host', 'N', 'VmWare Virtual Host');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_type', 'Cname Alias', 'N', 'Cname Alias');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'host', 'host_type', 'Cluster Node', 'N', 'Cluster Node');


#-------------------
## Hostrole: authorization
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostrole', 'authorization', 'Approved', 'N', 'Approved');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostrole', 'authorization', 'Rejected', 'N', 'Rejected');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostrole', 'authorization', 'Unknown', 'N', 'Unknown');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostrole', 'authorization', 'Exception', 'N', 'Exception');

#-------------------
## Hostmanifest: manifest type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostmanifest', 'manifest_type', 'hostclass', 'N', 'Host Class');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostmanifest', 'manifest_type', 'software', 'N', 'Host Software');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostmanifest', 'manifest_type', 'whocares', 'N', 'Who Cares');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'hostmanifest', 'manifest_type', 'hostrole', 'N', 'Host Role');

#-------------------
## Incident: cause_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'DB Deployment', 'Y', 'DB Deployment');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'Configuration Change', 'Y', 'Configuration Change');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'No Monitoring', 'Y', 'No Monitoring');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'No Backup', 'Y', 'No Backup');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'SW Bug', 'Y', 'SW Bug');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'No Adaptability', 'Y', 'No Adaptability');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'Unknown Fail Mode', 'Y', 'Unknown Fail Mode');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_type', 'DB Out of Sync', 'Y', 'Database out of Synchronization');

#-------------------
## Incident: cause_class
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Unresilient SW Design', 'Y', 'Unresilient SW Design');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'DB Deployment', 'Y', 'DB Deployment');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Configuration Change', 'Y', 'Configuration Change');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'No Monitoring', 'Y', 'No Monitoring');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'No Backup', 'Y', 'No Backup');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'SW Bug', 'Y', 'SW Bug');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'No Adaptability', 'Y', 'No Adaptability');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Unknown Fail Mode', 'Y', 'Unknown Fail Mode');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Incorrect Data Update', 'Y', 'Incorrect Data Update');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'External IP Blockage', 'Y', 'External IP Blockage');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'No Failover', 'Y', 'No Failover');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Insufficient Capacity', 'Y', 'Insufficient Capacity');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Platform SW/Firmware', 'Y', 'Platform SW/Firmware');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Platform OS', 'Y', 'Platform OS');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Itadmin Bad Data', 'Y', 'Itadmin Bad Data');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Platform HW Failure', 'Y', 'Platform HW Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'Network Provider Problem', 'Y', 'Network Provider Problem');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'ISP Power Casualty', 'Y', 'ISP Power Casualty');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'cause_class', 'ISP Network Casualty', 'Y', 'ISP Network Casualty');

#-------------------
## Incident: how_detected
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Zabbix Dashboard', 'Y', 'Zabbix Dashboard');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Zabbix Alert', 'Y', 'Zabbix Alert');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Collectd Browse', 'Y', 'Collectd Browse');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Internal Users', 'Y', 'Internal Users');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'QA Automation', 'Y', 'QA Automation');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'QA Manual', 'Y', 'QA Manual');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Customer Support', 'Y', 'Customer Support');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Platform Browsing', 'Y', 'Platform Browsing');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Collectd Alert', 'Y', 'Collectd Alert');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Prodops Console', 'Y', 'Prodops Console');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Other Data Collection', 'Y', 'Other Data Collection');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Stats Report', 'Y', 'Stats Report');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'DB Monitors', 'Y', 'DB Monitors');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'how_detected', 'Local Monit Alert', 'Y', 'Local Monit Alert');


#-------------------
## Incident: incident_class
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'IP Mis-Allocation', 'Y', 'IP Mis-Allocation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'ISP Failure', 'Y', 'ISP Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'ISP Degradation', 'Y', 'ISP Degradation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Platform Failure', 'Y', 'Platform Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Platform Degradation', 'Y', 'Platform Degradation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Component Failure', 'Y', 'Component Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Component Degradation', 'Y', 'Component Degradation');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'System Failure', 'Y', 'System Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'System Degradation', 'Y', 'System Degradation');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Network Degradation', 'Y', 'Network Degradation');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Undesired Change Impact', 'Y', 'Undesired Change Impact');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Network Outage', 'Y', 'Network Outage');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'TBD', 'Y', 'TBD');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Data Center Availability', 'Y', 'Data Center Availability');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Component Failure', 'Y', 'Component Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Authentication Failure', 'Y', 'Authentication Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Database Failure', 'Y', 'Database Failure');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_class', 'Load Unbalance', 'Y', 'Load Unbalance');
#-------------------
## Incident: incident_impact
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Global User Outage', 'Y', 'Global User Outage');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Regional User Outage', 'Y', 'Regional User Outage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Global User Degradation', 'Y', 'Global User Degradation');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Regional User Degradation', 'Y', 'Regional User Degradation');

# Service Degradation
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Global Service Degradation', 'Y', 'Global User Degradation');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Regional Service Degradation', 'Y', 'Regional User Degradation');

# User Segmentation Degradation
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'User Segment Degradation', 'Y', 'User Segment Degradation');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'User Segment Outage', 'Y', 'User Segment Outage');

# Revenue Loss
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Minor Capacity Reduction', 'Y', 'Minor Capacity Reduction');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Minor Revenue Loss', 'Y', 'Minor Revenue Loss');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Major Revenue Loss', 'Y', 'Major Revenue Loss');

# Statistics Gathering
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Temporary Statistics Loss', 'Y', 'Temporary Statistics Loss');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_impact', 'Statistics Loss', 'Y', 'Statistics Loss');

#-------------------
## Incident: incident_priority
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_priority', 'P0', 'N', 'P0: Production Down');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_priority', 'P1', 'Y', 'P1: Production Partial Outage');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_priority', 'P2', 'N', 'P2: Customer Degraded');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_priority', 'P3', 'N', 'P3: System Degraded');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_priority', 'P4', 'Y', 'P4: No Customer Impact Failure');

#-------------------
## Incident: incident_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Configuration Management', 'Y', 'Configuration Management');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Platform OS/FW Issue', 'Y', 'Platform OS/FW Issue');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Platform Failure', 'Y', 'Platform Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Overload', 'Y', 'Overload');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Network', 'N', 'Network');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Host SW Failure', 'N', 'Host SW Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Host HW Failure', 'N', 'Host HW Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Unknown', 'Y', 'Unknown');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Load Balancer Failure', 'Y', 'Load Balancer Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Database Failure', 'Y', 'Database Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Service Provider Failure', 'Y', 'Service Provider Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Certificate Expiration', 'Y', 'Certificate Expiration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'License Expiration', 'Y', 'License Expiration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Network Configuration', 'Y', 'Network Configuration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Host Configuration', 'Y', 'Host Configuration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Environment Configuration', 'Y', 'Environment Configuration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Service Failure', 'Y', 'Service Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Application SW Bug', 'Y', 'Application SW Bug');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'Component SW Bug', 'Y', 'Component SW Bug');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'User Connect Failure', 'Y', 'User Connect Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_type', 'User Authentication Failure', 'Y', 'User Authentication Failure');

#-------------------
## Incident: incident_state
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_state', 'New', 'Y', 'New');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_state', 'Customer Down', 'N', 'Customer DownNew');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_state', 'Service Degraded', 'N', 'Service Degraded');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_state', 'Operational', 'N', 'Operational');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_state', 'RCA In Progress', 'N', 'RCA In Progress');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'incident_state', 'Closed', 'N', 'Closed');

#-------------------
## Incident: resolution_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Restarted Service', 'Y', 'Restarted Service');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Disabled Platform', 'Y', 'Disabled Platform');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Reconfigured Service', 'Y', 'Reconfigured Service');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Deleted Files/Logs', 'Y', 'Deleted Files/Logs');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Disabled Alert', 'Y', 'Disabled Alert');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Changed Alert', 'Y', 'Changed Alert');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Recovered Database', 'Y', 'Recovered Database');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Reconfigured DNS', 'Y', 'Reconfigured DNS');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Updated Software', 'Y', 'Updated Software');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Updated Configuration', 'Y', 'Updated Configuration');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Rebooted Platform', 'Y', 'Rebooted Platform');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Repaired Hardware', 'Y', 'Repaired Hardware');

INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Platform Watchdog Reset', 'Y', 'Platform Watchdog Reset');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Upgraded Platform OS/FW', 'Y', 'Upgrade Platform OS/FW');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Escalated to Dev', 'Y', 'Escalated to Dev');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Escalated to ISP', 'Y', 'Escalated to ISP');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'incident', 'resolution_type', 'Escalated to IT', 'Y', 'Escalated to IT');

#------------------------------------
## Journal: follow_up
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('journal','follow_up','No','No');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('journal','follow_up','Yes','Yes');

#-------------------
## Journal: journal_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Perspective', 'N', 'Perspective');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Reference', 'N', 'Reference');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Analysis', 'N', 'Analysis');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Clarification', 'N', 'Clarification');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Info Request', 'N', 'Info Request');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Action Item', 'N', 'Action Item');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Discussion Note', 'N', 'Discussion Note');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Meeting Minutes', 'N', 'Meeting Minutes');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Meeting Request', 'N', 'Meeting Request');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Incident Note', 'N', 'Incident Note');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Problem Note', 'N', 'Problem Note');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Task Note', 'N', 'Task Note');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Note', 'N', 'Note');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'journal_type', 'Interview Note', 'N', 'Interview Note');


#-------------------
## Journal: notification
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'notification', 'Opslog', 'Y', 'Opslog');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'notification', 'No', 'N', 'No');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'notification', 'Incidents', 'N', 'Incidents');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'journal', 'notification', 'Subscribers', 'N', 'Subscribers');

#------------------------------------
## License: license_type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('license','license_type','DNS Domain Lease','DNS Domain Lease');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('license','license_type','Application License','Software Application');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('license','license_type','Apache SSL Cert','Apache SSL Cert');

#------------------------------------
## Monitor: monitor_class
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','HSS Configuration','HSS Configuration');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','HSS Service','HSS Service');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Platform Resource','Platform Resource');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Network Connectivity','Network Connectivity');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Network Configuration','Network Configuration');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Platform Configuratoin','Platform Configuration');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Website Availability','Website Availability');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Data Integrity','Data Integrity');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Infrastructure Availability','Infrastructure Availability');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_class','Data Collection','Data Collection');

#------------------------------------
## Monitor: monitor_type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_type','Zabbix Active','Zabbix Active');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_type','Zabbix Passive','Zabbix Passive');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_type','Monit','Monit');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_type','Http Probe','Http Probe');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_type','Database','Database');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('monitor','monitor_type','Collectd Trigger','Collectd Trigger');

#-------------------
## Nic: nic_state
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_state', 'Up', 'N', 'Up');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_state', 'Down', 'N', 'Down');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_state', 'Unconfigured', 'N', 'Unconfigured');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_state', 'Misconfigured', 'N', 'Misconfigured');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_state', 'Heartbeat-Online', 'N', 'Heartbeat-Online');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_state', 'Heartbeat-Standby', 'N', 'Heartbeat-Standby');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_state', 'Unknown', 'N', 'Unknown');

#-------------------
## Nic: nic_speed
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_speed', '10Mbs', 'N', '10Mbs');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_speed', '100Mbs', 'N', '100Mbs');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_speed', '1Gps', 'N', '1Gps');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_speed', '10Gps', 'N', '10Gps');

#-------------------
## Nic: nic_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_type', '10BaseT', 'N', '10BaseT');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_type', '100BaseT', 'N', '100BaseT');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_type', '1000BaseT', 'N', '1000BaseT');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'nic', 'nic_type', 'Fiber', 'N', 'Fiber');

#-------------------
## OpsTask: opstask_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_type', 'Setup', 'N', 'Setup');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_type', 'Survey', 'N', 'Survey');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_type', 'Configuration', 'N', 'Configuration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_type', 'Maintenance', 'N', 'Maintenance');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_type', 'Procedure', 'N', 'Procedure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_type', 'Troubleshooting', 'N', 'Troubleshooting');

#-------------------
## OpsTask: opstask_state
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_state', 'New', 'N', 'New');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_state', 'Review', 'N', 'Review');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_state', 'Released', 'N', 'Released');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'opstask', 'opstask_state', 'Stale', 'N', 'Stale');

#------------------------
## Payload: payload_type
#------------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'payload', 'payload_type', 'RPM', 'N', 'RPM');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'payload', 'payload_type', 'Patch', 'N', 'Patch');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'payload', 'payload_type', 'Database Update', 'N', 'Database Update');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'payload', 'payload_type', 'Content Update', 'N', 'Content Update');
#------------------------
## Payload: payload_type
#------------------------

#-------------------
## People: Class
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'class', 'Mspot Employee', 'N', 'Zumelife Employee');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'class', 'Contractor', 'N', 'Contractor');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'class', 'Consultant', 'N', 'Consultant');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'class', 'Samsung Employee', 'N', 'Vendor');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'class', 'Vendor', 'N', 'Vendor');

#-------------------
## People: Source
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'source', 'HR', 'N', 'HR');

#-------------------
## People: type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'type', 'Employee', 'N', 'Employee');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'type', 'Consultant', 'N', 'Consultant');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'type', 'Lead', 'N', 'Lead');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'type', 'Prospect', 'N', 'Prospect');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'type', 'Customer', 'N', 'Customer');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'people', 'type', 'Partner', 'N', 'Partner');


#-------------------
## Problem: problem_site
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_site', 'AWS: EU-West', 'N', 'AWS: EU-West');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_site', 'AWS: US-East', 'N', 'AWS: US-East');

#-------------------
## Problem: problem_type
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Overload', 'Y', 'Overload');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Network', 'N', 'Network');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Host SW Failure', 'N', 'Host SW Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Host HW Failure', 'N', 'Host HW Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Unknown', 'Y', 'Unknown');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Load Balancer Failure', 'Y', 'Load Balancer Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Database Failure', 'Y', 'Database Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Service Provider Failure', 'Y', 'Service Provider Failure');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Certificate Expiration', 'Y', 'Certificate Expiration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'License Expiration', 'Y', 'License Expiration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Network Configuration', 'Y', 'Network Configuration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Host Configuration', 'Y', 'Host Configuration');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_type', 'Environment Configuration', 'Y', 'Environment Configuration');

#-------------------
## Problem: problem_state
#-------------------
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'New', 'Y', 'New');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'Customer Down', 'N', 'Customer DownNew');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'Limping', 'N', 'Limping');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'Service Degraded', 'N', 'Service Degraded');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'Operational: Hot Fixed', 'N', 'Operational: Hot Fixed');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'RCA In Progress', 'N', 'RCA In Progress');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'RCA In Review', 'N', 'RCA In Progress');
INSERT INTO menu (table_name, field_name, choice, is_default, description )
VALUES ( 'problem', 'problem_state', 'RCA Complete', 'N', 'RCA Complete');




#------------------------------------
## PROJECT: priority
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P1','P1: Critical');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P1U','P1U: Critical Urgent');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P1B','P1B: Critical Blocked');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P2','P2: High');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P2U','P2U: High Urgent');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P2B','P2B: High Blocked');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P3U','P3U: Medium Urgent');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P3','P3: Medium');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P3B','P3B: Medium Blocked');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P4','P4: Routine');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_priority','P5','P5: Future');


#------------------------------------
## PROJECT: state
#------------------------------------


INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Proposal',
	'Project has been proposed, not approved.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Candidate',
	'Project has been approved for research to determine feasibility.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Research',
	'Candidate project is being evaluated for feasibility.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Development',
	'Project has been approved as feasible. Design and development are underway.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Pilot',
	'Test prototype is being implemented for compatibility and load testing.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Graveyard',
	'Project is unfeasible, may be re-evaluated at a later time.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Hold',
	'Waiting for external resources.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Deployment',
	'System being implemented, customer feedback being monitored.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Maintenance',
	'System operational monitored.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_state','Prototype',
	'Prototype');


#------------------------------------
## PROJECT: status
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_status','Active',
	'Active.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_status','Hold',
	'Hold.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_status','Blocked',
	'Blocked.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_status','InActive',
	'InActive.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_status','Unstarted',
	'Unstarted.');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_status','Complete',
	'Complete');


#------------------------------------
## PROJECT: type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_type','Hardware','Hardware');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_type','Software','Software');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_type','Admin','Admin');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_type','Infrastructure','Infrastructure');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_type','Documentation','Documentation');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_type','Security','Security');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('project','project_type','Process','Process');


#------------------------------------
## PROGRAM: type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_type','Product','Product');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_type','Pilot','Pilot');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_type','Marketing','Marketing');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_type','Infrastructure','Infrastructure');

#------------------------------------
## PROGRAM: status
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_status','New','New');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_status','Hold','Hold');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_status','In Process','In Process');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_status','Completed','Completed');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_status','Completed','Completed');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_status','Waiting Ventor','Waiting Ventor');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('program','program_status','Waiting Consultant','Waiting Consultant');


#------------------------------------
## Site: site_type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('site','site_type','Colo','Rented Colocation Datacenter');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('site','site_type','AWS','AWS Cloud Hosting');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('site','site_type','OnSite','mSpot Property');

#------------------------------------
## Site: site_region
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('site','site_region','US','US');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('site','site_region','EU','Europe');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('site','site_region','APAC','Tokyo');

#------------------------------------
## Subscribe: escalation
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','escalation','Parallel','Parallel');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','escalation','Sequential','Sequential');

#------------------------------------
## Subscribe: notification
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notification','Primary Email','Primary Email');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notification','Secondary Email','Secondary Email');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notification','Every Email','Every Email');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notification','Day Phone','Day Phone');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notification','Evening Phone','Evening Phone');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notification','Cell Phone','Cell Phone');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notification','SMS Message','SMS Message');
#------------------------------------
## Subscribe: notify_when
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notify_when','System Down','System Down');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notify_when','System Maintenance','System Maintenance');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notify_when','Service Interruption','Service Interruption');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notify_when','Service Degradation','Service Degradation');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notify_when','System Down','System Down');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notify_when','Everything','Everything');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','notify_when','Update','Update');

#------------------------------------
## Subscribe: role
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','SysAdmin','SysAdmin');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Application Admin','Application AdminOwner');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','DBA','DBA');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Service Manager','Service Manager');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Operations Manager','Operations Manager');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Owner','Owner');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Facilities','Facilities');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Project Lead','Project Lead');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Consultant','Consultant');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Apprentice','Apprentice');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Customer POC','Customer POC');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','End User POC','End User POC');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','QA','QA');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('subscribe','role','Documentation','Documentation');

#------------------------------------
## REFDOC: shelfife
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_shelflife','14','14');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_shelflife','30','30');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_shelflife','45','45');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_shelflife','60','60');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_shelflife','90','90');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_shelflife','120','120');

#------------------------------------
## REFDOC: refdoc_type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_type','Confluence Page','Confluence Page');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_type','Wiki Page','Wiki Page');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_type','Internet Link','Internet Link');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('refdoc','refdoc_type','ProdOps Document','ProdOps Document');

#------------------------------------
## RUNBOOK: runbook_class
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','General','General');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Escalation','Escalation');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Casualty','Casualty');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Setup','Setup');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Maintenance','Maintenance');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Operations','Operations');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Admin','Admin');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Policy','Policy');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_class','Data Management','Data Management');

#------------------------------------
## RUNBOOK: runbook_state
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_state','New','New');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_state','Review','Review');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_state','Draft','Draft');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_state','Stale','Stale');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_state','Released','Released');

#------------------------------------
## RUNBOOK: runbook_type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_type','Procedure','Procedure');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_type','Policy','Policy');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('runbook','runbook_type','Escalation','Escalation');

#------------------------------------
## TASK: class
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_class','Design','Design');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_class','Planning','Planning');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_class','Integration','Integration');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_class','Assessment','Assessment');


#------------------------------------
## TASK: state
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_state','New','New');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_state','Assigned','Assigned');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_state','Scheduled','Scheduled');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_state','Hold','Hold');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_state','In Process','In Process');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_state','Complete','Complete');

#------------------------------------
## TASK: priority
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_priority','P1: Critical','P1: Critical');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_priority','P2: High','P2: High');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_priority','P2B: High Blocked','P2: High Blocked');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_priority','P3: Medium','P3: Medium');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_priority','P3B: Medium Blocked','P3: Medium Blocked');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_priority','P4: Routine','P4: Routine');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_priority','P5: Future','P5: Future');

#------------------------------------
## TASK: type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Admin','Admin');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Design','Design');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Resource','Resource');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Production','Production');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Task','Task');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Research','Research');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Deliverable','Deliverable');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Planning Meeting','Planning Meeting');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Review Meeting','Review Meeting');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Negotiation','Negotiation');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Acquisition','Acquisition');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Evaluation/Selection','Evaluation/Selection');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Manage Vendor','Manage Vendor');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_type','Manage Svc Provider','Manage Svc Provider');

#------------------------------------
## TASK: category
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Blocker','Blocker');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Blocked','Blocked');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Research','Research');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Pilot','Pilot');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Design','Design');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Document','Document');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Train','Train');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Deploy','Deploy');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','task_category','Prototype','Prototype');


#------------------------------------
## TASK: notify_when
#------------------------------------

INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','notify_when','Complete','Complete');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','notify_when','Dialog','Dialog');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','notify_when','Status Change','Status Change');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','notify_when','Priority Change','Priority Change');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('task','notify_when','Everything','Everything');

#------------------------------------
## Whocares: notify_when
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('whocares','notify_when','Everything','Everything');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('whocares','notify_when','Creation','Creation');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('whocares','notify_when','State Change','State Chanage');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('whocares','notify_when','Closure','Closure');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('whocares','notify_when','Escalation','Escalation');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('whocares','notify_when','Updates','Updates');

#------------------------------------
## Zzz: zzz_color
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('zzz','zzz_color','Green','Green');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('zzz','zzz_color','Blue','Blue');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('zzz','zzz_color','Orange','Orange');

#------------------------------------
## Zzz: zzz_type
#------------------------------------
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('zzz','zzz_type','Elephant','Elephant');
INSERT INTO menu (table_name, field_name, choice, description)
	VALUES ('zzz','zzz_type','Sea Lion','Sea Lion');


