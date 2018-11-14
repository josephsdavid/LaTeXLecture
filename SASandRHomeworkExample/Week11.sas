PROC IMPORT DATAFILE="c:\Users\david\Desktop\MSDS\MSDS6371\Homework\Week11\Data\Autism.csv"
            OUT=autism
            DBMS=CSV
            REPLACE;
Proc print data=autism;
run;
