
#mysql> desc survey;
#+--------------------+------------------+------+-----+---------+----------------+
#| Field              | Type             | Null | Key | Default | Extra          |
#+--------------------+------------------+------+-----+---------+----------------+
#| survey_id          | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| author_id          | int(10) unsigned | YES  |     | NULL    |                |
#| survey_name        | varchar(30)      | YES  |     | NULL    |                |
#| open_date          | date             | YES  |     | NULL    |                |
#| close_date         | date             | YES  |     | NULL    |                |
#| audience           | varchar(80)      | YES  |     | NULL    |                |
#| survey_description | text             | YES  |     | NULL    |                |
#
#mysql> desc surveymanifest;
#+-------------------+------------------+------+-----+---------+----------------+
#| Field             | Type             | Null | Key | Default | Extra          |
#+-------------------+------------------+------+-----+---------+----------------+
#| surveymanifest_id | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| survey_id         | int(10) unsigned | NO   |     | NULL    |                |
#| question_id       | int(10) unsigned | YES  |     | NULL    |                |
#| sequence          | tinyint(4)       | YES  |     | NULL    |                |
#
#mysql> describe surveyquestion;
#+-----------------------------+------------------+------+-----+---------+----------------+
#| Field                       | Type             | Null | Key | Default | Extra          |
#+-----------------------------+------------------+------+-----+---------+----------------+
#| surveyquestion_id           | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| author_id                   | int(10) unsigned | YES  |     | NULL    |                |
#| surveyquestion_question     | varchar(120)     | YES  |     | NULL    |                |
#| surveyquestion_type         | varchar(30)      | YES  |     | NULL    |                |
#| surveyquestion_instructions | text             | YES  |     | NULL    |                |
#
#mysql> describe surveyanswer;
#+---------------------+------------------+------+-----+---------+----------------+
#| Field               | Type             | Null | Key | Default | Extra          |
#+---------------------+------------------+------+-----+---------+----------------+
#| surveyanswer_id     | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| surveyquestion_id     | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| surveyanswer_answer | varchar(120)     | YES  |     | NULL    |                |
#| answer_type         | varchar(30)      | YES  |     | NULL    |                |
#| valid_range         | varchar(80)      | YES  |     | NULL    |                |
#| answer_value        | text             | YES  |     | NULL    |                |
#
#mysql> desc surveyresult;
#+-----------------+------------------+------+-----+---------+----------------+
#| Field           | Type             | Null | Key | Default | Extra          |
#+-----------------+------------------+------+-----+---------+----------------+
#| surveyresult_id | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| survey_id       | int(10) unsigned | NO   |     | NULL    |                |
#| question_id     | int(10) unsigned | NO   |     | NULL    |                |
#| answer_id       | int(10) unsigned | NO   |     | NULL    |                |
#| author_id       | int(10) unsigned | NO   |     | NULL    |                |
#| answer_value    | text             | YES  |     | NULL    |                |

#mysql> desc surveymanifest;
#+-------------------+------------------+------+-----+---------+----------------+
#| Field             | Type             | Null | Key | Default | Extra          |
#+-------------------+------------------+------+-----+---------+----------------+
#| surveymanifest_id | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| surveysection_id  | int(10) unsigned | NO   |     | NULL    |                |
#| survey_id         | int(10) unsigned | NO   |     | NULL    |                |
#| surveyquestion_id | int(10) unsigned | YES  |     | NULL    |                |
#| sequence          | smallint(6)      | YES  |     | NULL    |                |
#+-------------------+------------------+------+-----+---------+----------------+
#5 rows in set (0.00 sec)
#
#mysql> desc surveyquestion;
#+-----------------------------+------------------+------+-----+---------+----------------+
#| Field                       | Type             | Null | Key | Default | Extra          |
#+-----------------------------+------------------+------+-----+---------+----------------+
#| surveyquestion_id           | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| author_id                   | int(10) unsigned | YES  |     | NULL    |                |
#| surveyquestion_question     | varchar(120)     | YES  |     | NULL    |                |
#| surveyquestion_type         | varchar(50)      | YES  |     | NULL    |                |
#| surveyquestion_instructions | text             | YES  |     | NULL    |                |
#+-----------------------------+------------------+------+-----+---------+----------------+
#5 rows in set (0.00 sec)
#
#mysql> desc surveyanswer;
#+---------------------+------------------+------+-----+---------+----------------+
#| Field               | Type             | Null | Key | Default | Extra          |
#+---------------------+------------------+------+-----+---------+----------------+
#| surveyanswer_id     | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
#| surveyquestion_id   | int(10) unsigned | NO   |     | NULL    |                |
#| surveyanswer_answer | varchar(120)     | YES  |     | NULL    |                |
#| answer_type         | varchar(30)      | YES  |     | NULL    |                |
#| valid_range         | varchar(120)     | YES  |     | NULL    |                |
#+---------------------+------------------+------+-----+---------+----------------+
#5 rows in set (0.00 sec)

SELECT m.surveyquestion_id, q.surveyquestion_question, q.surveyquestion_type, a.surveyanswer_id, a.surveyanswer_answer
FROM surveymanifest m, surveyquestion q, surveyanswer a
WHERE m.surveyquestion_id = q.surveyquestion_id
AND q.surveyquestion_id = a.surveyquestion_id
AND m.survey_id = '300'
ORDER BY m.sequence, a.surveyanswer_id
;
