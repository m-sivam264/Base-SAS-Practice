
title "Task -1: Read a space-separated file with missing values";

data task_1;
	infile datalines missover;
	input name $ age;
	datalines;
John 25
Alice
Bob 30
;
run;
proc print data=task_1; run;
title;

title "Task -2 : Read a pipe-delimited file";
data task_2;
	infile datalines dlm = '|';
	input Name $ Age Country $;
	datalines;
John|25|India
Alice|30|Canada
;
run;
proc print data=task_2; run;
title;

title "Task -3 : Read a CSV file with quoted values and missing fields";
data task_3;
	infile datalines DSD DLM = "," missover;
	Input Name : $20. Age : 2. Country : $10.;
	datalines;
"John Smith",25,"India"
"Alice Brown",,"Canada"
;
run;
proc print data=task_3; run;
title;

title "Task -4 : Read only the first 2 records from a data";
data task_4;
	infile datalines Obs=2;
	input Name $ Age;
	/*if _N_ > 2 then stop; ---> OBS= is not valid in INFILE , that us why _N_ logic used here*/ 
	datalines;	
John 25
Alice 30
Bob 35
;
proc print data=task_4; run;
title;
