/* Database Systems, Coronel/Morris */
/* Type of SQL : MySQL */



CREATE TABLE CLASS (
CLASS_CODE varchar(5),
CRS_CODE varchar(10),
CLASS_SECTION varchar(2),
CLASS_TIME varchar(20),
CLASS_ROOM varchar(8),
PROF_NUM numeric(8)
)
ENGINE = INNODB;

INSERT INTO CLASS VALUES('10012','ACCT-211','1','MWF 8:00-8:50 a.m.','BUS311','105');
INSERT INTO CLASS VALUES('10013','ACCT-211','2','MWF 9:00-9:50 a.m.','BUS200','105');
INSERT INTO CLASS VALUES('10014','ACCT-211','3','TTh 2:30-3:45 p.m.','BUS252','342');
INSERT INTO CLASS VALUES('10015','ACCT-212','1','MWF 10:00-10:50 a.m.','BUS311','301');
INSERT INTO CLASS VALUES('10016','ACCT-212','2','Th 6:00-8:40 p.m.','BUS252','301');
INSERT INTO CLASS VALUES('10017','CIS-220','1','MWF 9:00-9:50 a.m.','KLR209','228');
INSERT INTO CLASS VALUES('10018','CIS-220','2','MWF 9:00-9:50 a.m.','KLR211','114');
INSERT INTO CLASS VALUES('10019','CIS-220','3','MWF 10:00-10:50 a.m.','KLR209','228');
INSERT INTO CLASS VALUES('10020','CIS-420','1','W 6:00-8:40 p.m.','KLR209','162');
INSERT INTO CLASS VALUES('10021','QM-261','1','MWF 8:00-8:50 a.m.','KLR200','114');
INSERT INTO CLASS VALUES('10022','QM-261','2','TTh 1:00-2:15 p.m.','KLR200','114');
INSERT INTO CLASS VALUES('10023','QM-362','1','MWF 11:00-11:50 a.m.','KLR200','162');
INSERT INTO CLASS VALUES('10024','QM-362','2','TTh 2:30-3:45 p.m.','KLR200','162');


CREATE TABLE COURSE (
CRS_CODE varchar(10),
DEPT_CODE varchar(10),
CRS_DESCRIPTION varchar(35),
CRS_CREDIT numeric(8)
)
ENGINE = INNODB;

INSERT INTO COURSE VALUES('ACCT-211','ACCT','Accounting I','3');
INSERT INTO COURSE VALUES('ACCT-212','ACCT','Accounting II','3');
INSERT INTO COURSE VALUES('CIS-220','CIS','Intro. to Microcomputing','3');
INSERT INTO COURSE VALUES('CIS-420','CIS','Database Design and Implementation','4');
INSERT INTO COURSE VALUES('QM-261','CIS','Intro. to Statistics','3');
INSERT INTO COURSE VALUES('QM-362','CIS','Statistical Applications','4');


CREATE TABLE ENROLL (
CLASS_CODE varchar(5),
STU_NUM int,
ENROLL_GRADE varchar(50)
)
ENGINE = INNODB;

INSERT INTO ENROLL VALUES('10014','321452','C');
INSERT INTO ENROLL VALUES('10014','324257','B');
INSERT INTO ENROLL VALUES('10018','321452','A');
INSERT INTO ENROLL VALUES('10018','324257','B');
INSERT INTO ENROLL VALUES('10021','321452','C');
INSERT INTO ENROLL VALUES('10021','324257','C');



CREATE TABLE STUDENT (
STU_NUM int,
STU_LNAME varchar(15),
STU_FNAME varchar(15),
STU_INIT varchar(1),
STU_DOB datetime,
STU_HRS int,
STU_CLASS varchar(2),
STU_GPA numeric(4,2),
STU_TRANSFER varchar(6),
DEPT_CODE varchar(18),
STU_PHONE varchar(4),
PROF_NUM int
)
ENGINE = INNODB;

INSERT INTO STUDENT VALUES('321452','Bowser','William','C','1986-2-12','42','So','2.84','False','BIOL','2134','205');
INSERT INTO STUDENT VALUES('324257','Smithson','Anne','K','1991-11-15','81','Jr','3.27','True','CIS','2256','222');
INSERT INTO STUDENT VALUES('324258','Brewer','Juliette','','1980-8-23','36','So','2.26','True','ACCT','2256','228');
INSERT INTO STUDENT VALUES('324269','Oblonski','Walter','H','1987-9-16','66','Jr','3.09','False','CIS','2114','222');
INSERT INTO STUDENT VALUES('324273','Smith','John','D','1969-12-30','102','Sr','2.11','True','ENGL','2231','199');
INSERT INTO STUDENT VALUES('324274','Katinga','Raphael','P','1990-10-21','114','Sr','3.15','False','ACCT','2267','228');
INSERT INTO STUDENT VALUES('324291','Robertson','Gerald','T','1984-4-8','120','Sr','3.87','False','EDU','2267','311');
INSERT INTO STUDENT VALUES('324299','Smith','John','B','1997-11-30','15','Fr','2.92','False','ACCT','2315','230');


