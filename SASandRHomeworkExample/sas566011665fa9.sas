OPTIONS NONUMBER NODATE PAGESIZE = MAX FORMCHAR = '|----|+|---+=|-/<>*' FORMDLIM=' ';title;
ods noproctitle;
ods listing close;
ods graphics /imagename=' sasassraw ' ;
ods html gpath='  ' file=' sas566011665fa9.html ' (no_top_matter no_bottom_matter) style=journal;
ods html path="c:\Users\david\Desktop\MSDS\MSDS6371\Homework\Week11\SASout" gpath="SASout"
STYLE=STATISTICAL  body="sasass.html";
PROC IMPORT DATAFILE="c:\Users\david\Desktop\MSDS\MSDS6371\Homework\Week11\Data\Metabolism.csv"
OUT=metabolism
DBMS=CSV
REPLACE;
data powermetabolism;
set metabolism;
powerMass=Mass**(3/4);
Metab=Metab;
run;
proc glm data=powermetabolism plots=all alpha=.05;
model Metab=powerMass / CLPARM;
run;
