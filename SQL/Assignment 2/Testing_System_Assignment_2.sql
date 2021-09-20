	DROP DATABASE IF EXISTS TESTINGSYSTEM;
	CREATE DATABASE TESTINGSYSTEM;
	USE TESTINGSYSTEM;

CREATE TABLE     DEPARTMENT(
		DEPARTMENTID                  TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		DEPARTMENTNAME                VARCHAR(50) 
);

CREATE TABLE     POSITION (
		POSITIONID                    TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		POSITIONNAME                  ENUM('DEV','TEST','SCRUM MASTER','PM')
);
		
CREATE TABLE     `ACCOUNT`(
		ACCOUNTID                     TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		EMAIL                         VARCHAR(50),
		USERNAME                      CHAR(20),
		FULLNAME                      CHAR(30),
		DEPARTMENTID                  TINYINT UNSIGNED,
		POSITIONID                    TINYINT UNSIGNED,
		CREATEDATE                    DATE
);
		
CREATE TABLE      `GROUP`(
		GROUPID                       TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		GROUPNAME                     CHAR(30),
		CREATORID                     TINYINT UNSIGNED,
		CREATEDATE                    DATE
);
		
CREATE TABLE       GROUPACCOUNT(
		GROUPID                       TINYINT UNSIGNED,
		ACCOUNTID                     TINYINT UNSIGNED,
		JOINDATE                      DATE
);
		
CREATE TABLE       TYPEQUESTION(
		TYPEID                        TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		TYPENAME                      ENUM('ESSAY','MULTIPLE-CHOICE')
);
		
CREATE TABLE       CATEGORYQUESTION(
		CATEGORYID                    TINYINT UNSIGNED,
		CATEGORYNAME                  ENUM('JAVA','.NET','SQL','POSTMAN','RUBY')
);
		
CREATE TABLE       QUESTION(
		QUESTIONID                    TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		CONTENT                       VARCHAR(200),
		CATEGORYID                    TINYINT UNSIGNED,
		TYPEID                        TINYINT UNSIGNED,
		CREATORID                     TINYINT UNSIGNED,
		CREATEDATE                    DATE
);
		
CREATE TABLE        ANSWER(
		ANSWERID                     TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		CONTENT                      VARCHAR(200),
		QUESTIONID                   VARCHAR(200),
		ISCORRECT                    ENUM('YES','NO')
);
		
CREATE TABLE        EXAM(
		EXAMID                       TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
		`CODE`                       TINYINT UNSIGNED,
		TITLE                        CHAR(50),
		CATEGORYID                   TINYINT UNSIGNED,
		DURATION                     DATETIME,
		CREATORID                    TINYINT UNSIGNED,
		CREATEDATE                   DATE
);
		
CREATE TABLE        EXAMQUESTION(
		EXAMID                       TINYINT UNSIGNED,
		QUESTIONID                   INT
);
		