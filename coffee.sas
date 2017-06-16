proc import 
  datafile='/home/ken/coffee.txt'
  dbms=dlm
  out=coffee;
  delimiter=' ';
  getnames=yes;

proc print;
