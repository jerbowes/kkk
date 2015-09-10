#!/usr/bin/perl 
#============================================================================= 
# Generate basic help insert sql
#-----------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/perl/RCS/genhelp.pl,v $
# $Id: genhelp.pl,v 1.1 2015/08/14 04:44:44 jbowes Exp $
#-----------------------------------------------------------------------------
# Jerry Bowes
#=============================================================================
($program = $0) =~ s#^.*/##;
$summary = "Generate Help SQL";
# -------------------
# Defaults, Variables
# -------------------
$DEBUG++;				# DEVONLY, Enables print to $LOG
$TRACE++;				# DEVONLY, Print Subroutine Flow to $LOG
$LOGDIR="/tmp";				# Debug directory
$logfile="${LOGDIR}/${program}.log";	# Default debug log
#--------------------
#	Include Files
#--------------------
use Getopt::Std;
# -------------------------------------
# Parse Command Line and handle options
# -------------------------------------
&parse_command_line;		# Parse command line
&options_etc();			# Process command line options
#=============================================================================
#	Begin Program
#=============================================================================
$keycount = 100;
open(IN, "schema.raw") || die "Unable to read schema.raw\n";
while(<IN>){
	chomp;
	$line = $_;
	if ($line =~ /^:/) {
		$line =~ s/^://g;
		$key = $line;
		$KeyCnt{$key} = $keycount;
		$keycount += 100;
	}else{
		if ( $line =~ /^'/ ){
			($term, $rest) = split(/\,/, $line);
			$term =~ s/\'//g;
			$FieldList{$key} .= $term . '|';
		}
	}
}

foreach $table (keys %FieldList){
	chop($FieldList{$table});
	@fields = split(/\|/, $FieldList{$table});
	push(@fields, 'aOverview');
	$cnt = $KeyCnt{$table};
	$app = $table;

	foreach $field (sort @fields) {
    	print "# Table: $table, Field: $field\n";
    	print "INSERT INTO help ( meta_id, contact_id, language,\n";
    	print " topic, subtopic, \n";
    	print " application, context, help_type,\n";
    	print " sequence, level, module, table_name, field_name,\n";
    	print " keywords, summary, short_help, long_help\n";
    	print ")VALUES(\n";
    	print " '$cnt', '45759', 'US_English', \n";
    		print " '$app', 'User Forms',\n";
    	print " '$app', 'Form Entry', 'Explanation', \n";
    	print " '', '', '$module', '$table', '$field',\n";
    	print " '$field keywords',\n";
    	print " '$field summary',\n";
    	print " '$field short help',\n";
    	print " '$field long help'\n";
    	print ");\n\n";
    	$cnt++;
	}
}

#=============================================================================
# Parse_command_line: Call Getopts
#=============================================================================
sub parse_command_line {
	my $subname = "parse_command_line";
    # Binary options u,n,h,d,v
    # e.g. command line option '-n' sets $opt_n = 1
    # Non Binary options s,o
    # e.g. command line option '-s foo' sets $opt_s = "foo"
    getopts('unhdvs:');	# command line switches, Colon indicates 
}#Endsub parse_command_line

#=============================================================================
# Options_etc: Exception Handling, Debug Options
# Note: Options must appear in the &Getopts parameter list
#=============================================================================
sub options_etc {
	my $subname = "options_etc";
    $usage = <<EofUsage;
    $program - $summary

  	USAGE: $program [-hdluv]
  		-u : 	Display this usage message
     	-h : 	Help Message
EofUsage

    print STDOUT "Verbose options enabled\n"  if $opt_v;
    die "$usage" if $opt_u;
    (&show_help && die "Exiting....") if $opt_h;
}#Endsub options_etc
#=============================================================================
#	Help documentation
#=============================================================================
sub show_help {
$manpage = <<EOH;

	MANPAGE

EOH
print $manpage;
}#End show_help
#-----------------------------------------------------------------------------
__END__
