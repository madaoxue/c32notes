proc import
  datafile='/home/ken/monthly.csv'
  out=sales1
  dbms=csv
  replace;
  getnames=yes;
  
proc print;  
  format month date20.;

proc print;
    