proc import
  datafile='/home/ken/monthly2.csv'
  out=sales1
  dbms=csv
  replace;
  getnames=yes;
  
proc print;
    
