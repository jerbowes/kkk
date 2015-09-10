#!/usr/bin/perl 
#============================================================================= 
# Generate Orgchart sql from organizations.txt text file
#-----------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/perl/RCS/genorg.pl,v $
# $Id: genorg.pl,v 1.3 2013/05/27 14:08:06 jbowes Exp $
# $Date: 2013/05/27 14:08:06 $
#-----------------------------------------------------------------------------
# Jerry Bowes, BCS Solutions, www.bcs-solutions.com, jerbowes@yahoo.com
#-----------------------------------------------------------------------------
# To Edit:
#
# Set project variable, $PROJ to 'igroupportal'
# 	% setenv PROJ wic
#
# Edit Development copy:
#	% P genorg		; This does a RCS checkout and opens a vi
#				; session as controlled by master.scm.rcs
#				; script to which 'P' command is linked.
#				; After edit, script deletes all lines that
#				; contain keyword 'liveoly' in upper case
#				; and updates the executable in the ~/${PROJ}/bin
#				; ( PROJ is environment variable, defaults to hostname)
#				; directory WITH THE .pl EXTENSION. Once
#				; this script is verified, it is released
# 				; to the production version without the
#				; .pl extension
#	% rel -P genorg	; Strips out all lines with 'devonly' keyword
#				; in upper case, changes all instances of
#				; '${PROJ}dev' (in upper case) to '${PROJ}live' (in
#				; upper case) and replaces the executable in 
#				; the ~/{Machine_Name}/bin  directory without .pl extension
#	% rel -P -b genorg	; Releases to ~/bin
#=============================================================================
($program = $0) =~ s#^.*/##;		# ID for Trace/debug log
$summary = "Generate Orgchart Organization sql";		# Functional identifier for usage
#--------------------
#	Include Files
#--------------------
require 'getopts.pl';			# Command line parser for cmd line debug
# -------------------------------------
# Parse Command Line and handle options
# -------------------------------------
&parse_command_line;		# Parse command line
&options_etc();			# Process command line options
$DEBUG++ if $opt_d;		# Manual Command line debug enable


%Cname = (
	'07',		'Arizona',
	'23',		'Australia',
	'03',		'Canada West',
	'10',		'Chicago',
	'19',		'Colorado',
	'40',		'North Texas',
	'25',		'France',
	'29',		'Georgia',
	'24',		'Deutschland',
	'18',		'Carolinas',
	'17',		'D.C.',
	'09',		'Houston',
	'21',		'Indiana',
	'43',		'Kansas City',
	'30',		'Kentucky',
	'04',		'Los Angeles',
	'28',		'Memphis',
	'32',		'Minnesota',
	'12',		'Canada East',
	'13',		'New England',
	'38',		'New Jersey',
	'06',		'New Mexico',
	'42',		'New Orleans',
	'14',		'NY Metro',
	'35',		'New Zealand',
	'01',		'N. California',
	'02',		'Northwest',
	'15',		'Philadelphia',
	'05',		'San Diego',
	'20',		'Sioux City',
	'22',		'South Africa',
	'27',		'St Louis',
	'11',		'U.K.',
	'16',		'Upstate NY',
	'31',		'Windsor-Detroit',
	'33',		'Wisconsin',
	'37',		'CAA Portal',
	'44',		'Santa Barbara',
	'45',		'Intermountain',
	'46',		'Florida',
	'47',		'Hawaii',
	'48',		'Alberta',
	'49',		'Calgary'
    );
%Abr = (
	'07',		'AZ',
	'23',		'AUS',
	'03',		'CW',
	'10',		'CHI',
	'19',		'CO',
	'40',		'NT',
	'25',		'EF',
	'29',		'GA',
	'24',		'DE',
	'18',		'GCC',
	'17',		'DC',
	'09',		'HN',
	'21',		'IND',
	'43',		'KC',
	'30',		'KY',
	'04',		'LA',
	'28',		'Mem',
	'32',		'MN',
	'12',		'CE',
	'13',		'NE',
	'38',		'NJ',
	'06',		'NM',
	'42',		'NO',
	'14',		'NYC',
	'35',		'NZ',
	'01',		'NCal',
	'02',		'NW',
	'15',		'Phi',
	'05',		'SD',
	'20',		'SXC',
	'22',		'SA',
	'27',		'StL',
	'11',		'UK',
	'16',		'UNY',
	'31',		'WD',
	'33',		'Wis',
	'37',		'MKPI',
	'44',		'SB',
	'45',		'IM',
	'46',		'FL',
	'47',		'HI',
	'48',		'Alb',
	'48',		'Calg',
    );

%AllTier = (
    #'1',    'MKPF',
    '2',    'MKPI',
    '3',    'GeoRegion',
    '4',    'Center',
    '5',    'I-Group Region'
    #'6',    'I-Group'
);

#=============================================================================
#	Begin Program
#=============================================================================
open(OUT, "> /tmp/centerorg.txt") || die "Unable to write to /tmp/centerorg.txt\n";
foreach $id (sort bynumber keys %Cname) {
    $abr = $Abr{$id};
    $sid = $id + 0;
    print OUT "|65${id}00|Center|Center|650000|$Cname{$id} Center Board of Directors|${abr}-CBOD|${sid}|\n";
    print OUT "|65${id}01|Center|Center|65${id}00|$Cname{$id} Center Council|${abr}-CDC|${sid}|\n";
    print OUT "|65${id}02|Center|Center|65${id}00|$Cname{$id} Center Leader Body Council|${abr}-CLBC|${sid}|\n";

    print OUT "|65${id}10|Center|Center|65${id}00|$Cname{$id} I-Group Council|${abr}-IGC|${sid}|\n";

    print OUT "|65${id}11|Center|Center|65${id}10|$Cname{$id} I-Group Training Council|${abr}-IGTC|${sid}|\n";
    print OUT "|65${id}12|Center|Center|65${id}11|$Cname{$id} I-Group Training Team|${abr}-IGTT|${sid}|\n";

    print OUT "|65${id}13|Center|Center|65${id}13|$Cname{$id} I-Group Growth and Health Council|${abr}-IGGHC|${sid}|\n";
    print OUT "|65${id}14|Center|Center|65${id}14|$Cname{$id} I-Group Enrollment Team|${abr}-IGEC|${sid}|\n";
    print OUT "|65${id}15|Center|Center|65${id}15|$Cname{$id} I-Group Growth and Health Team|${abr}-IGGHT|${sid}|\n";
    print OUT "|65${id}16|Center|Center|65${id}16|$Cname{$id} I-Group Council Steering Committee|${abr}-IGCSC|${sid}|\n";

    print OUT "|65${id}20|Center|Center|65${id}00|$Cname{$id} NWTA Council|${abr}-NWTAC|${sid}|\n";
    print OUT "|65${id}21|Center|Center|65${id}20|$Cname{$id} NWTA Leadership Training Council|${abr}-NWTALTC|${sid}|\n";
    print OUT "|65${id}22|Center|Center|65${id}20|$Cname{$id} NWTA Enrollment Council|${abr}-NWTAEC|${sid}|\n";

    print OUT "|65${id}30|Center|Center|65${id}00|$Cname{$id} MCC Council|${abr}-MCC|${sid}|\n";

    print OUT "|65${id}40|Center|Center|65${id}00|$Cname{$id} Elder Body Council|${abr}-EBC|${sid}|\n";

    print OUT "|65${id}50|Center|Center|65${id}00|$Cname{$id} LKS Council|${abr}-LKSC|${sid}|\n";

    print OUT "|65${id}90|Center|Center|65${id}00|$Cname{$id} Open Circle Council|${abr}-OCC|${sid}|\n";
    print OUT "\n";
}    
close(OUT);

#
# Orgroles
#
open(OR, "/home/jbowes/$ENV{PROJ}/src/textfiles/orgroles.txt") || die "Unable to open orgroles.txt\n";
while(<OR>){
    chomp;
    next if /^#/;
    next if /^$/;
    ($role,$abr) = split(/\|/, $_);
    if ( $AllAbbr{$abr} ) {
        print "OOPS: Duplicate abbreviation: $abbr\n";
    }
    $AllAbbr{$abr}++;
    $RoleAbbr{$role} = $abr;
}
close(OR);
foreach $x (keys %RoleAbbr) {
	print "$x : $RoleAbbr{$x}\n";
}
#
#
# Read Org, Write load-org and load-orgrole
#
my $FILE = "/home/jbowes/$ENV{PROJ}/src/textfiles/org.txt";
open(IN, "$FILE") || die "No open $FILE\n";
open(OSQL, ">/tmp/load-org.sql") || die "Unable to open /tmp/load-org.sql\n";
open(ORSQL, "> /tmp/load-orgrole.sql" ) || die "Unable to write to /tmp/load-orgrole.sql\n";
$oid=5;
$ooid=100;
while(<IN>){
    chomp;
    next if /^#/;
    next if /^$/;
    $ooid +=10;	# Block of organizations per tier (up to 9 tiers)

    $rid = $oid = $ooid;
    ($oname,$abbr) = split(/\|/, $_);
    print OSQL "#------------------------------------------------\n";
    print OSQL "# $oname ($abbr)\n";
    print OSQL "#------------------------------------------------\n";

        #$tier = 'MKPF';
        #$dabbr = 'F';
        #$rid = $oid;
        #$oid++;

        # Mankind Project Foundation


		#
        # Global or International Domain
		#
        $tier = 'MKPI';
        $dabbr = 'G';
        $rid = $oid;
        $oid++;

        print OSQL "INSERT INTO org(\n";
        print OSQL " org_id, reports_to_org, org_tier, org_shortname,\n";
        print OSQL " org_longname, org_name, org_abbreviation, org_description\n";
        print OSQL ")VALUES(\n";
        print OSQL " '$oid', '$rid', '$tier', '${dabbr}-${abbr}',\n";
        print OSQL " '$tier $oname', '$oname', '$abbr',\n";

        print OSQL "'<H3>Mission</H3>\n";
        print OSQL "<H3>Goals</H3>\n";
        	print OSQL "<H4>General</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
			print OSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
			print OSQL "<LI>Mentor men in this area.</LI>\n";
        	print OSQL "</UL>\n";
        	print OSQL "<H4>Measurable</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Increase enrollment by 20%</LI>\n";
			print OSQL "<LI>Lower attrition by 10%</LI>\n";
        	print OSQL "</UL>\n";

        print OSQL "<H3>Responsibilities</H3>\n";
        print OSQL "<H3>Accoutability</H3>\n";
        	print OSQL "<H4>MKP Chain of Accountability</H4>\n";
        	print OSQL "<H4>Communication, Meetings, and Events</H4>\n";
        	print OSQL "<H4>Contributing Group Support</H4>\n";
        print OSQL "<H3>Deliverables</H3>\n";
        	print OSQL "<H4>Schedule</H4>\n";
			print OSQL "<CENTER>\n";
			print OSQL "<TABLE BORDER>\n";
			print OSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Nov 1</TD>\n";
			print OSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
			print OSQL "<TD class=tds>Kahuna</TD>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Monthly Week 1</TD>\n";
			print OSQL "<TD class=tds>Status/progress report</TD>\n";
			print OSQL "<TD class=tds>Executive Council</TD>\n";
			print OSQL "</TABLE>\n";
			print OSQL "</CENTER>\n";
        	print OSQL "<H4>Documents and Reports</H4>\n";
        	print OSQL "<H4>Announcements and Events</H4>\n";
        print OSQL "<H3>Success Criteria</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Meet and announce success on meeting your goals.</LI>\n";
			print OSQL "</UL>\n";
        print OSQL "<H3>Operational Guidance</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Maximize publishing policies, plans, and decisions on the web and sending emails pointing to it.</LI>\n";
			print OSQL "<LI>Review all minutes of last month''s meetings by-monthly.</LI>\n";
			print OSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
			print OSQL "<LI>Enlist/delegate support for your deliverables early.</LI>\n";
			print OSQL "<LI>Survey your constiuents at least annually.</LI>\n";
			print OSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
			print OSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
			print OSQL "</UL>\n";
        print OSQL "<H3>References</H3>\n";

        print OSQL "'\n);\n\n";

		$AllOrg{$oid} = $tier . ' ' . $oname;

		$id = (100 * $oid);
		foreach $name (keys %RoleAbbr) {
    		$rrid = $id;	# Recursive, reports to self
        	print ORSQL "INSERT INTO orgrole ( orgrole_id, org_id, orgrole_name,  orgrole_term, orgrole_abbreviation, \n";
        	print ORSQL " reports_to_orgrole, orgrole_longname, orgrole_description)\n";
        	print ORSQL "VALUES(\n";
        	print ORSQL " '$id','$oid','$name','24','$RoleAbbr{$name}',\n";
        	print ORSQL " '$rrid','$AllOrg{$oid} $name',\n";

        	print ORSQL "'<H3>Mission</H3>\n";
        	print ORSQL "<H3>Goals</H3>\n";
        		print ORSQL "<H4>General</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
				print ORSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
				print ORSQL "<LI>Mentor men in this area.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H4>Measurable</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Increase goodness by 20% per year.</LI>\n";
				print ORSQL "<LI>Reduce badness by 10% per year.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H3>Responsibilities</H3>\n";
        	print ORSQL "<H3>Accoutability</H3>\n";
        		print ORSQL "<H4>MKP Chain of Accountability</H4>\n";
        		print ORSQL "<H4>Communication, Meetings, and Events</H4>\n";
        		print ORSQL "<H4>Contributing Group Support</H4>\n";
        	print ORSQL "<H3>Deliverables</H3>\n";
        		print ORSQL "<H4>Schedule</H4>\n";
				print ORSQL "<CENTER>\n";
				print ORSQL "<TABLE BORDER>\n";
				print ORSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
				print ORSQL "<TR>\n";
				print ORSQL "<TD class=tds>Nov 1</TD>\n";
				print ORSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
				print ORSQL "<TD class=tds>Kahuna</TD>\n";
				print ORSQL "</TABLE>\n";
				print ORSQL "</CENTER>\n";
	
        		print ORSQL "<H4>Documents and Reports</H4>\n";
        		print ORSQL "<H4>Announcements and Events</H4>\n";
        	print ORSQL "<H3>Success Criteria</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Everything you know to do you job is availble on an MKP managed web accessible document.</LI>\n";
				print ORSQL "<LI>How to contact you is easily locatable via an MKP website.</LI>\n";
				print ORSQL "<LI>You hold your contributors accountable for their deliverables to you.</LI>\n";
				print ORSQL "<LI>Your WIC turnover guidance and references are accurate.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>Operational Guidance</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
				print ORSQL "<LI>Get full briefing from your predecessor.</LI>\n";
				print ORSQL "<LI>Survey your constiuents at least annually.</LI>\n";
				print ORSQL "<LI>Publish on a website, send email with pointers. Do not distribute reference material in emails.</LI>\n";
				print ORSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
				print ORSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
				print ORSQL "<LI>Discuss expectations with CD and write them down.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>References</H3>\n";
        	print ORSQL "<H3>Turnover</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Review and update operating guide.</LI>\n";
				print ORSQL "<LI>Submit operating guide change recommendations to region admin director.</LI>\n";
				print ORSQL "<LI>Hold reference overview meeting with successor 2 months prior to changeover.</LI>\n";
				print ORSQL "<LI>Update WIC job description, especially operational guidance and references section.</LI>\n";
				print ORSQL "<LI>Walk through updating job description in WIC with successor.</LI>\n";
				print ORSQL "</UL>\n";
				print ORSQL "'\n";
        		print ORSQL ");\n\n";

			$AllOrg{$oid} = $tier . ' ' . $oname;
        	$id++;
   		}

		#
        # (Geo) Region 
		#

        $tier = 'GeoRegion';
        $dabbr = 'R';
        $rid = $oid;
        $oid++;

        print OSQL "INSERT INTO org(\n";
        print OSQL " org_id, reports_to_org, org_tier, org_shortname,\n";
        print OSQL " org_longname, org_name, org_abbreviation, org_description\n";
        print OSQL ")VALUES(\n";
        print OSQL " '$oid', '$rid', '$tier', '${dabbr}-$abbr',\n";
        print OSQL " '$tier $oname', '$oname','${abbr}',\n";
        print OSQL "'<H3>Mission</H3>\n";
        print OSQL "<H3>Goals</H3>\n";
        	print OSQL "<H4>General</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
			print OSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
			print OSQL "<LI>Mentor men in this area.</LI>\n";
        	print OSQL "</UL>\n";
        	print OSQL "<H4>Measurable</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Increase enrollment by 20%</LI>\n";
			print OSQL "<LI>Lower attrition by 10%</LI>\n";
        	print OSQL "</UL>\n";

        print OSQL "<H3>Responsibilities</H3>\n";
        print OSQL "<H3>Accoutability</H3>\n";
        	print OSQL "<H4>MKP Chain of Accountability</H4>\n";
        	print OSQL "<H4>Communication, Meetings, and Events</H4>\n";
        	print OSQL "<H4>Contributing Group Support</H4>\n";
        print OSQL "<H3>Deliverables</H3>\n";
        	print OSQL "<H4>Schedule</H4>\n";
			print OSQL "<CENTER>\n";
			print OSQL "<TABLE BORDER>\n";
			print OSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Nov 1</TD>\n";
			print OSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
			print OSQL "<TD class=tds>Kahuna</TD>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Monthly Week 1</TD>\n";
			print OSQL "<TD class=tds>Status/progress report</TD>\n";
			print OSQL "<TD class=tds>Executive Council</TD>\n";
			print OSQL "</TABLE>\n";
			print OSQL "</CENTER>\n";
        	print OSQL "<H4>Documents and Reports</H4>\n";
        	print OSQL "<H4>Announcements and Events</H4>\n";
        print OSQL "<H3>Success Criteria</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Meet and announce success on meeting your goals.</LI>\n";
        print OSQL "<H3>Operational Guidance</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
			print OSQL "<LI>Enlist/delegate support for your deliverables early.</LI>\n";
			print OSQL "<LI>Survey your constiuents at least annually.</LI>\n";
			print OSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
			print OSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
			print OSQL "</UL>\n";
        print OSQL "<H3>References</H3>\n";

        print OSQL "'\n);\n\n";

		$AllOrg{$oid} = $tier . ' ' . $oname;

		$id = (100 * $oid);
		foreach $name (keys %RoleAbbr) {
    		$rrid = ($id - 100);	# Reports to MKPI
        	print ORSQL "INSERT INTO orgrole ( orgrole_id, org_id, orgrole_name,  orgrole_term, orgrole_abbreviation, \n";
        	print ORSQL " reports_to_orgrole, orgrole_longname, orgrole_description)\n";
        	print ORSQL "VALUES(\n";
        	print ORSQL " '$id','$oid','$name','24','$RoleAbbr{$name}',\n";
        	print ORSQL " '$rrid','$AllOrg{$oid} $name',\n";

        	print ORSQL "'<H3>Mission</H3>\n";
        	print ORSQL "<H3>Goals</H3>\n";
        		print ORSQL "<H4>General</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
				print ORSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
				print ORSQL "<LI>Mentor men in this area.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H4>Measurable</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Increase goodness by 20% per year.</LI>\n";
				print ORSQL "<LI>Reduce badness by 10% per year.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H3>Responsibilities</H3>\n";
        	print ORSQL "<H3>Accoutability</H3>\n";
        		print ORSQL "<H4>MKP Chain of Accountability</H4>\n";
        		print ORSQL "<H4>Communication, Meetings, and Events</H4>\n";
        		print ORSQL "<H4>Contributing Group Support</H4>\n";
        	print ORSQL "<H3>Deliverables</H3>\n";
        		print ORSQL "<H4>Schedule</H4>\n";
				print ORSQL "<CENTER>\n";
				print ORSQL "<TABLE BORDER>\n";
				print ORSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
				print ORSQL "<TR>\n";
				print ORSQL "<TD class=tds>Nov 1</TD>\n";
				print ORSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
				print ORSQL "<TD class=tds>Kahuna</TD>\n";
				print ORSQL "</TABLE>\n";
				print ORSQL "</CENTER>\n";
	
        		print ORSQL "<H4>Documents and Reports</H4>\n";
        		print ORSQL "<H4>Announcements and Events</H4>\n";
        	print ORSQL "<H3>Success Criteria</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Everything you know to do you job is availble on an MKP managed web accessible document.</LI>\n";
				print ORSQL "<LI>How to contact you is easily locatable via an MKP website.</LI>\n";
				print ORSQL "<LI>You hold your contributors accountable for their deliverables to you.</LI>\n";
				print ORSQL "<LI>Your WIC turnover guidance and references are accurate.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>Operational Guidance</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
				print ORSQL "<LI>Get full briefing from your predecessor.</LI>\n";
				print ORSQL "<LI>Survey your constiuents at least annually.</LI>\n";
				print ORSQL "<LI>Publish on a website, send email with pointers. Do not distribute reference material in emails.</LI>\n";
				print ORSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
				print ORSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
				print ORSQL "<LI>Discuss expectations with CD and write them down.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>References</H3>\n";
        	print ORSQL "<H3>Turnover</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Review and update operating guide.</LI>\n";
				print ORSQL "<LI>Submit operating guide change recommendations to region admin director.</LI>\n";
				print ORSQL "<LI>Hold reference overview meeting with successor 2 months prior to changeover.</LI>\n";
				print ORSQL "<LI>Update WIC job description, especially operational guidance and references section.</LI>\n";
				print ORSQL "<LI>Walk through updating job description in WIC with successor.</LI>\n";
				print ORSQL "</UL>\n";

			print ORSQL "'\n";
        	print ORSQL ");\n\n";
        	$id++;
   		}


        $tier = 'Center';
        $dabbr = 'C';
        $rid = $oid;
        $oid++;

        print OSQL "INSERT INTO org(\n";
        print OSQL " org_id, reports_to_org, org_tier, org_shortname,\n";
        print OSQL " org_longname, org_name, org_abbreviation, org_description\n";
        print OSQL ")VALUES(\n";
        print OSQL " '$oid', '$rid', '$tier', '${dabbr}-${abbr}',\n";
        print OSQL " '$tier $oname', '$oname','${abbr}',\n";
        print OSQL "'<H3>Mission</H3>\n";
        print OSQL "<H3>Goals</H3>\n";
        	print OSQL "<H4>General</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
			print OSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
			print OSQL "<LI>Mentor men in this area.</LI>\n";
        	print OSQL "</UL>\n";
        	print OSQL "<H4>Measurable</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Increase enrollment by 20%</LI>\n";
			print OSQL "<LI>Lower attrition by 10%</LI>\n";
        	print OSQL "</UL>\n";

        print OSQL "<H3>Responsibilities</H3>\n";
        print OSQL "<H3>Accoutability</H3>\n";
        	print OSQL "<H4>MKP Chain of Accountability</H4>\n";
        	print OSQL "<H4>Communication, Meetings, and Events</H4>\n";
        	print OSQL "<H4>Contributing Group Support</H4>\n";
        print OSQL "<H3>Deliverables</H3>\n";
        	print OSQL "<H4>Schedule</H4>\n";
			print OSQL "<CENTER>\n";
			print OSQL "<TABLE BORDER>\n";
			print OSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Nov 1</TD>\n";
			print OSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
			print OSQL "<TD class=tds>Kahuna</TD>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Monthly Week 1</TD>\n";
			print OSQL "<TD class=tds>Status/progress report</TD>\n";
			print OSQL "<TD class=tds>Executive Council</TD>\n";
			print OSQL "</TABLE>\n";
			print OSQL "</CENTER>\n";
        	print OSQL "<H4>Documents and Reports</H4>\n";
        	print OSQL "<H4>Announcements and Events</H4>\n";
        print OSQL "<H3>Success Criteria</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Meet and announce success on meeting your goals.</LI>\n";
        print OSQL "<H3>Operational Guidance</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
			print OSQL "<LI>Enlist/delegate support for your deliverables early.</LI>\n";
			print OSQL "<LI>Survey your constiuents at least annually.</LI>\n";
			print OSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
			print OSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
			print OSQL "</UL>\n";
        print OSQL "<H3>References</H3>\n";

        print OSQL "'\n);\n\n";

		$AllOrg{$oid} = $tier . ' ' . $oname;

		$id = (100 * $oid);
		foreach $name (keys %RoleAbbr) {
    		$rrid = ($id - 100);	# Reports to GeoRegion
        	print ORSQL "INSERT INTO orgrole ( orgrole_id, org_id, orgrole_name,  orgrole_term, orgrole_abbreviation, \n";
        	print ORSQL " reports_to_orgrole, orgrole_longname, orgrole_description)\n";
        	print ORSQL "VALUES(\n";
        	print ORSQL " '$id','$oid','$name','24','$RoleAbbr{$name}',\n";
        	print ORSQL " '$rrid','$AllOrg{$oid} $name',\n";
        	print ORSQL "'<H3>Mission</H3>\n";
        	print ORSQL "<H3>Goals</H3>\n";
        		print ORSQL "<H4>General</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
				print ORSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
				print ORSQL "<LI>Mentor men in this area.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H4>Measurable</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Increase goodness by 20% per year.</LI>\n";
				print ORSQL "<LI>Reduce badness by 10% per year.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H3>Responsibilities</H3>\n";
        	print ORSQL "<H3>Accoutability</H3>\n";
        		print ORSQL "<H4>MKP Chain of Accountability</H4>\n";
        		print ORSQL "<H4>Communication, Meetings, and Events</H4>\n";
        		print ORSQL "<H4>Contributing Group Support</H4>\n";
        	print ORSQL "<H3>Deliverables</H3>\n";
        		print ORSQL "<H4>Schedule</H4>\n";
				print ORSQL "<CENTER>\n";
				print ORSQL "<TABLE BORDER>\n";
				print ORSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
				print ORSQL "<TR>\n";
				print ORSQL "<TD class=tds>Nov 1</TD>\n";
				print ORSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
				print ORSQL "<TD class=tds>Kahuna</TD>\n";
				print ORSQL "</TABLE>\n";
				print ORSQL "</CENTER>\n";
	
        		print ORSQL "<H4>Documents and Reports</H4>\n";
        		print ORSQL "<H4>Announcements and Events</H4>\n";
        	print ORSQL "<H3>Success Criteria</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Everything you know to do you job is availble on an MKP managed web accessible document.</LI>\n";
				print ORSQL "<LI>How to contact you is easily locatable via an MKP website.</LI>\n";
				print ORSQL "<LI>You hold your contributors accountable for their deliverables to you.</LI>\n";
				print ORSQL "<LI>Your WIC turnover guidance and references are accurate.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>Operational Guidance</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
				print ORSQL "<LI>Get full briefing from your predecessor.</LI>\n";
				print ORSQL "<LI>Survey your constiuents at least annually.</LI>\n";
				print ORSQL "<LI>Publish on a website, send email with pointers. Do not distribute reference material in emails.</LI>\n";
				print ORSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
				print ORSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
				print ORSQL "<LI>Discuss expectations with CD and write them down.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>References</H3>\n";
        	print ORSQL "<H3>Turnover</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Review and update operating guide.</LI>\n";
				print ORSQL "<LI>Submit operating guide change recommendations to region admin director.</LI>\n";
				print ORSQL "<LI>Hold reference overview meeting with successor 2 months prior to changeover.</LI>\n";
				print ORSQL "<LI>Update WIC job description, especially operational guidance and references section.</LI>\n";
				print ORSQL "<LI>Walk through updating job description in WIC with successor.</LI>\n";
				print ORSQL "</UL>\n";
				print ORSQL "'\n";
        		print ORSQL ");\n\n";
        	$id++;
   		}

		#
		# I-Group Region
		#
        $tier = 'I-Group Region';
        $dabbr = 'IGR';
        $rid = $oid;
        $oid++;

        print OSQL "INSERT INTO org(\n";
        print OSQL " org_id, reports_to_org, org_tier, org_shortname,\n";
        print OSQL " org_longname, org_name, org_abbreviation, org_description\n";
        print OSQL ")VALUES(\n";
        print OSQL " '$oid', '$rid', '$tier', '${dabbr}-${abbr}',\n";
        print OSQL " '$tier $oname', '$oname','${abbr}',\n";
        print OSQL "'<H3>Mission</H3>\n";
        print OSQL "<H3>Goals</H3>\n";
        	print OSQL "<H4>General</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
			print OSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
			print OSQL "<LI>Mentor men in this area.</LI>\n";
        	print OSQL "</UL>\n";
        	print OSQL "<H4>Measurable</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Increase enrollment by 20%</LI>\n";
			print OSQL "<LI>Lower attrition by 10%</LI>\n";
        	print OSQL "</UL>\n";

        print OSQL "<H3>Responsibilities</H3>\n";
        print OSQL "<H3>Accoutability</H3>\n";
        	print OSQL "<H4>MKP Chain of Accountability</H4>\n";
        	print OSQL "<H4>Communication, Meetings, and Events</H4>\n";
        	print OSQL "<H4>Contributing Group Support</H4>\n";
        print OSQL "<H3>Deliverables</H3>\n";
        	print OSQL "<H4>Schedule</H4>\n";
			print OSQL "<CENTER>\n";
			print OSQL "<TABLE BORDER>\n";
			print OSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Nov 1</TD>\n";
			print OSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
			print OSQL "<TD class=tds>Kahuna</TD>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Monthly Week 1</TD>\n";
			print OSQL "<TD class=tds>Status/progress report</TD>\n";
			print OSQL "<TD class=tds>Executive Council</TD>\n";
			print OSQL "</TABLE>\n";
			print OSQL "</CENTER>\n";
        	print OSQL "<H4>Documents and Reports</H4>\n";
        	print OSQL "<H4>Announcements and Events</H4>\n";
        print OSQL "<H3>Success Criteria</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Meet and announce success on meeting your goals.</LI>\n";
        print OSQL "<H3>Operational Guidance</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
			print OSQL "<LI>Enlist/delegate support for your deliverables early.</LI>\n";
			print OSQL "<LI>Survey your constiuents at least annually.</LI>\n";
			print OSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
			print OSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
			print OSQL "</UL>\n";
        print OSQL "<H3>References</H3>\n";
        print OSQL "'\n);\n\n";

		$AllOrg{$oid} = $tier . ' ' . $oname;
		$id = (100 * $oid);

		# Hardwire
		#%RoleAbbr = (
		#	'Envoy'				=> 'Env',
		#	'Representative'	=> 'Rep'
		#);

		foreach $name (keys %RoleAbbr) {
    		$rrid = ($id - 100);	# Reporst to Center
        	print ORSQL "INSERT INTO orgrole ( orgrole_id, org_id, orgrole_name, orgrole_term, orgrole_abbreviation,\n";
        	print ORSQL " reports_to_orgrole, orgrole_longname, orgrole_description)\n";
        	print ORSQL "VALUES(\n";
        	print ORSQL " '$id','$oid','$name','24','$RoleAbbr{$name}',\n";
        	print ORSQL " '$rrid','$AllOrg{$oid} $name',\n";
        	print ORSQL "'<H3>Mission</H3>\n";
        	print ORSQL "<H3>Goals</H3>\n";
        		print ORSQL "<H4>General</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
				print ORSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
				print ORSQL "<LI>Mentor men in this area.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H4>Measurable</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Increase goodness by 20% per year.</LI>\n";
				print ORSQL "<LI>Reduce badness by 10% per year.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H3>Responsibilities</H3>\n";
        	print ORSQL "<H3>Accoutability</H3>\n";
        		print ORSQL "<H4>MKP Chain of Accountability</H4>\n";
        		print ORSQL "<H4>Communication, Meetings, and Events</H4>\n";
        		print ORSQL "<H4>Contributing Group Support</H4>\n";
        	print ORSQL "<H3>Deliverables</H3>\n";
        		print ORSQL "<H4>Schedule</H4>\n";
				print ORSQL "<CENTER>\n";
				print ORSQL "<TABLE BORDER>\n";
				print ORSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
				print ORSQL "<TR>\n";
				print ORSQL "<TD class=tds>Nov 1</TD>\n";
				print ORSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
				print ORSQL "<TD class=tds>Kahuna</TD>\n";
				print ORSQL "</TABLE>\n";
				print ORSQL "</CENTER>\n";
	
        		print ORSQL "<H4>Documents and Reports</H4>\n";
        		print ORSQL "<H4>Announcements and Events</H4>\n";
        	print ORSQL "<H3>Success Criteria</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Everything you know to do you job is availble on an MKP managed web accessible document.</LI>\n";
				print ORSQL "<LI>How to contact you is easily locatable via an MKP website.</LI>\n";
				print ORSQL "<LI>You hold your contributors accountable for their deliverables to you.</LI>\n";
				print ORSQL "<LI>Your WIC turnover guidance and references are accurate.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>Operational Guidance</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
				print ORSQL "<LI>Get full briefing from your predecessor.</LI>\n";
				print ORSQL "<LI>Survey your constiuents at least annually.</LI>\n";
				print ORSQL "<LI>Publish on a website, send email with pointers. Do not distribute reference material in emails.</LI>\n";
				print ORSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
				print ORSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
				print ORSQL "<LI>Discuss expectations with CD and write them down.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>References</H3>\n";
        	print ORSQL "<H3>Turnover</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Review and update operating guide.</LI>\n";
				print ORSQL "<LI>Submit operating guide change recommendations to region admin director.</LI>\n";
				print ORSQL "<LI>Hold reference overview meeting with successor 2 months prior to changeover.</LI>\n";
				print ORSQL "<LI>Update WIC job description, especially operational guidance and references section.</LI>\n";
				print ORSQL "<LI>Walk through updating job description in WIC with successor.</LI>\n";
				print ORSQL "</UL>\n";
			print ORSQL "'\n";
        	print ORSQL ");\n\n";
        	$id++;
   		}

		#
		# I-Group
		#
        $tier = 'I-Group';
        $dabbr = 'IG';
        $rid = $oid;
        $oid++;

        print OSQL "INSERT INTO org(\n";
        print OSQL " org_id, reports_to_org, org_tier, org_shortname,\n";
        print OSQL " org_longname, org_name, org_abbreviation, org_description\n";
        print OSQL ")VALUES(\n";
        print OSQL " '$oid', '$rid', '$tier', '${dabbr}-${abbr}',\n";
        print OSQL " '$tier $oname', '$oname','${abbr}',\n";
        print OSQL " '<H2>$tier $oname</H2>\n";
        print OSQL "<H3>Mission</H3>\n";
        print OSQL "<H3>Goals</H3>\n";
        	print OSQL "<H4>General</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
			print OSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
			print OSQL "<LI>Mentor men in this area.</LI>\n";
        	print OSQL "</UL>\n";
        	print OSQL "<H4>Measurable</H4>\n";
        	print OSQL "<UL>\n";
			print OSQL "<LI>Increase enrollment by 20%</LI>\n";
			print OSQL "<LI>Lower attrition by 10%</LI>\n";
        	print OSQL "</UL>\n";

        print OSQL "<H3>Responsibilities</H3>\n";
        print OSQL "<H3>Accoutability</H3>\n";
        	print OSQL "<H4>MKP Chain of Accountability</H4>\n";
        	print OSQL "<H4>Communication, Meetings, and Events</H4>\n";
        	print OSQL "<H4>Contributing Group Support</H4>\n";
        print OSQL "<H3>Deliverables</H3>\n";
        	print OSQL "<H4>Schedule</H4>\n";
			print OSQL "<CENTER>\n";
			print OSQL "<TABLE BORDER>\n";
			print OSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Nov 1</TD>\n";
			print OSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
			print OSQL "<TD class=tds>Kahuna</TD>\n";
			print OSQL "<TR>\n";
			print OSQL "<TD class=tds>Monthly Week 1</TD>\n";
			print OSQL "<TD class=tds>Status/progress report</TD>\n";
			print OSQL "<TD class=tds>Executive Council</TD>\n";
			print OSQL "</TABLE>\n";
			print OSQL "</CENTER>\n";
        	print OSQL "<H4>Documents and Reports</H4>\n";
        	print OSQL "<H4>Announcements and Events</H4>\n";
        print OSQL "<H3>Success Criteria</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Meet and announce success on meeting your goals.</LI>\n";
        print OSQL "<H3>Operational Guidance</H3>\n";
			print OSQL "<UL>\n";
			print OSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
			print OSQL "<LI>Enlist/delegate support for your deliverables early.</LI>\n";
			print OSQL "<LI>Survey your constiuents at least annually.</LI>\n";
			print OSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
			print OSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
			print OSQL "</UL>\n";
        print OSQL "<H3>References</H3>\n";
        print OSQL "'\n);\n\n";

		$AllOrg{$oid} = $tier . ' ' . $oname;
		$id = (100 * $oid);

		# Hardware
		#%RoleAbbr = (
		#	'Envoy'				=> 'Env',
		#	'Representative'	=> 'Rep'
		#);


		foreach $name (keys %RoleAbbr) {
    		$rrid = ($id - 100);
        	print ORSQL "INSERT INTO orgrole ( orgrole_id, org_id, orgrole_name,  orgrole_term, orgrole_abbreviation, \n";
        	print ORSQL " reports_to_orgrole, orgrole_longname, orgrole_description)\n";
        	print ORSQL "VALUES(\n";
        	print ORSQL " '$id','$oid','$name','24','$RoleAbbr{$name}',\n";
        	print ORSQL " '$rrid','$AllOrg{$oid} $name',\n";
			print ORSQL "'<H2>$AllOrg{$oid} $name</H2>\n";
        	print ORSQL "<H3>Mission</H3>\n";
        	print ORSQL "<H3>Goals</H3>\n";
        		print ORSQL "<H4>General</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Provide mission vision and enlist those passionate about it to assist.</LI>\n";
				print ORSQL "<LI>Raise the level of leadership and communication skills among contributors.</LI>\n";
				print ORSQL "<LI>Mentor men in this area.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H4>Measurable</H4>\n";
        		print ORSQL "<UL>\n";
				print ORSQL "<LI>Increase goodness by 20% per year.</LI>\n";
				print ORSQL "<LI>Reduce badness by 10% per year.</LI>\n";
        		print ORSQL "</UL>\n";
        	print ORSQL "<H3>Responsibilities</H3>\n";
        	print ORSQL "<H3>Accoutability</H3>\n";
        		print ORSQL "<H4>MKP Chain of Accountability</H4>\n";
        		print ORSQL "<H4>Communication, Meetings, and Events</H4>\n";
        		print ORSQL "<H4>Contributing Group Support</H4>\n";
        	print ORSQL "<H3>Deliverables</H3>\n";
        		print ORSQL "<H4>Schedule</H4>\n";
				print ORSQL "<CENTER>\n";
				print ORSQL "<TABLE BORDER>\n";
				print ORSQL "<TH class=ths>Date</TH><TH class=ths>Deliverable</TH><TH class=ths>To</TH>\n";
				print ORSQL "<TR>\n";
				print ORSQL "<TD class=tds>Nov 1</TD>\n";
				print ORSQL "<TD class=tds>Retention report to big Kahuna</TD>\n";
				print ORSQL "<TD class=tds>Kahuna</TD>\n";
				print ORSQL "</TABLE>\n";
				print ORSQL "</CENTER>\n";
	
        		print ORSQL "<H4>Documents and Reports</H4>\n";
        		print ORSQL "<H4>Announcements and Events</H4>\n";
        	print ORSQL "<H3>Success Criteria</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Your consituents know you and your responsibilities.</LI>\n";
				print ORSQL "<LI>Everything you know to do you job is availble on an MKP managed web accessible document.</LI>\n";
				print ORSQL "<LI>How to contact you is easily locatable via an MKP website.</LI>\n";
				print ORSQL "<LI>You hold your contributors accountable for their deliverables to you.</LI>\n";
				print ORSQL "<LI>Your WIC turnover guidance and references are accurate.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>Operational Guidance</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Create an annual calendar and update and publish it quarterly.</LI>\n";
				print ORSQL "<LI>Get full briefing from your predecessor.</LI>\n";
				print ORSQL "<LI>Survey your constiuents at least annually.</LI>\n";
				print ORSQL "<LI>Publish on a website, send email with pointers. Do not distribute reference material in emails.</LI>\n";
				print ORSQL "<LI>Communicate with constiuents at least monthly. Status report/newsletter recommended.</LI>\n";
				print ORSQL "<LI>Publish minutes of every meeting and phone bridge on website.</LI>\n";
				print ORSQL "<LI>Discuss expectations with CD and write them down.</LI>\n";
				print ORSQL "</UL>\n";
        	print ORSQL "<H3>References</H3>\n";
        	print ORSQL "<H3>Turnover</H3>\n";
				print ORSQL "<UL>\n";
				print ORSQL "<LI>Review and update operating guide.</LI>\n";
				print ORSQL "<LI>Submit operating guide change recommendations to region admin director.</LI>\n";
				print ORSQL "<LI>Hold reference overview meeting with successor 2 months prior to changeover.</LI>\n";
				print ORSQL "<LI>Update WIC job description, especially operational guidance and references section.</LI>\n";
				print ORSQL "<LI>Walk through updating job description in WIC with successor.</LI>\n";
				print ORSQL "</UL>\n";
			print ORSQL "'\n";
        	print ORSQL ");\n\n";
        	$id++;
   		}
}
close(IN);
close(OSQL);
close(ORSQL);
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

  	USAGE: $program [-hud]

  		-u : 	Display this usage message
     	-h : 	Help Message
     	-d : 	Debug Mode

EofUsage

    print STDOUT "Debug mode enabled\n"  if $opt_d && $opt_v;
    die "$usage" if $opt_u;
    (&show_help && die "Exiting....") if $opt_h;
}#Endsub options_etc
#=============================================================================
# Numerical vs Ascii Sort, Sort numerically instead of ascii
#=============================================================================
sub bynumber { 
	my $subname = "bynumber";
	$a <=> $b; 
}#Endsub bynumber
#=============================================================================
#	Help documentation
#=============================================================================
sub show_help {
	my $subname = "show_help";
$manpage = <<EOH;

    Read organizations.txt, orgroles.txt and generate sql files in /tmp
    /tmp/load-org.sql, /tmp/load-organizations.sql, /tmp/load-orgrole.sql

EOH
print $manpage;
}#End show_help
#-----------------------------------------------------------------------------
__END__
