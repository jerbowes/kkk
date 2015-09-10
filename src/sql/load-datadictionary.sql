
#-----------------------------------------------------
## kkkdev table help
#-----------------------------------------------------

INSERT INTO datadictionary (database_name, table_name, field_name, 
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','Overview',
 'Table help',
 'Table help'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','help_id', 'int(11) unsigned', 'NO', 'PRI', '', 'auto_increment',
 'help_id',
 'help_id'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','meta_id', 'int(11) unsigned', 'NO', '', '', '',
 'meta_id',
 'meta_id'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','contact_id', 'int(11) unsigned', 'NO', '', '', '',
 'contact_id',
 'contact_id'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','language', 'varchar(30)', 'NO', '', 'US_English', '',
 'language',
 'language'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','topic', 'varchar(30)', 'YES', '', '', '',
 'topic',
 'topic'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','subtopic', 'varchar(30)', 'YES', '', '', '',
 'subtopic',
 'subtopic'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','application', 'varchar(30)', 'YES', '', '', '',
 'application',
 'application'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','context', 'varchar(30)', 'YES', '', '', '',
 'context',
 'context'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','summary', 'varchar(60)', 'YES', '', '', '',
 'summary',
 'summary'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','help_type', 'varchar(30)', 'YES', '', 'Explanation', '',
 'help_type',
 'help_type'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','sequence', 'smallint(6)', 'YES', '', '100', '',
 'sequence',
 'sequence'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','level', 'smallint(6)', 'YES', '', '10', '',
 'level',
 'level'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','module', 'varchar(30)', 'YES', '', '', '',
 'module',
 'module'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','table_name', 'varchar(30)', 'YES', '', '', '',
 'table_name',
 'table_name'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','field_name', 'varchar(30)', 'YES', '', '', '',
 'field_name',
 'field_name'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','keywords', 'varchar(200)', 'YES', '', '', '',
 'keywords',
 'keywords'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','short_help', 'text', 'YES', '', '', '',
 'short_help',
 'short_help'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','long_help', 'text', 'YES', '', '', '',
 'long_help',
 'long_help'
);

INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,
 summary,
 explanation
 ) VALUES (
 'kkkdev','help','last_modified', 'timestamp', 'NO', '', 'CURRENT_TIMESTAMP', 'on update CURRENT_TIMESTAMP',
 'last_modified',
 'last_modified'
);

