close all;clear;clc;    
load('data_CMMNO.mat');
fe=5000;
N=round(fe/2); 
[out,F,T] = spectrogram(data_CMMNO,ones(1,N),N/2,N*4,fe);              
out=abs(out).^2;  
vrange = [15 35];                                              
engr=([
1.025459229
5.316666667
29
15.225
6.619565217]);
nH=10;
Tsm=5;
Fve = TFRE_IMOPA(out,fe,T,F,vrange,nH,engr,Tsm);

