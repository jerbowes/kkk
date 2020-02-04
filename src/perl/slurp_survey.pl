#!/usr/bin/perl 
#============================================================================= 
# Import 3 column file into a survey
#-----------------------------------------------------------------------------
# $Id: slurp_survey.pl,v 1.15 2013/03/31 21:57:30 jbowes Exp $
#-----------------------------------------------------------------------------
# Jerry Bowes, BCS Solutions, www.bcs-solutions.com, jerbowes@yahoo.com
# Jerry Bowes, MKP-USA IT Development Coordinator
# Jerry Bowes, MKP-USA I-Group Council Vice-Chairman
#=============================================================================
my $program;
my $summary = "Slurp Survey";		# Functional identifier for usage
($program = $0) =~ s#^.*/##;		# ID for Trace/debug log
# -------------------
# Defaults, Variables
# -------------------
my $DEBUG;
my $VERBOSE;
my $TARGDIR = "/tmp";

#--------------------
#	Include Files
#--------------------
require 'getopts.pl';			# Command line parser for cmd line debug
use DBD::mysql;

#--------------------------------------
# Parse Command Line and handle options
#--------------------------------------
&parse_command_line;		# Parse command line
&groom_input();			# Process command line options
$DEBUG++ if $opt_d;		# Manual Command line debug enable
$VERBOSE++ if $opt_v;		# Manual Command line verbose enable
#=============================================================================
#	Begin Program
#=============================================================================
# Default Author
my $authid=45759;
# Default Questions Per Page
my $qpp=1;

$authid = $opt_a if $opt_a;
my $qpp = $opt_q if $opt_q;

$survid = $opt_i;
if (! opt_s ) {
	$opt_s = (100 * $opt_i);
}

my $secid=0;
my $mseq=0;
my $sid = $opt_s;
my $qid = $opt_s;
my $ansid = $opt_s;
my $aid = $opt_s;
my $mid = $opt_s;
my $secid = $opt_s;
if (! opt_a ) {
	$aid = $opt_a;
}

$TARGDIR = $opt_t if $opt_t ;

open(IN, "$opt_f") || die "Unable to open input file $opt_f\n";
open(SEC, "> $TARGDIR/load-surveysection.sql");
open(Q, "> $TARGDIR/load-surveyquestion.sql");
open(A, "> $TARGDIR/load-surveyanswer.sql");
open(M, "> $TARGDIR/load-surveymanifest.sql");
open(SURVEY, "> $TARGDIR/load-survey.sql");

print Q "\n#====================================================================\n";
print Q "# Survey $opt_i, Starting Index $opt_s\n";
print Q "#====================================================================\n";

print A "\n#====================================================================\n";
print A "# Survey $opt_i, Starting Index $opt_s\n";
print A "#====================================================================\n";

print SEC "\n#====================================================================\n";
print SEC "# Survey $opt_i, Starting Index $opt_s\n";
print SEC "#====================================================================\n";

print M "\n#====================================================================\n";
print M "# Survey $opt_i, Starting Index $opt_s\n";
print M "#====================================================================\n";

print SURVEY "\n#====================================================================\n";
print SURVEY "# Survey $opt_i, $opt_T\n";
print SURVEY "#====================================================================\n";
print SURVEY "INSERT INTO survey(survey_id, author_id, survey_name, \n";
print SURVEY " open_date, close_date, questions_per_page, audience, center_id, igroup_members, \n";
print SURVEY " survey_description\n";

print SURVEY ")VALUES(\n";
print SURVEY " '$opt_i','$opt_a','$opt_T',\n";
print SURVEY "'$opt_o','$opt_c','$qpp',\n";
print SURVEY "'$opt_A','$opt_C','$opt_m'\n";
print SURVEY " '$opt_D'\n";
print SURVEY ");\n";

while(<IN>){
	chomp;
	next if /^$/;
	next if /^#/;
	$line = $_;
	print "$line\n";
	($class,$thistype,$what) = split(/\|/,$line);
	if ( $thistype ) {
		if ($class =~ /Q/){
			$type = $thistype;
		}
	}
	$what =~ s/^\d\.\d//g;
	$what =~ s/^\d+\s//g;
	$what =~ s/^\s+//g;
	$what =~ s/\'/\'\'/g;
	if ($class =~ /S/){	# Section
		$secid++;
		$sec_seqid++;
		print SEC "INSERT INTO surveysection( surveysection_id,survey_id, surveysection_name, sequence)\n";
		print SEC "VALUES('$secid','$survid','$what','$sec_seqid');\n";
		#print SEC "INSERT INTO surveysection( survey_id, surveysection_name, sequence)\n";
		#print SEC "VALUES('$survid','$what','$secid');\n";
	}

	if ($class =~ /Q/){	# Question
		$qid++;
		$mid++;
		$mseq++;
		print Q "INSERT INTO surveyquestion (surveyquestion_id,author_id,surveyquestion_type,surveyquestion_instructions,surveyquestion_question)\n";
		print Q "VALUES('$qid','$authid','$type','$type',\n";
		print Q "'$what');\n";
		#
		# Manifest
		#
		print M "INSERT INTO surveymanifest (surveymanifest_id, survey_id, surveysection_id, surveyquestion_id, sequence)\n";
		print M "VALUES('$mid','$survid','$secid','$qid','$mseq');\n";
	}
	
	if ($class =~ /A/){	# Answer
		$aid++;
		$thistype =~ s/\'/\'\'/g;
		print A "INSERT INTO surveyanswer ( surveyquestion_id, answer_type, valid_range, surveyanswer_answer)\n";
		print A "VALUES('$qid','$type','$thistype',\n ";
		print A " '$what');\n";

	}
}
close(IN);
close(SEC);
close(Q);
close(A);
close(M);

#=============================================================================
#--------------------------------------
# Database stuff
#--------------------------------------
my ($dbh, $rc, $du);
$dbh = &igroupportal_connect; 	# Connect to the data base server 
if ( $opt_t ) {
    $id = $$;
    my $sql = "INSERT INTO test (test_id, test_name) VALUES ('$id','Template test')";
    $id = &insert_data($sql);
    print "Inser ID: $id\n";

    $table = 'test';
    &get_table_fields($table);

    $sql = "SELECT test_id, test_name from test";
    print "Get Hash\n";

    my %Foo  = &get_hash($sql);
    &print_array(%Foo);	

    print "Select by Hashref\n";
    &select_by_hashref($sql);
}

$dbh->disconnect;		# Dis-Connect to the data base server 
exit(0);
#=============================================================================
#	Help documentation
#=============================================================================
sub show_help {
	my $subname = "show_help";
$manpage = <<EOH;

	MANPAGE

EOH
print $manpage;
}#End show_help


#=============================================================================
# Select by Hashreff
#=============================================================================
sub select_by_hashref {
	  my $sql  = "@_";
	  print "Hashref: $sql\n" if $DEBUG;
	  if ( ($sth = $dbh->prepare($sql)) && $sth->execute ) {
		  $pr = $sth->fetchrow_hashref;
		  foreach $x (keys %$pr) {
			$out{$x} = $$pr{$x};
		  }
	  }#Endif
	  return(%out);
}#Endsub select_by_hashref
#=============================================================================
# run_sql
#=============================================================================
sub run_sql {
	print "Function run_sql\n";
	  my ( $rc1, $rc2, $rc3, $rc4, $insert_id);
	  my $sql = "@_";

	  if ( ($sth = $dbh->prepare($sql)) &&  $sth->execute ) {
		print "Success, return code\n";
		$insert_id = $dbh->{mysql_insertid};
		$rc1 = $sth->errstr();
		$rc2 = $sth->err();
		$rc3 = $dbh->err();
		$rc3 = $dbh->errstr();
		$sth->finish;
	  }else{
		print "No joy on insert\n";
		$rc1 = $sth->errstr();
		$rc2 = $sth->err();
		$rc3 = $dbh->err();
		$rc4 = $dbh->errstr();
	  }#Endif
	return($insert_id);
}#Endsub run_sql
#=============================================================================
# Get hash array
#=============================================================================
sub get_hash {
	my $sql = "@_";
	my %Out;
	if ( ($sth = $dbh->prepare($sql)) && $sth->execute ) {
		while( ($x, $y) = $sth->fetchrow_array  ) {
			$Out{$x} = $y;
		};
	} else {
		$rc = $dbh->errstr;
		die "Error getting hash array .\nError:$rc\nSQL: $sql\n";
	}
	$sth->finish;
	return(%Out)
}#Endsub get_hash
#=============================================================================
# Connect to the Database
#=============================================================================
sub igroupportal_connect {
	my $dbname;
	my $dbuser;
	my $dbpwd;
	my $WHATHOST = `hostname`;
	chop($WHATHOST);
	# Production mkp1.mkp.org
	if ($WHATHOST =~ /mkp/) {
		$dbname = "dbi:mysql:dbname=caa_master";
		$dbuser = "caa_master";
		$dbpwd = "Not_The_Droids_You're_Looking_4";
	}
	# Development depot.jbowes.net
	if ($WHATHOST =~ /depot/) {
		if ( $opt_t ) { # Dev/Test DB
			$dbname = "dbi:mysql:dbname=igroupportaldev";	
			$dbuser = "igroupportal";
			$dbpwd = "";
		}else{
			$dbname = "dbi:mysql:dbname=igroupportallive";
			$dbuser = "igroupportal";
			$dbpwd = "";
		}
	}
	unless ( $dbh = DBI->connect($dbname, $dbuser, $dbpwd,
		{ RaiseError => 0, PrintError => 1 } ) ) {
		$rc = $DBI::errstr;
	  	die "Unable to connect to the database server: $rc\n";
	}#Endunless
	return $dbh;
}#Endsub igroupportal_connect

#=============================================================================
# Parse_command_line: Call Getopts
#=============================================================================
sub parse_command_line {
	&Getopts('uhdmvs:f:a:i:t:C:T:q:c:o:A:');
}#Endsub parse_command_line
#=============================================================================
# Groom input: Exception Handling, Debug Options
# Note: Options must appear in the &Getopts parameter list
#=============================================================================
sub groom_input {
	$usage = <<EofUsage;
	$program - $summary

	USAGE: $program [-hduqv ] -f <inputfile>

	-u : 	Display this usage message and exit
	-h : 	Display help and exit
	-d : 	Debug mode enable
	-v : 	Verbose mode enable
	-m : 	Restrict only to men currently in an I-Group
	-o <x>:	Open data, YYYY-MM-DD
	-c <x>:	Close date, YYYY-MM-DD
	-C <x>:	Center ID
	-f <x>:	Input file
	-a <x>:	Author ID
	-s <x>:	Start ID for Survey Questions and parts
	-i <x>:	Survey ID
	-q <x>:	Questions per page
	-t <x>:	Target directory (default: /tmp)
	-T <x>: Title of Survey
	-A <x>: Audience of Survey

EofUsage

	#-------------------------------------------------------
	# Usage or help documentation only and exit
	#-------------------------------------------------------
	#
	die "$usage" if $opt_u;
	if ($opt_h ) {
		system("pod2text $0");
		exit;
	}
	if (! $opt_i ) {
		print "No survey ID provided as -i option\n";
		die "$usage";
	}
	if (! $opt_s ) {
		print "No question start index provided as -s option\n";
		$x = ( 100 * $opt_i );
		print "Defaulting to $x \n";
	}
	if (! $opt_f ) {
		print "No input file provided as -f option\n";
		die "$usage";
	}
	if (! $opt_T ) {
		print "No title of survey given as -T option\n";
		die "$usage";
	}
	if (! $opt_A ) {
		print "No audience of survey given as -A option\n";
		die "$usage";
	}

	if (! $opt_c ) {
		print "No close date of survey given as -c option\n";
		die "$usage";
	}

	if (! $opt_o ) {
		print "No open date of survey given as -o option\n";
		die "$usage";
	}
	if (! $opt_a ) {
		print "No author warrior_id given as -a option\n";
		die "$usage";
	}


	#-------------------------------------------------------
	# Host Environment specific notification
	#-------------------------------------------------------
	#
	my $THISHOST = `hostname`;
	if ($THISHOST =~ /mkp/) {
		print STDOUT "Using LIVE PRODUCTION CAA DATABASE\n"  if  $opt_v;
        system("sleep 4");  # Oh !@#$!$! response delay
	}
	if ($THISHOST =~ /depot/) {
		if ( $opt_t ) {
			print STDOUT "Using I-Group Portal Development Database: igroupportaldev\n"  if  $opt_v;
		}else{
			print STDOUT "Using I-Group Portal Staging Database: igroupportallive\n"  if  $opt_v;
		}
	}

	#
	#-------------------------------------------------------
	# Courtesy information
	#-------------------------------------------------------
	#
	print STDOUT "Verbose options enabled\n"  if ($opt_v);
	print STDOUT "Debug mode enabled\n"  if ($opt_d );

}#Endsub groom_input
#=============================================================================
__END__
#=============================================================================
# Begin perlpod style man page text
#=============================================================================

=head1 NAME

TEMPLATE   Does something interesting for CAA database and I-Group Portal

=head1 SYNOPSIS

TEMPLATE [-huvdq -c <class> -l <login>  -s <shell> ]

=head1 DESCRIPTION

The slurp_survey.pl script reads a text csv file exported from the
template spreadsheet given to each customer to create their survey.
It then correlates the questions, questions types,  and answer choices 
into the several sql files to be imported into the survey utility database.


It does the following:

=over 8

=item * Slurps textfile with question, type, answer

=item * Generates sql load files or survey components


=back

See source

=head1 OPTIONS

=over

=item 
B<-h>
Displays help in text format.

=item 
B<-u>
Displays synopsys usage and exits.

=back


=head1 BUGS AND CORNER CASES


=head1 AUTHOR

B<Jerry Bowes>

=cut
