%clear;
clc;close all;

T(:,2)=Q;
[Tcloud,Tlocal]=groupT(T,Tnum); %T(:,2)
[C,L] = rank(Tcloud,Tlocal);    %云端执行序列C;本地执行序列L
[t,e] = sysload(C,L,Ptu,Pcpu);  %t,e
K = rt*t+re*e;


T(:,2)=Q1;
[Tcloud,Tlocal]=groupT(T,Tnum); %T(:,2)
[C,L] = rank(Tcloud,Tlocal);    %云端执行序列C;本地执行序列L
[t1,e1] = sysload(C,L,Ptu,Pcpu);  %t,e
K1 = rt*t1+re*e1;

T(:,2)=Q0;
[Tcloud,Tlocal]=groupT(T,Tnum); %T(:,2)
[C,L] = rank(Tcloud,Tlocal);    %云端执行序列C;本地执行序列L
[t0,e0] = sysload(C,L,Ptu,Pcpu);  %t,e
K0 = rt*t0+re*e0;

