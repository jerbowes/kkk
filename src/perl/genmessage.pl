#!/usr/bin/perl
#============================================================================= 
# Generat Message Help 
#-----------------------------------------------------------------------------
# $Source: /home/jbowes/kkk/src/perl/RCS/genmessage.pl,v $
# $Id: genmessage.pl,v 1.1 2015/08/14 04:44:44 jbowes Exp $
#=============================================================================
($program = $0) =~ s#^.*/##;		# ID for Trace/debug log
$summary = "Generate Message";		# Functional identifier for usage
# -------------------
#	Include Files
#--------------------
use Getopt::Std;

# -------------------------------------
# Parse Command Line and handle options
# -------------------------------------
&parse_command_line;		# Parse command line
&groom_input();			# Process command line options

#=============================================================================
#	Begin Program
#=============================================================================

@lang = ( 'US_English','UK_English','CAN_French','EU_French','German');

%Map = (
	'igprocess',	'I-Group Process',
	'igvisitor',	'I-Group Visitor'
);

%Idx = (
	'surveyresult',			'505'
);

# Slurp input
open(IN, "schema.raw");
while(<IN>){
	chomp;
	$line = $_;
	push(@all, $line);
}
close(IN);

foreach $lang (@lang) {
  print "##====================================================\n";
  print "### Language: $lang\n";
  print "##====================================================\n";
  $cnt=100;

  foreach $line (@all) {
	next if $line =~ /^\d/;
	next if $line =~ /Duration:/;
	next if $line =~ /^$/;
	if ($line =~ /^:/) {
		$subcnt=0;
		$cnt++;
		$table = $line;
		$table =~ s/://g;
		print "##----------------------------------------------------\n";
		print "## Table $table in $lang ( $cnt )\n";
		print "##----------------------------------------------------\n";

        if ($Idx{$table} ) {
		    $bigcnt = (100 * $Idx{$table}) + $subcnt;
        }else{
		    $bigcnt = (100 * $cnt) + $subcnt;
        }

		print "INSERT INTO message (\n";
  		print "  meta_id, language, table_name, field_name, message_type,\n short_message, long_message\n";
  		print "  )VALUES(\n";
		if ( $Map{$table} ) {
  			print " '$bigcnt', '$lang', '$table', '$table', 'Table Label',\n";
  			print "'$Map{$table}',\n";
  			print "'$Map{$table}'\n";
		}else{
			undef $msg;
			@words = split(/_/, $table);
			foreach $w (@words) {
				$phoneme = "\u\L$w";
				$msg .= $phoneme . " ";
			}
			chop($msg);
  			print " '$bigcnt', '$lang', '$table', '$table', 'Table Label', '$msg', '$msg'\n";
		}
  		print ");\n";
	}else{
		$subcnt++;
		($field,$junk) = split(/\,/, $line,2);
		$nfield = $field;
		$nfield =~ s/\'//g;
		undef $msg;
		@words = split(/_/, $nfield);
		foreach $w (@words) {
			$phoneme = "\u\L$w";
			#print "#[$nfield] [$w] [$phoneme]\n";
			$msg .= $phoneme . " ";
		}
		chop($msg);

        if ($Idx{$table} ) {
		    $bigcnt = (100 * $Idx{$table}) + $subcnt;
        }else{
		    $bigcnt = (100 * $cnt) + $subcnt;
        }
		print "INSERT INTO message (\n";
  		print "  meta_id, language, table_name, field_name, message_type,\n short_message, long_message\n";
  		print "  )VALUES(\n";
  		print " '$bigcnt', '$lang', '$table', $field, 'Field Label',\n '$msg', '$msg'\n";
  		print ");\n";
	}
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
sub groom_input {
	my $subname = "groom_input";
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
}#Endsub groom_input
#=============================================================================
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
#-----------------------------------------------------------------------------
