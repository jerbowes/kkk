#--------------------------------------------------------------------------------------
# Setup permissions (promiscuous) and access to user igroupportal
# Depot, Acer, Suse 11.2 Mysql 5.1
#--------------------------------------------------------------------------------------
# $Source: /home/jbowes/igroupportal/src/sql/RCS/igroupportal-dbsetup.sql,v $
# $Id: igroupportal-dbsetup.sql,v 1.1 2012/12/23 04:23:21 jbowes Exp $
# $Date: 2012/12/23 04:23:21 $
#--------------------------------------------------------------------------------------
use mysql;
show databases;
create database igroupportaldev;
create database igroupportallive;
show databases;

#--------------------------------------------------------------------------------------
# Setup User Table
#--------------------------------------------------------------------------------------

#mysql> describe user;
#+-----------------------+-----------------------------------+------+-----+---------+-------+
#| Field                 | Type                              | Null | Key | Default | Extra |
#+-----------------------+-----------------------------------+------+-----+---------+-------+
#| Host                  | char(60)                          | NO   | PRI |         |       |
#| User                  | char(16)                          | NO   | PRI |         |       |
#| Password              | char(41)                          | NO   |     |         |       |
#
#| Select_priv           | enum('N','Y')                     | NO   |     | N       |       |
#| Insert_priv           | enum('N','Y')                     | NO   |     | N       |       |
#| Update_priv           | enum('N','Y')                     | NO   |     | N       |       |
#| Delete_priv           | enum('N','Y')                     | NO   |     | N       |       |
#| Create_priv           | enum('N','Y')                     | NO   |     | N       |       |
#| Drop_priv             | enum('N','Y')                     | NO   |     | N       |       |
#
#| Reload_priv           | enum('N','Y')                     | NO   |     | N       |       |
#| Shutdown_priv         | enum('N','Y')                     | NO   |     | N       |       |
#| Process_priv          | enum('N','Y')                     | NO   |     | N       |       |
#| File_priv             | enum('N','Y')                     | NO   |     | N       |       |
#| Grant_priv            | enum('N','Y')                     | NO   |     | N       |       |
#| References_priv       | enum('N','Y')                     | NO   |     | N       |       |
#
#| Index_priv            | enum('N','Y')                     | NO   |     | N       |       |
#| Alter_priv            | enum('N','Y')                     | NO   |     | N       |       |
#| Show_db_priv          | enum('N','Y')                     | NO   |     | N       |       |
#| Super_priv            | enum('N','Y')                     | NO   |     | N       |       |
#| Create_tmp_table_priv | enum('N','Y')                     | NO   |     | N       |       |
#| Lock_tables_priv      | enum('N','Y')                     | NO   |     | N       |       |
#
#| Execute_priv          | enum('N','Y')                     | NO   |     | N       |       |
#| Repl_slave_priv       | enum('N','Y')                     | NO   |     | N       |       |
#| Repl_client_priv      | enum('N','Y')                     | NO   |     | N       |       |
#| Create_view_priv      | enum('N','Y')                     | NO   |     | N       |       |
#| Show_view_priv        | enum('N','Y')                     | NO   |     | N       |       |
#| Create_routine_priv   | enum('N','Y')                     | NO   |     | N       |       |
#
#| Alter_routine_priv    | enum('N','Y')                     | NO   |     | N       |       |
#| Create_user_priv      | enum('N','Y')                     | NO   |     | N       |       |
#| Event_priv            | enum('N','Y')                     | NO   |     | N       |       |
#| Trigger_priv          | enum('N','Y')                     | NO   |     | N       |       |
#| ssl_type              | enum('','ANY','X509','SPECIFIED') | NO   |     |         |       |
#| ssl_cipher            | blob                              | NO   |     | NULL    |       |
#
#| x509_issuer           | blob                              | NO   |     | NULL    |       |
#| x509_subject          | blob                              | NO   |     | NULL    |       |
#| max_questions         | int(11) unsigned                  | NO   |     | 0       |       |
#| max_updates           | int(11) unsigned                  | NO   |     | 0       |       |
#| max_connections       | int(11) unsigned                  | NO   |     | 0       |       |
#| max_user_connections  | int(11) unsigned                  | NO   |     | 0       |       |
#+-----------------------+-----------------------------------+------+-----+---------+-------+
##39 rows in set (0.01 sec)

insert into user values (
 	'localhost','igroupportal','',
	 'y','y','y','y','y','y',
	 'y','y','y','y','y','y',
	 'y','y','y','y','y','y',
	 'y','y','y','y','y','y',
	 'y','y','y','y',
	 '','',
	 '','','','','',''
	 );

#--------------------------------------------------------------------------------------
# Set Up db table
#--------------------------------------------------------------------------------------

#mysql> describe db;
#+-----------------------+---------------+------+-----+---------+-------+
#| Field                 | Type          | Null | Key | Default | Extra |
#+-----------------------+---------------+------+-----+---------+-------+
#| Host                  | char(60)      | NO   | PRI |         |       |
#| Db                    | char(64)      | NO   | PRI |         |       |
#| User                  | char(16)      | NO   | PRI |         |       |

#| Select_priv           | enum('N','Y') | NO   |     | N       |       |
#| Insert_priv           | enum('N','Y') | NO   |     | N       |       |
#| Update_priv           | enum('N','Y') | NO   |     | N       |       |
#| Delete_priv           | enum('N','Y') | NO   |     | N       |       |
#| Create_priv           | enum('N','Y') | NO   |     | N       |       |

#| Drop_priv             | enum('N','Y') | NO   |     | N       |       |
#| Grant_priv            | enum('N','Y') | NO   |     | N       |       |
#| References_priv       | enum('N','Y') | NO   |     | N       |       |
#| Index_priv            | enum('N','Y') | NO   |     | N       |       |
#| Alter_priv            | enum('N','Y') | NO   |     | N       |       |

#| Create_tmp_table_priv | enum('N','Y') | NO   |     | N       |       |
#| Lock_tables_priv      | enum('N','Y') | NO   |     | N       |       |
#| Create_view_priv      | enum('N','Y') | NO   |     | N       |       |
#| Show_view_priv        | enum('N','Y') | NO   |     | N       |       |
#| Create_routine_priv   | enum('N','Y') | NO   |     | N       |       |

#| Alter_routine_priv    | enum('N','Y') | NO   |     | N       |       |
#| Execute_priv          | enum('N','Y') | NO   |     | N       |       |
#| Event_priv            | enum('N','Y') | NO   |     | N       |       |
#| Trigger_priv          | enum('N','Y') | NO   |     | N       |       |
#+-----------------------+---------------+------+-----+---------+-------+
#22 rows in set (0.00 sec)
#
insert into db values (
 	'localhost', 'igroupportaldev', 'igroupportal', 
 	'y','y','y','y','y',
 	'y','y','y','y','y',
 	'y','y','y','y','y',
 	'y','y','y','y'
	);

insert into db values (
 	'localhost', 'igroupportallive', 'igroupportal', 
 	'y','y','y','y','y',
 	'y','y','y','y','y',
 	'y','y','y','y','y',
 	'y','y','y','y'
	);

flush privileges;

