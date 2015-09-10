//#==================================================================
//# Checkbox managemetn for zipdata
//#------------------------------------------------------------------
//# MKP-USA I-Group Portal
//# Formerly Warrior Information Center (WIC)
//# Jerry Bowes, MKP-USA IT Development Coordinator, 2010-2011
//# Jerry Bowes, MKP-USA I-Group Council Vice-Chairman, 2011-2013
//#------------------------------------------------------------------
//# $URL$
//# $Date: 2012/12/23 22:07:08 $
//# $Source: /home/jbowes/igroupportal/src/jscript/RCS/checkbox.js,v $
//# $Id: checkbox.js,v 1.2 2012/12/23 22:07:08 jbowes Exp $
//#------------------------------------------------------------------
//# SET EDITOR FOR 4 space TAB stops
//# :set autoindent tabstop=4 showmatch	 (vi)
//#------------------------------------------------------------------
//#==================================================================
//#------------------------------------------------------------------
//# To Edit subversion controlled version
//#------------------------------------------------------------------
//# Check out the subversion igroupportal web content directory
//# % cd /tmp 
//# % svn co http://svn.mkp.org/repo/igroupportal/httpdocs/
//# -or, locally on MKP1-
//# % svn co file:///home/subversion/repo/igroupportal/httpdocs/
//#
//# % cd /tmp/httpdocs/jscriptlive
//# % vi (thisfile)
//# % svn ci [-m'<message describing change>'] (thisfile)
//#
//#------------------------------------------------------------------
//# Deploy as root on mkp1
//#------------------------------------------------------------------
//# % cd /var/www/vhosts/igroupportal.mkp.org/httpdocs
//# % svn update
//# % chown -R igroupportalweb.psacln *.php
//#==================================================================
//#------------------------------------------------------------------

function togglecheck(obj)
{
// set the form to look at (your form is called form1)
var frm = document.form1

// get the form elements
var el = frm.elements

// loop through the elements...
for(i=0;i<el.length;i++) {
  // and check if it is a checkbox
  if(el[i].type == "checkbox" ) {
    // if it is a checkbox and you submitted yes to the function
    if(obj == "yes")
      // tick the box
      el[i].checked = true;
    else
      // otherwise untick the box
      el[i].checked = false;
    }
  }
}

function checkAll(checkname, exby) {
  for (i = 0; i < checkname.length; i++)
 	 checkname[i].checked = exby.checked? true:false
}

//<input type="checkbox" name="all" onClick="checkAll(document.mylist.checkGroup,this)">Check/Uncheck All


