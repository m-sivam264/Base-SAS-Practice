/*
proc import datafile= "/home/Siva_M/My_Library/functions_sas/pumpkin_contest_data.txt"
	dbms=dlm
	dsd
	out=Pumpkin_ContestData
	replace;
	delimiter=' ';
	getnames=no;
run; 

proc print data=Pumpkin_ContestData label noobs;
	label var1 = 'Name'
		  var2 = 'Age'
		  var3 = 'Type'
		  var4 = 'Date'
		  var4 = 'Score1'
		  var5 = 'Score2'
		  var6 = 'Score3';
run;
*/

DATA Pumpkin_ContestData;
    INFILE "/home/Siva_M/My_Library/functions_sas/pumpkin_contest_data.txt"
        DLM=' '
        DSD
        TRUNCOVER;
    LENGTH FirstName $15 LastName $15 Name $30 Type $1 Date 8;
    INPUT FirstName $ LastName $ Age Type $ Date :MMDDYY10. Score1 Score2 Score3;
    Name = CATX(' ', FirstName, LastName);
    DROP FirstName LastName;
    FORMAT Date DDMMYY10.;
RUN;
PROC PRINT DATA=Pumpkin_ContestData;
RUN;



