//#==================================================================

//#==================================================================
//#------------------------------------------------------------------
//# MKP-USA I-Group Portal
//# Formerly Warrior Information Center (WIC)
//# Jerry Bowes, MKP-USA IT Development Coordinator, 2010-2011
//# Jerry Bowes, MKP-USA I-Group Council Vice-Chairman, 2011-2013
//#------------------------------------------------------------------
//# $URL$
//# $Date: 2012/12/23 22:08:48 $
//# $Source: /home/jbowes/igroupportal/src/jscript/RCS/checkbox2.js,v $
//# $Id: checkbox2.js,v 1.2 2012/12/23 22:08:48 jbowes Exp $
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
//# % svn co http://svn.mkp.org/repo/igroupportal/httpdocs
//# -or, locally on MKP1-
//# % svn co file:///home/subversion/repo/igroupportal/httpdocs
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
//#------------------------------------------------------------------
function addEvent(obj, evType, fn){ 
	if (obj.addEventListener){ 
   		obj.addEventListener(evType, fn, false); 
   		return true; 
 	} else if (obj.attachEvent){ 
   		var r = obj.attachEvent("on"+evType, fn); 
   		return r; 
 	} else { 
   		return false; 
 	} 
}
 
//#------------------------------------------------------------------
//#------------------------------------------------------------------
addEvent(window, 'load', initCheckboxes);
 
//#------------------------------------------------------------------
//#------------------------------------------------------------------
function initCheckboxes() {
	addEvent(document.getElementById('all'), 'click', setCheckboxes);
}
 
//#------------------------------------------------------------------
//#------------------------------------------------------------------
function setCheckboxes() {
	var cb = document.getElementById('checkbox_container').getElementsByTagName('input');
		
	for (var i = 0; i < cb.length; i++) {
		cb[i].checked = document.getElementById('all').checked;
	}
}
