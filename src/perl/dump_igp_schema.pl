#!/usr/bin/perl 
#============================================================================= 
# WIC project Dump WIC Schema
#-----------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/perl/RCS/dump_igp_schema.pl,v $
# $Id: dump_igp_schema.pl,v 1.2 2013/04/01 14:43:31 jbowes Exp $
# $Date: 2013/04/01 14:43:31 $
#-----------------------------------------------------------------------------
# Jerry Bowes, BCS Solutions, www.bcs-solutions.com, jerbowes@yahoo.com
#-----------------------------------------------------------------------------
# To Edit:
#
# Set project variable, $PROJ to 'igroupportal'
# 	% setenv PROJ igroupportal
# Edit Development copy:
#	% P dbtest		; This does a RCS checkout and opens a vi
#				; session as controlled by igroupportal.scm.rcs
#				; script to which 'P' command is linked.
#				; After edit, script deletes all lines that
#				; contain keyword 'liveoly' in upper case
#				; and updates the executable in the ~/${PROJ}/bin
#				; ( PROJ is environment variable, defaults to hostname)
#				; directory WITH THE .pl EXTENSION. Once
#				; this script is verified, it is released
# 				; to the production version without the
#				; .pl extension
#	% rel -P dbtest		; Strips out all lines with 'devonly' keyword
#				; in upper case, changes all instances of
#				; '${PROJ}dev' (in upper case) to '${PROJ}live' (in
#				; upper case) and replaces the executable in 
#				; the ~/{Machine_Name}/bin  directory without .pl extension
#	% rel -P -b dbtest	; Releases to ~/bin
#=============================================================================
($program = $0) =~ s#^.*/##;		# ID for Trace/debug log
$summary = "Dump WIC Schema"; # Functional identifier for usage
# -------------------
# Defaults, Variables
# -------------------
$LOGDIR="/tmp";				# Debug directory
$logfile="${LOGDIR}/${program}.log";	# Default debug log
#--------------------
#	Include Files
#--------------------
require 'getopts.pl';			# Command line parser for cmd line debug
use DBD::mysql;
#=============================================================================
# Setup our environment.
#=============================================================================
my $dbname = "dbi:mysql:dbname=igroupportaldev";	# Mysql
my $dbuser = "igroupportal";
my $dbpwd = "";
my ($dbh, $rc, $du);
# -------------------------------------
# Parse Command Line and handle options
# -------------------------------------
&parse_command_line;		# Parse command line
&options_etc();			# Process command line options
$DEBUG++ if $opt_d;		# Manual Command line debug enable
$VERBOSE++ if $opt_v;		# Manual Command line verbose enable
open(LOG, "> ${logfile}") || die "Unable to open log file $logfile" if ($DEBUG);
#=============================================================================
#	Begin Program
#=============================================================================
$dbh = &igroupportal_connect; 	# Connect to the data base server 
&blee;
$dbh->disconnect;		# Dis-Connect to the data base server 
my $dur = $end_time - $start_time;
exit(0);
#=============================================================================
# Parse_command_line: Call Getopts
#=============================================================================
sub parse_command_line {
	my $subname = "parse_command_line";
	  # Binary options u,n,h,d,v
	  # e.g. command line option '-n' sets $opt_n = 1
	  # Non Binary options s,o
	  # e.g. command line option '-s foo' sets $opt_s = "foo"
	  &Getopts('unhdvs:');	# command line switches, Colon indicates 
}#Endsub parse_command_line
#=============================================================================
# Options_etc: Exception Handling, Debug Options
# Note: Options must appear in the &Getopts parameter list
#=============================================================================
sub options_etc {
	my $subname = "options_etc";
	  $usage = <<EofUsage;
	  $program - $summary

		USAGE: $program [-hdlnruv] [-s <blah>] 

			-u : 	Display this usage message
	   	-h : 	Help Message
	   	-d : 	Debug Mode
	   	-n : 	NOOP
	   	-v : 	Verbose Mode

EofUsage

	  print STDOUT "Verbose options enabled\n"  if $opt_v;
	  print STDOUT "Debug mode enabled\n"  if $opt_d && $opt_v;
	  print STDOUT "Noop mode enabled\n"  if $opt_n && $opt_v;
	  die "$usage" if $opt_u;
	  (&show_help && die "Exiting....") if $opt_h;
	  warn "$program: ignoring \'-b\' switch\n" if $opt_b && $opt_m &&  $opt_s;
}#Endsub options_etc
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
#=============================================================================
sub blee {
	my $sql = "show tables";
	my $sth = $dbh->prepare("$sql");
	if (!$sth) {
	    die "Error:" . $dbh->errstr . "\n";
	}
	if (!$sth->execute) {
	    die "Error:" . $sth->errstr . "\n";
	}
	while ( @r = $sth->fetchrow_array ) {
		$table = $r[0];
		$sql2 = "describe $table";
		print ":$table\n";
		$sth2 = $dbh->prepare($sql2);
		if (!$sth2) {
	    	die "Error:" . $dbh->errstr . "\n";
		}
		if (!$sth2->execute) {
	    	die "Error:" . $sth2->errstr . "\n";
		}
		#print "(", DBI::dump_results($sth2), "),\n";
		DBI::dump_results($sth2);
	} 
	print  "\n";
}#Endsub blee

#=============================================================================
# Connect to the Database
#=============================================================================
sub igroupportal_connect {
	  unless ( $dbh = DBI->connect($dbname, $dbuser, $dbpwd,
			     { RaiseError => 0, PrintError => 1 } ) ) {
	  	$rc = $DBI::errstr;
	  	die "Unable to connect to the database server: $rc\n";
	  }#Endunless
	  return $dbh;
}#Endsub igroupportal_connect
#=============================================================================
__END__
#=============================================================================
