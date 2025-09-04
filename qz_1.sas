

data patientvisits;
	input Id : 3. Visit_date : date9. Weight : 4.1 Visit_Type : $ 10. @@;
	format Visit_date date9.;
	datalines;
101 05JUL2025 65.4 Routine     102 06JUL2025 70.2 FollowUp
103 07JUL2025 68.0 Routine     104 08JUL2025 72.5 Emergency
;
run;

proc print data=patientvisits; run;