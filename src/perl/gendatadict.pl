#!/usr/bin/perl
# Generate raw data dictionary schema
#| Field  | Type  | Null | Key | Default  | Extra  |
$DBNAME='kkkdev';
open(IN, "schema.raw");
while(<IN>){
	chomp;
	next if /^\d/;
	next if /Duration:/;
	next if /^$/;
	$line = $_;
	if ($line =~ /^:/) {
		$table = $line;
		$table =~ s/://g;
		print "#-----------------------------------------------------\n";
		print "## ${DBNAME} table $table\n";
		print "#-----------------------------------------------------\n\n";
		print "INSERT INTO datadictionary (database_name, table_name, field_name, \n";
		print " summary,\n";
		print " explanation\n";
		print " ) VALUES (\n";
		print " '${DBNAME}','$table','Overview',\n";
		print " 'Table $table',\n";
		print " 'Table $table'\n";
		print ");\n\n";

	}else{
		$line =~ s/undef/\'\'/g;
		@terms = split(/\,/, $line);
		$field = @terms[0];

		print "INSERT INTO datadictionary (database_name, table_name, field_name, data_type, allow_null, key_type, default_value, extra_info,\n";
		print " summary,\n";
		print " explanation\n";
		print " ) VALUES (\n";
		print " '${DBNAME}','$table',$line,\n";
		print " $field,\n";
		print " $field\n";
		print ");\n\n";
	}
}
#------------------------------------------------------------------------
# Build datadictionary
#------------------------------------------------------------------------
#CREATE TABLE datadictionary (
	#datadictionary_id	integer unsigned primary key NOT NULL auto_increment,
	#table_name			varchar(30),
	#field_name			varchar(30),
	#data_type			varchar(80),
	#extra_info			varchar(80),
	#generation			varchar(15) default 'CAA',
	#allow_null			VARCHAR(3),
	#key_type			varchar(10),
	#foreign_keys			varchar(255),
	#summary				varchar(80),
	#notes				varchar(80),
	#explanation			text,
	#default_value 		varchar(10) 
#) ENGINE=MyISAM;

