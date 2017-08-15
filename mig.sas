proc import datafile="migraine.txt" out=mig dbms=dlm replace;
    getnames=yes;
proc print;    
    
