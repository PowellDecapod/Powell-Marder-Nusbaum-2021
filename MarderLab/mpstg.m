
%puts all start/stop phases into a matrix to graph
%addpath([pwd '\matlab scripts']);

%Front End On
%Saline
pd_start_start_Saline = startphase('Start_Saline_PD_bursts.txt');
pd_stop_start_Saline= stopphase('Start_Saline_PD_bursts.txt');

lp_start_start_Saline= startphase('Start_Saline_LP_bursts.txt');
lp_stop_start_Saline= stopphase('Start_Saline_LP_bursts.txt');

py_start_start_Saline= startphase('Start_Saline_PY_bursts.txt');
py_stop_start_Saline= stopphase('Start_Saline_PY_bursts.txt');


pd_startphase_start_Saline = phase(pd_start_start_Saline, pd_start_start_Saline);
pd_stopphase_start_Saline = phase(pd_stop_start_Saline, pd_start_start_Saline);
lp_startphase_start_Saline= phase (lp_start_start_Saline, pd_start_start_Saline);
lp_stopphase_start_Saline= phase(lp_stop_start_Saline, pd_start_start_Saline);
py_startphase_start_Saline= phase(py_start_start_Saline, pd_start_start_Saline);
py_stopphase_start_Saline= phase(py_stop_start_Saline, pd_start_start_Saline);
 
 

for n = 1:length(py_stopphase_start_Saline)
    if py_stopphase_start_Saline(n) < 0.3
        py_stopphase_start_Saline(n) = py_stopphase_start_Saline(n) + 1;
    end
end
    


mean_pdstartphase_start_Saline= nanmean(pd_startphase_start_Saline);
mean_pdstopphase_start_Saline= nanmean(pd_stopphase_start_Saline);
mean_lpstartphase_start_Saline= nanmean(lp_startphase_start_Saline);
mean_lpstopphase_start_Saline= nanmean(lp_stopphase_start_Saline);
mean_pystartphase_start_Saline= nanmean(py_startphase_start_Saline);
mean_pystopphase_start_Saline= nanmean(py_stopphase_start_Saline);

meanstart_startstops_Saline=[];
meanstart_startstops_Saline(1)= mean_pdstartphase_start_Saline;
meanstart_startstops_Saline(2)= mean_pdstopphase_start_Saline;
meanstart_startstops_Saline(3)= mean_lpstartphase_start_Saline;
meanstart_startstops_Saline(4)= mean_lpstopphase_start_Saline;
meanstart_startstops_Saline(5)= mean_pystartphase_start_Saline;
meanstart_startstops_Saline(6)= mean_pystopphase_start_Saline;

std_pdstartphase_start_Saline= nanstd(pd_startphase_start_Saline);
std_pdstopphase_start_Saline= nanstd(pd_stopphase_start_Saline);
std_lpstartphase_start_Saline= nanstd(lp_startphase_start_Saline);
std_lpstopphase_start_Saline= nanstd(lp_stopphase_start_Saline);
std_pystartphase_start_Saline= nanstd(py_startphase_start_Saline);
std_pystopphase_start_Saline= nanstd(py_stopphase_start_Saline);

stdstart_startstops_Saline=[];
stdstart_startstops_Saline(1)= std_pdstartphase_start_Saline;
stdstart_startstops_Saline(2)= std_pdstopphase_start_Saline;
stdstart_startstops_Saline(3)= std_lpstartphase_start_Saline;
stdstart_startstops_Saline(4)= std_lpstopphase_start_Saline;
stdstart_startstops_Saline(5)= std_pystartphase_start_Saline;
stdstart_startstops_Saline(6)= std_pystopphase_start_Saline;

%10^-10
pd_start_start_10 = startphase('Start_10_PD_bursts.txt');
pd_stop_start_10= stopphase('Start_10_PD_bursts.txt');

lp_start_start_10= startphase('Start_10_LP_bursts.txt');
lp_stop_start_10= stopphase('Start_10_LP_bursts.txt');

py_start_start_10= startphase('Start_10_PY_bursts.txt');
py_stop_start_10= stopphase('Start_10_PY_bursts.txt');



pd_startphase_start_10 = phase(pd_start_start_10, pd_start_start_10);
pd_stopphase_start_10 = phase(pd_stop_start_10, pd_start_start_10);
lp_startphase_start_10= phase (lp_start_start_10, pd_start_start_10);
lp_stopphase_start_10= phase(lp_stop_start_10, pd_start_start_10);
py_startphase_start_10= phase(py_start_start_10, pd_start_start_10);
py_stopphase_start_10= phase(py_stop_start_10, pd_start_start_10);
 
 

for n = 1:length(py_stopphase_start_10)
    if py_stopphase_start_10(n) < 0.3
        py_stopphase_start_10(n) = py_stopphase_start_10(n) + 1;
    end
end
    


mean_pdstartphase_start_10= nanmean(pd_startphase_start_10);
mean_pdstopphase_start_10= nanmean(pd_stopphase_start_10);
mean_lpstartphase_start_10= nanmean(lp_startphase_start_10);
mean_lpstopphase_start_10= nanmean(lp_stopphase_start_10);
mean_pystartphase_start_10= nanmean(py_startphase_start_10);
mean_pystopphase_start_10= nanmean(py_stopphase_start_10);

meanstart_startstops_10=[];
meanstart_startstops_10(1)= mean_pdstartphase_start_10;
meanstart_startstops_10(2)= mean_pdstopphase_start_10;
meanstart_startstops_10(3)= mean_lpstartphase_start_10;
meanstart_startstops_10(4)= mean_lpstopphase_start_10;
meanstart_startstops_10(5)= mean_pystartphase_start_10;
meanstart_startstops_10(6)= mean_pystopphase_start_10;

std_pdstartphase_start_10= nanstd(pd_startphase_start_10);
std_pdstopphase_start_10= nanstd(pd_stopphase_start_10);
std_lpstartphase_start_10= nanstd(lp_startphase_start_10);
std_lpstopphase_start_10= nanstd(lp_stopphase_start_10);
std_pystartphase_start_10= nanstd(py_startphase_start_10);
std_pystopphase_start_10= nanstd(py_stopphase_start_10);

stdstart_startstops_10=[];
stdstart_startstops_10(1)= std_pdstartphase_start_10;
stdstart_startstops_10(2)= std_pdstopphase_start_10;
stdstart_startstops_10(3)= std_lpstartphase_start_10;
stdstart_startstops_10(4)= std_lpstopphase_start_10;
stdstart_startstops_10(5)= std_pystartphase_start_10;
stdstart_startstops_10(6)= std_pystopphase_start_10;


%10^-09
pd_start_start_09 = startphase('Start_09_PD_bursts.txt');
pd_stop_start_09= stopphase('Start_09_PD_bursts.txt');

lp_start_start_09= startphase('Start_09_LP_bursts.txt');
lp_stop_start_09= stopphase('Start_09_LP_bursts.txt');

py_start_start_09= startphase('Start_09_PY_bursts.txt');
py_stop_start_09= stopphase('Start_09_PY_bursts.txt');



pd_startphase_start_09 = phase(pd_start_start_09, pd_start_start_09);
pd_stopphase_start_09 = phase(pd_stop_start_09, pd_start_start_09);
lp_startphase_start_09= phase (lp_start_start_09, pd_start_start_09);
lp_stopphase_start_09= phase(lp_stop_start_09, pd_start_start_09);
py_startphase_start_09= phase(py_start_start_09, pd_start_start_09);
py_stopphase_start_09= phase(py_stop_start_09, pd_start_start_09);
 
 

for n = 1:length(py_stopphase_start_09)
    if py_stopphase_start_09(n) < 0.3
        py_stopphase_start_09(n) = py_stopphase_start_09(n) + 1;
    end
end
    


mean_pdstartphase_start_09= nanmean(pd_startphase_start_09);
mean_pdstopphase_start_09= nanmean(pd_stopphase_start_09);
mean_lpstartphase_start_09= nanmean(lp_startphase_start_09);
mean_lpstopphase_start_09= nanmean(lp_stopphase_start_09);
mean_pystartphase_start_09= nanmean(py_startphase_start_09);
mean_pystopphase_start_09= nanmean(py_stopphase_start_09);

meanstart_startstops_09=[];
meanstart_startstops_09(1)= mean_pdstartphase_start_09;
meanstart_startstops_09(2)= mean_pdstopphase_start_09;
meanstart_startstops_09(3)= mean_lpstartphase_start_09;
meanstart_startstops_09(4)= mean_lpstopphase_start_09;
meanstart_startstops_09(5)= mean_pystartphase_start_09;
meanstart_startstops_09(6)= mean_pystopphase_start_09;

std_pdstartphase_start_09= nanstd(pd_startphase_start_09);
std_pdstopphase_start_09= nanstd(pd_stopphase_start_09);
std_lpstartphase_start_09= nanstd(lp_startphase_start_09);
std_lpstopphase_start_09= nanstd(lp_stopphase_start_09);
std_pystartphase_start_09= nanstd(py_startphase_start_09);
std_pystopphase_start_09= nanstd(py_stopphase_start_09);

stdstart_startstops_09=[];
stdstart_startstops_09(1)= std_pdstartphase_start_09;
stdstart_startstops_09(2)= std_pdstopphase_start_09;
stdstart_startstops_09(3)= std_lpstartphase_start_09;
stdstart_startstops_09(4)= std_lpstopphase_start_09;
stdstart_startstops_09(5)= std_pystartphase_start_09;
stdstart_startstops_09(6)= std_pystopphase_start_09;



%10^-08
pd_start_start_08 = startphase('Start_08_PD_bursts.txt');
pd_stop_start_08= stopphase('Start_08_PD_bursts.txt');

lp_start_start_08= startphase('Start_08_LP_bursts.txt');
lp_stop_start_08= stopphase('Start_08_LP_bursts.txt');

py_start_start_08= startphase('Start_08_PY_bursts.txt');
py_stop_start_08= stopphase('Start_08_PY_bursts.txt');



pd_startphase_start_08 = phase(pd_start_start_08, pd_start_start_08);
pd_stopphase_start_08 = phase(pd_stop_start_08, pd_start_start_08);
lp_startphase_start_08= phase (lp_start_start_08, pd_start_start_08);
lp_stopphase_start_08= phase(lp_stop_start_08, pd_start_start_08);
py_startphase_start_08= phase(py_start_start_08, pd_start_start_08);
py_stopphase_start_08= phase(py_stop_start_08, pd_start_start_08);
 
 

for n = 1:length(py_stopphase_start_08)
    if py_stopphase_start_08(n) < 0.3
        py_stopphase_start_08(n) = py_stopphase_start_08(n) + 1;
    end
end
    


mean_pdstartphase_start_08= nanmean(pd_startphase_start_08);
mean_pdstopphase_start_08= nanmean(pd_stopphase_start_08);
mean_lpstartphase_start_08= nanmean(lp_startphase_start_08);
mean_lpstopphase_start_08= nanmean(lp_stopphase_start_08);
mean_pystartphase_start_08= nanmean(py_startphase_start_08);
mean_pystopphase_start_08= nanmean(py_stopphase_start_08);

meanstart_startstops_08=[];
meanstart_startstops_08(1)= mean_pdstartphase_start_08;
meanstart_startstops_08(2)= mean_pdstopphase_start_08;
meanstart_startstops_08(3)= mean_lpstartphase_start_08;
meanstart_startstops_08(4)= mean_lpstopphase_start_08;
meanstart_startstops_08(5)= mean_pystartphase_start_08;
meanstart_startstops_08(6)= mean_pystopphase_start_08;

std_pdstartphase_start_08= nanstd(pd_startphase_start_08);
std_pdstopphase_start_08= nanstd(pd_stopphase_start_08);
std_lpstartphase_start_08= nanstd(lp_startphase_start_08);
std_lpstopphase_start_08= nanstd(lp_stopphase_start_08);
std_pystartphase_start_08= nanstd(py_startphase_start_08);
std_pystopphase_start_08= nanstd(py_stopphase_start_08);

stdstart_startstops_08=[];
stdstart_startstops_08(1)= std_pdstartphase_start_08;
stdstart_startstops_08(2)= std_pdstopphase_start_08;
stdstart_startstops_08(3)= std_lpstartphase_start_08;
stdstart_startstops_08(4)= std_lpstopphase_start_08;
stdstart_startstops_08(5)= std_pystartphase_start_08;
stdstart_startstops_08(6)= std_pystopphase_start_08;


%10^-07

pd_start_start_07 = startphase('Start_07_PD_bursts.txt');
pd_stop_start_07= stopphase('Start_07_PD_bursts.txt');

lp_start_start_07= startphase('Start_07_LP_bursts.txt');
lp_stop_start_07= stopphase('Start_07_LP_bursts.txt');

py_start_start_07= startphase('Start_07_PY_bursts.txt');
py_stop_start_07= stopphase('Start_07_PY_bursts.txt');



pd_startphase_start_07 = phase(pd_start_start_07, pd_start_start_07);
pd_stopphase_start_07 = phase(pd_stop_start_07, pd_start_start_07);
lp_startphase_start_07= phase (lp_start_start_07, pd_start_start_07);
lp_stopphase_start_07= phase(lp_stop_start_07, pd_start_start_07);
py_startphase_start_07= phase(py_start_start_07, pd_start_start_07);
py_stopphase_start_07= phase(py_stop_start_07, pd_start_start_07);
 
 

for n = 1:length(py_stopphase_start_07)
    if py_stopphase_start_07(n) < 0.3
        py_stopphase_start_07(n) = py_stopphase_start_07(n) + 1;
    end
end
    


mean_pdstartphase_start_07= nanmean(pd_startphase_start_07);
mean_pdstopphase_start_07= nanmean(pd_stopphase_start_07);
mean_lpstartphase_start_07= nanmean(lp_startphase_start_07);
mean_lpstopphase_start_07= nanmean(lp_stopphase_start_07);
mean_pystartphase_start_07= nanmean(py_startphase_start_07);
mean_pystopphase_start_07= nanmean(py_stopphase_start_07);

meanstart_startstops_07=[];
meanstart_startstops_07(1)= mean_pdstartphase_start_07;
meanstart_startstops_07(2)= mean_pdstopphase_start_07;
meanstart_startstops_07(3)= mean_lpstartphase_start_07;
meanstart_startstops_07(4)= mean_lpstopphase_start_07;
meanstart_startstops_07(5)= mean_pystartphase_start_07;
meanstart_startstops_07(6)= mean_pystopphase_start_07;

std_pdstartphase_start_07= nanstd(pd_startphase_start_07);
std_pdstopphase_start_07= nanstd(pd_stopphase_start_07);
std_lpstartphase_start_07= nanstd(lp_startphase_start_07);
std_lpstopphase_start_07= nanstd(lp_stopphase_start_07);
std_pystartphase_start_07= nanstd(py_startphase_start_07);
std_pystopphase_start_07= nanstd(py_stopphase_start_07);

stdstart_startstops_07=[];
stdstart_startstops_07(1)= std_pdstartphase_start_07;
stdstart_startstops_07(2)= std_pdstopphase_start_07;
stdstart_startstops_07(3)= std_lpstartphase_start_07;
stdstart_startstops_07(4)= std_lpstopphase_start_07;
stdstart_startstops_07(5)= std_pystartphase_start_07;
stdstart_startstops_07(6)= std_pystopphase_start_07;


%10^-06
pd_start_start_06 = startphase('Start_06_PD_bursts.txt');
pd_stop_start_06= stopphase('Start_06_PD_bursts.txt');

lp_start_start_06= startphase('Start_06_LP_bursts.txt');
lp_stop_start_06= stopphase('Start_06_LP_bursts.txt');

py_start_start_06= startphase('Start_06_PY_bursts.txt');
py_stop_start_06= stopphase('Start_06_PY_bursts.txt');



pd_startphase_start_06 = phase(pd_start_start_06, pd_start_start_06);
pd_stopphase_start_06 = phase(pd_stop_start_06, pd_start_start_06);
lp_startphase_start_06= phase (lp_start_start_06, pd_start_start_06);
lp_stopphase_start_06= phase(lp_stop_start_06, pd_start_start_06);
py_startphase_start_06= phase(py_start_start_06, pd_start_start_06);
py_stopphase_start_06= phase(py_stop_start_06, pd_start_start_06);
 
 

for n = 1:length(py_stopphase_start_06)
    if py_stopphase_start_06(n) < 0.3
        py_stopphase_start_06(n) = py_stopphase_start_06(n) + 1;
    end
end
    


mean_pdstartphase_start_06= nanmean(pd_startphase_start_06);
mean_pdstopphase_start_06= nanmean(pd_stopphase_start_06);
mean_lpstartphase_start_06= nanmean(lp_startphase_start_06);
mean_lpstopphase_start_06= nanmean(lp_stopphase_start_06);
mean_pystartphase_start_06= nanmean(py_startphase_start_06);
mean_pystopphase_start_06= nanmean(py_stopphase_start_06);

meanstart_startstops_06=[];
meanstart_startstops_06(1)= mean_pdstartphase_start_06;
meanstart_startstops_06(2)= mean_pdstopphase_start_06;
meanstart_startstops_06(3)= mean_lpstartphase_start_06;
meanstart_startstops_06(4)= mean_lpstopphase_start_06;
meanstart_startstops_06(5)= mean_pystartphase_start_06;
meanstart_startstops_06(6)= mean_pystopphase_start_06;

std_pdstartphase_start_06= nanstd(pd_startphase_start_06);
std_pdstopphase_start_06= nanstd(pd_stopphase_start_06);
std_lpstartphase_start_06= nanstd(lp_startphase_start_06);
std_lpstopphase_start_06= nanstd(lp_stopphase_start_06);
std_pystartphase_start_06= nanstd(py_startphase_start_06);
std_pystopphase_start_06= nanstd(py_stopphase_start_06);

stdstart_startstops_06=[];
stdstart_startstops_06(1)= std_pdstartphase_start_06;
stdstart_startstops_06(2)= std_pdstopphase_start_06;
stdstart_startstops_06(3)= std_lpstartphase_start_06;
stdstart_startstops_06(4)= std_lpstopphase_start_06;
stdstart_startstops_06(5)= std_pystartphase_start_06;
stdstart_startstops_06(6)= std_pystopphase_start_06;


%10^-05
pd_start_start_05 = startphase('Start_05_PD_bursts.txt');
pd_stop_start_05= stopphase('Start_05_PD_bursts.txt');

lp_start_start_05= startphase('Start_05_LP_bursts.txt');
lp_stop_start_05= stopphase('Start_05_LP_bursts.txt');

py_start_start_05= startphase('Start_05_PY_bursts.txt');
py_stop_start_05= stopphase('Start_05_PY_bursts.txt');



pd_startphase_start_05 = phase(pd_start_start_05, pd_start_start_05);
pd_stopphase_start_05 = phase(pd_stop_start_05, pd_start_start_05);
lp_startphase_start_05= phase (lp_start_start_05, pd_start_start_05);
lp_stopphase_start_05= phase(lp_stop_start_05, pd_start_start_05);
py_startphase_start_05= phase(py_start_start_05, pd_start_start_05);
py_stopphase_start_05= phase(py_stop_start_05, pd_start_start_05);
 
 

for n = 1:length(py_stopphase_start_05)
    if py_stopphase_start_05(n) < 0.3
        py_stopphase_start_05(n) = py_stopphase_start_05(n) + 1;
    end
end
    


mean_pdstartphase_start_05= nanmean(pd_startphase_start_05);
mean_pdstopphase_start_05= nanmean(pd_stopphase_start_05);
mean_lpstartphase_start_05= nanmean(lp_startphase_start_05);
mean_lpstopphase_start_05= nanmean(lp_stopphase_start_05);
mean_pystartphase_start_05= nanmean(py_startphase_start_05);
mean_pystopphase_start_05= nanmean(py_stopphase_start_05);

meanstart_startstops_05=[];
meanstart_startstops_05(1)= mean_pdstartphase_start_05;
meanstart_startstops_05(2)= mean_pdstopphase_start_05;
meanstart_startstops_05(3)= mean_lpstartphase_start_05;
meanstart_startstops_05(4)= mean_lpstopphase_start_05;
meanstart_startstops_05(5)= mean_pystartphase_start_05;
meanstart_startstops_05(6)= mean_pystopphase_start_05;

std_pdstartphase_start_05= nanstd(pd_startphase_start_05);
std_pdstopphase_start_05= nanstd(pd_stopphase_start_05);
std_lpstartphase_start_05= nanstd(lp_startphase_start_05);
std_lpstopphase_start_05= nanstd(lp_stopphase_start_05);
std_pystartphase_start_05= nanstd(py_startphase_start_05);
std_pystopphase_start_05= nanstd(py_stopphase_start_05);

stdstart_startstops_05=[];
stdstart_startstops_05(1)= std_pdstartphase_start_05;
stdstart_startstops_05(2)= std_pdstopphase_start_05;
stdstart_startstops_05(3)= std_lpstartphase_start_05;
stdstart_startstops_05(4)= std_lpstopphase_start_05;
stdstart_startstops_05(5)= std_pystartphase_start_05;
stdstart_startstops_05(6)= std_pystopphase_start_05;


%Wash
pd_start_start_Wash = startphase('Start_Wash_PD_bursts.txt');
pd_stop_start_Wash= stopphase('Start_Wash_PD_bursts.txt');

lp_start_start_Wash= startphase('Start_Wash_LP_bursts.txt');
lp_stop_start_Wash= stopphase('Start_Wash_LP_bursts.txt');

py_start_start_Wash= startphase('Start_Wash_PY_bursts.txt');
py_stop_start_Wash= stopphase('Start_Wash_PY_bursts.txt');



pd_startphase_start_Wash = phase(pd_start_start_Wash, pd_start_start_Wash);
pd_stopphase_start_Wash = phase(pd_stop_start_Wash, pd_start_start_Wash);
lp_startphase_start_Wash= phase (lp_start_start_Wash, pd_start_start_Wash);
lp_stopphase_start_Wash= phase(lp_stop_start_Wash, pd_start_start_Wash);
py_startphase_start_Wash= phase(py_start_start_Wash, pd_start_start_Wash);
py_stopphase_start_Wash= phase(py_stop_start_Wash, pd_start_start_Wash);
 
 

for n = 1:length(py_stopphase_start_Wash)
    if py_stopphase_start_Wash(n) < 0.3
        py_stopphase_start_Wash(n) = py_stopphase_start_Wash(n) + 1;
    end
end
    


mean_pdstartphase_start_Wash= nanmean(pd_startphase_start_Wash);
mean_pdstopphase_start_Wash= nanmean(pd_stopphase_start_Wash);
mean_lpstartphase_start_Wash= nanmean(lp_startphase_start_Wash);
mean_lpstopphase_start_Wash= nanmean(lp_stopphase_start_Wash);
mean_pystartphase_start_Wash= nanmean(py_startphase_start_Wash);
mean_pystopphase_start_Wash= nanmean(py_stopphase_start_Wash);

meanstart_startstops_Wash=[];
meanstart_startstops_Wash(1)= mean_pdstartphase_start_Wash;
meanstart_startstops_Wash(2)= mean_pdstopphase_start_Wash;
meanstart_startstops_Wash(3)= mean_lpstartphase_start_Wash;
meanstart_startstops_Wash(4)= mean_lpstopphase_start_Wash;
meanstart_startstops_Wash(5)= mean_pystartphase_start_Wash;
meanstart_startstops_Wash(6)= mean_pystopphase_start_Wash;

std_pdstartphase_start_Wash= nanstd(pd_startphase_start_Wash);
std_pdstopphase_start_Wash= nanstd(pd_stopphase_start_Wash);
std_lpstartphase_start_Wash= nanstd(lp_startphase_start_Wash);
std_lpstopphase_start_Wash= nanstd(lp_stopphase_start_Wash);
std_pystartphase_start_Wash= nanstd(py_startphase_start_Wash);
std_pystopphase_start_Wash= nanstd(py_stopphase_start_Wash);

stdstart_startstops_Wash=[];
stdstart_startstops_Wash(1)= std_pdstartphase_start_Wash;
stdstart_startstops_Wash(2)= std_pdstopphase_start_Wash;
stdstart_startstops_Wash(3)= std_lpstartphase_start_Wash;
stdstart_startstops_Wash(4)= std_lpstopphase_start_Wash;
stdstart_startstops_Wash(5)= std_pystartphase_start_Wash;
stdstart_startstops_Wash(6)= std_pystopphase_start_Wash;



figure
hold on


herrorbar( meanstart_startstops_Saline,[6.1;6.1;4.1;4.1;2.1;2.1],stdstart_startstops_Saline, 'ok');

herrorbar( meanstart_startstops_10,[5.9;5.9;3.9;3.9;1.9;1.9],stdstart_startstops_10, 'ok');

herrorbar( meanstart_startstops_09,[5.7;5.7;3.7;3.7;1.7;1.7],stdstart_startstops_09, 'ok');

herrorbar( meanstart_startstops_08,[5.5;5.5;3.5;3.5;1.5;1.5],stdstart_startstops_08, 'ok');

herrorbar( meanstart_startstops_07,[5.3;5.3;3.3;3.3;1.3;1.3],stdstart_startstops_07, 'ok');

herrorbar( meanstart_startstops_06,[5.1;5.1;3.1;3.1;1.1;1.1], stdstart_startstops_06, 'ok');

herrorbar( meanstart_startstops_05,[4.9;4.9;2.9;2.9;0.9;0.9], stdstart_startstops_05, 'ok');

herrorbar( meanstart_startstops_Wash,[4.7;4.7;2.7;2.7;0.7;0.7], stdstart_startstops_Wash, 'ok');

legend('','Saline','', '10^-10', '','10^-9','', '10^-8', '','10^-7', '','10^-6', '','10^-5', '','Wash');

title('Phase relationships of Pyloric neurons, Front end on in saline with varying [Oxotremorine]');

Start_Salinepdwidth= mean_pdstopphase_start_Saline - mean_pdstartphase_start_Saline;
Start_10pdwidth= mean_pdstopphase_start_10 - mean_pdstartphase_start_10;
Start_09pdwidth= mean_pdstopphase_start_09 - mean_pdstartphase_start_09;
Start_08pdwidth= mean_pdstopphase_start_08 - mean_pdstartphase_start_08;
Start_07pdwidth= mean_pdstopphase_start_07 - mean_pdstartphase_start_07;
Start_06pdwidth= mean_pdstopphase_start_06 - mean_pdstartphase_start_06;
Start_05pdwidth= mean_pdstopphase_start_05 - mean_pdstartphase_start_05;
Start_Washpdwidth= mean_pdstopphase_start_Wash - mean_pdstartphase_start_Wash;

Start_Salinelpwidth= mean_lpstopphase_start_Saline - mean_lpstartphase_start_Saline;
Start_10lpwidth= mean_lpstopphase_start_10 - mean_lpstartphase_start_10;
Start_09lpwidth= mean_lpstopphase_start_09 - mean_lpstartphase_start_09;
Start_08lpwidth= mean_lpstopphase_start_08 - mean_lpstartphase_start_08;
Start_07lpwidth= mean_lpstopphase_start_07 - mean_lpstartphase_start_07;
Start_06lpwidth= mean_lpstopphase_start_06 - mean_lpstartphase_start_06;
Start_05lpwidth= mean_lpstopphase_start_05 - mean_lpstartphase_start_05;
Start_Washlpwidth= mean_lpstopphase_start_Wash - mean_lpstartphase_start_Wash;

Start_Salinepywidth= mean_pystopphase_start_Saline - mean_pystartphase_start_Saline;
Start_10pywidth= mean_pystopphase_start_10 - mean_pystartphase_start_10;
Start_09pywidth= mean_pystopphase_start_09 - mean_pystartphase_start_09;
Start_08pywidth= mean_pystopphase_start_08 - mean_pystartphase_start_08;
Start_07pywidth= mean_pystopphase_start_07 - mean_pystartphase_start_07;
Start_06pywidth= mean_pystopphase_start_06 - mean_pystartphase_start_06;
Start_05pywidth= mean_pystopphase_start_05 - mean_pystartphase_start_05;
Start_Washpywidth= mean_pystopphase_start_Wash - mean_pystartphase_start_Wash;


rectangle('Position', [mean_pdstartphase_start_Saline, 6, Start_Salinepdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','r'); 
rectangle('Position', [mean_pdstartphase_start_10, 5.8, Start_10pdwidth, 0.2], 'EdgeColor','k', 'FaceColor', 'g');
rectangle('Position', [mean_pdstartphase_start_09, 5.6, Start_09pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','b');
rectangle('Position', [mean_pdstartphase_start_08, 5.4, Start_08pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'y');
rectangle('Position', [mean_pdstartphase_start_07, 5.2, Start_07pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'm');
rectangle('Position', [mean_pdstartphase_start_06, 5.0, Start_06pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'c');
rectangle('Position', [mean_pdstartphase_start_05, 4.8, Start_05pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'r');
rectangle('Position', [mean_pdstartphase_start_Wash, 4.6, Start_Washpdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'g');

rectangle('Position', [mean_lpstartphase_start_Saline, 4.0, Start_Salinelpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','r'); 
rectangle('Position', [mean_lpstartphase_start_10, 3.8, Start_10lpwidth ,0.2],'EdgeColor','k', 'FaceColor', 'g');
rectangle('Position', [mean_lpstartphase_start_09, 3.6, Start_09lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','b');
rectangle('Position', [mean_lpstartphase_start_08, 3.4, Start_08lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'y');
rectangle('Position', [mean_lpstartphase_start_07, 3.2, Start_07lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'm');
rectangle('Position', [mean_lpstartphase_start_06, 3.0, Start_06lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'c');
rectangle('Position', [mean_lpstartphase_start_05, 2.8, Start_05lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'r');
rectangle('Position', [mean_lpstartphase_start_Wash, 2.6, Start_Washlpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'g');

rectangle('Position', [mean_pystartphase_start_Saline, 2.0, Start_Salinepywidth, 0.2], 'EdgeColor', 'k', 'FaceColor','r'); 
rectangle('Position', [mean_pystartphase_start_10, 1.8, Start_10pywidth ,0.2],'EdgeColor','k', 'FaceColor', 'g');
rectangle('Position', [mean_pystartphase_start_09, 1.6, Start_09pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor','b');
rectangle('Position', [mean_pystartphase_start_08, 1.4, Start_08pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'y');
rectangle('Position', [mean_pystartphase_start_07, 1.2, Start_07pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'm');
rectangle('Position', [mean_pystartphase_start_06, 1.0, Start_06pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'c');
rectangle('Position', [mean_pystartphase_start_05, 0.8, Start_05pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'r');
rectangle('Position', [mean_pystartphase_start_Wash, 0.6, Start_Washpywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'g');

allmeansstart=[meanstart_startstops_Saline; meanstart_startstops_10; meanstart_startstops_09; meanstart_startstops_08; meanstart_startstops_07; meanstart_startstops_06; meanstart_startstops_05; meanstart_startstops_Wash];

allmeansstart=allmeansstart';

save('allmeansstart', 'allmeansstart');

allstdstart=[stdstart_startstops_Saline; stdstart_startstops_10; stdstart_startstops_09; stdstart_startstops_08; stdstart_startstops_07; stdstart_startstops_06; stdstart_startstops_05; stdstart_startstops_Wash];

allstdstart=allstdstart';
save('allstdstart', 'allstdstart');


%%decentralized

%Saline

pd_decstart_Saline = startphase('Dec_Saline_PD_bursts.txt');
pd_decstop_Saline = stopphase('Dec_Saline_PD_bursts.txt');

lp_decstart_Saline = startphase('Dec_Saline_LP_bursts.txt');
lp_decstop_Saline = stopphase('Dec_Saline_LP_bursts.txt');

py_decstart_Saline = startphase('Dec_Saline_PY_bursts.txt');
py_decstop_Saline = stopphase('Dec_Saline_PY_bursts.txt');


pdd_startphase_Saline = phase(pd_decstart_Saline, pd_decstart_Saline);
pdd_stopphase_Saline = phase(pd_decstop_Saline, pd_decstart_Saline);
lpd_startphase_Saline = phase(lp_decstart_Saline,pd_decstart_Saline);
lpd_stopphase_Saline = phase(lp_decstop_Saline, pd_decstart_Saline);
pyd_startphase_Saline = phase(py_decstart_Saline, pd_decstart_Saline);
pyd_stopphase_Saline = phase(py_decstop_Saline, pd_decstart_Saline);


for n = 1:length(pyd_stopphase_Saline)
    if pyd_stopphase_Saline(n) < 0.3
        pyd_stopphase_Saline(n) = pyd_stopphase_Saline(n) + 1;
    end
end
    

mean_pddstartphase_Saline= nanmean(pdd_startphase_Saline);
mean_pddstopphase_Saline= nanmean(pdd_stopphase_Saline);
mean_lpdstartphase_Saline= nanmean(lpd_startphase_Saline);
mean_lpdstopphase_Saline= nanmean(lpd_stopphase_Saline);
mean_pydstartphase_Saline= nanmean(pyd_startphase_Saline);
mean_pydstopphase_Saline= nanmean(pyd_stopphase_Saline);

meanDec_startstops_Saline=[];
meanDec_startstops_Saline(1)= mean_pddstartphase_Saline;
meanDec_startstops_Saline(2)= mean_pddstopphase_Saline;
meanDec_startstops_Saline(3)= mean_lpdstartphase_Saline;
meanDec_startstops_Saline(4)= mean_lpdstopphase_Saline;
meanDec_startstops_Saline(5)= mean_pydstartphase_Saline;
meanDec_startstops_Saline(6)= mean_pydstopphase_Saline;

std_pddstartphase_Saline= nanstd(pdd_startphase_Saline);
std_pddstopphase_Saline= nanstd(pdd_stopphase_Saline);
std_lpdstartphase_Saline= nanstd(lpd_startphase_Saline);
std_lpdstopphase_Saline= nanstd(lpd_stopphase_Saline);
std_pydstartphase_Saline= nanstd(pyd_startphase_Saline);
std_pydstopphase_Saline= nanstd(pyd_stopphase_Saline);

stdDec_startstops_Saline=[];
stdDec_startstops_Saline(1)= std_pddstartphase_Saline;
stdDec_startstops_Saline(2)= std_pddstopphase_Saline;
stdDec_startstops_Saline(3)= std_lpdstartphase_Saline;
stdDec_startstops_Saline(4)= std_lpdstopphase_Saline;
stdDec_startstops_Saline(5)= std_pydstartphase_Saline;
stdDec_startstops_Saline(6)= std_pydstopphase_Saline;


%10^10
pdd_start_10 = startphase('Dec_10_PD_bursts.txt');
pdd_stop_10= stopphase('Dec_10_PD_bursts.txt');

lpd_start_10= startphase('Dec_10_LP_bursts.txt');
lpd_stop_10= stopphase('Dec_10_LP_bursts.txt');

pyd_start_10= startphase('Dec_10_PY_bursts.txt');
pyd_stop_10= stopphase('Dec_10_PY_bursts.txt');


pdd_startphase_10 = phase(pdd_start_10, pdd_start_10);
pdd_stopphase_10 = phase(pdd_stop_10, pdd_start_10);
lpd_startphase_10= phase (lpd_start_10, pdd_start_10);
lpd_stopphase_10= phase(lpd_stop_10, pdd_start_10);
pyd_startphase_10= phase(pyd_start_10, pdd_start_10);
pyd_stopphase_10= phase(pyd_stop_10, pdd_start_10);


for n = 1:length(pyd_stopphase_10)
    if pyd_stopphase_10(n) < 0.3
        pyd_stopphase_10(n) = pyd_stopphase_10(n) + 1;
    end
end
    

mean_pddstartphase_10= nanmean(pdd_startphase_10);
mean_pddstopphase_10= nanmean(pdd_stopphase_10);
mean_lpdstartphase_10= nanmean(lpd_startphase_10);
mean_lpdstopphase_10= nanmean(lpd_stopphase_10);
mean_pydstartphase_10= nanmean(pyd_startphase_10);
mean_pydstopphase_10= nanmean(pyd_stopphase_10);

meanDec_startstops_10=[];
meanDec_startstops_10(1)= mean_pddstartphase_10;
meanDec_startstops_10(2)= mean_pddstopphase_10;
meanDec_startstops_10(3)= mean_lpdstartphase_10;
meanDec_startstops_10(4)= mean_lpdstopphase_10;
meanDec_startstops_10(5)= mean_pydstartphase_10;
meanDec_startstops_10(6)= mean_pydstopphase_10;

std_pddstartphase_10= nanstd(pdd_startphase_10);
std_pddstopphase_10= nanstd(pdd_stopphase_10);
std_lpdstartphase_10= nanstd(lpd_startphase_10);
std_lpdstopphase_10= nanstd(lpd_stopphase_10);
std_pydstartphase_10= nanstd(pyd_startphase_10);
std_pydstopphase_10= nanstd(pyd_stopphase_10);

stdDec_startstops_10=[];
stdDec_startstops_10(1)= std_pddstartphase_10;
stdDec_startstops_10(2)= std_pddstopphase_10;
stdDec_startstops_10(3)= std_lpdstartphase_10;
stdDec_startstops_10(4)= std_lpdstopphase_10;
stdDec_startstops_10(5)= std_pydstartphase_10;
stdDec_startstops_10(6)= std_pydstopphase_10;


%10^-09
pdd_start_09 = startphase('Dec_09_PD_bursts.txt');
pdd_stop_09= stopphase('Dec_09_PD_bursts.txt');

lpd_start_09= startphase('Dec_09_LP_bursts.txt');
lpd_stop_09= stopphase('Dec_09_LP_bursts.txt');

pyd_start_09= startphase('Dec_09_PY_bursts.txt');
pyd_stop_09= stopphase('Dec_09_PY_bursts.txt');


pdd_startphase_09 = phase(pdd_start_09, pdd_start_09);
pdd_stopphase_09 = phase(pdd_stop_09, pdd_start_09);
lpd_startphase_09= phase (lpd_start_09, pdd_start_09);
lpd_stopphase_09= phase(lpd_stop_09, pdd_start_09);
pyd_startphase_09= phase(pyd_start_09, pdd_start_09);
pyd_stopphase_09= phase(pyd_stop_09, pdd_start_09);


for n = 1:length(pyd_stopphase_09)
    if pyd_stopphase_09(n) < 0.3
        pyd_stopphase_09(n) = pyd_stopphase_09(n) + 1;
    end
end
    

mean_pddstartphase_09= nanmean(pdd_startphase_09);
mean_pddstopphase_09= nanmean(pdd_stopphase_09);
mean_lpdstartphase_09= nanmean(lpd_startphase_09);
mean_lpdstopphase_09= nanmean(lpd_stopphase_09);
mean_pydstartphase_09= nanmean(pyd_startphase_09);
mean_pydstopphase_09= nanmean(pyd_stopphase_09);

meanDec_startstops_09=[];
meanDec_startstops_09(1)= mean_pddstartphase_09;
meanDec_startstops_09(2)= mean_pddstopphase_09;
meanDec_startstops_09(3)= mean_lpdstartphase_09;
meanDec_startstops_09(4)= mean_lpdstopphase_09;
meanDec_startstops_09(5)= mean_pydstartphase_09;
meanDec_startstops_09(6)= mean_pydstopphase_09;

std_pddstartphase_09= nanstd(pdd_startphase_09);
std_pddstopphase_09= nanstd(pdd_stopphase_09);
std_lpdstartphase_09= nanstd(lpd_startphase_09);
std_lpdstopphase_09= nanstd(lpd_stopphase_09);
std_pydstartphase_09= nanstd(pyd_startphase_09);
std_pydstopphase_09= nanstd(pyd_stopphase_09);

stdDec_startstops_09=[];
stdDec_startstops_09(1)= std_pddstartphase_09;
stdDec_startstops_09(2)= std_pddstopphase_09;
stdDec_startstops_09(3)= std_lpdstartphase_09;
stdDec_startstops_09(4)= std_lpdstopphase_09;
stdDec_startstops_09(5)= std_pydstartphase_09;
stdDec_startstops_09(6)= std_pydstopphase_09;


%10^-08
pdd_start_08 = startphase('Dec_08_PD_bursts.txt');
pdd_stop_08= stopphase('Dec_08_PD_bursts.txt');

lpd_start_08= startphase('Dec_08_LP_bursts.txt');
lpd_stop_08= stopphase('Dec_08_LP_bursts.txt');

pyd_start_08= startphase('Dec_08_PY_bursts.txt');
pyd_stop_08= stopphase('Dec_08_PY_bursts.txt');


pdd_startphase_08 = phase(pdd_start_08, pdd_start_08);
pdd_stopphase_08 = phase(pdd_stop_08, pdd_start_08);
lpd_startphase_08= phase (lpd_start_08, pdd_start_08);
lpd_stopphase_08= phase(lpd_stop_08, pdd_start_08);
pyd_startphase_08= phase(pyd_start_08, pdd_start_08);
pyd_stopphase_08= phase(pyd_stop_08, pdd_start_08);


for n = 1:length(pyd_stopphase_08)
    if pyd_stopphase_08(n) < 0.3
        pyd_stopphase_08(n) = pyd_stopphase_08(n) + 1;
    end
end
    

mean_pddstartphase_08= nanmean(pdd_startphase_08);
mean_pddstopphase_08= nanmean(pdd_stopphase_08);
mean_lpdstartphase_08= nanmean(lpd_startphase_08);
mean_lpdstopphase_08= nanmean(lpd_stopphase_08);
mean_pydstartphase_08= nanmean(pyd_startphase_08);
mean_pydstopphase_08= nanmean(pyd_stopphase_08);

meanDec_startstops_08=[];
meanDec_startstops_08(1)= mean_pddstartphase_08;
meanDec_startstops_08(2)= mean_pddstopphase_08;
meanDec_startstops_08(3)= mean_lpdstartphase_08;
meanDec_startstops_08(4)= mean_lpdstopphase_08;
meanDec_startstops_08(5)= mean_pydstartphase_08;
meanDec_startstops_08(6)= mean_pydstopphase_08;

std_pddstartphase_08= nanstd(pdd_startphase_08);
std_pddstopphase_08= nanstd(pdd_stopphase_08);
std_lpdstartphase_08= nanstd(lpd_startphase_08);
std_lpdstopphase_08= nanstd(lpd_stopphase_08);
std_pydstartphase_08= nanstd(pyd_startphase_08);
std_pydstopphase_08= nanstd(pyd_stopphase_08);

stdDec_startstops_08=[];
stdDec_startstops_08(1)= std_pddstartphase_08;
stdDec_startstops_08(2)= std_pddstopphase_08;
stdDec_startstops_08(3)= std_lpdstartphase_08;
stdDec_startstops_08(4)= std_lpdstopphase_08;
stdDec_startstops_08(5)= std_pydstartphase_08;
stdDec_startstops_08(6)= std_pydstopphase_08;


%10^-07
pdd_start_07 = startphase('Dec_07_PD_bursts.txt');
pdd_stop_07= stopphase('Dec_07_PD_bursts.txt');

lpd_start_07= startphase('Dec_07_LP_bursts.txt');
lpd_stop_07= stopphase('Dec_07_LP_bursts.txt');

pyd_start_07= startphase('Dec_07_PY_bursts.txt');
pyd_stop_07= stopphase('Dec_07_PY_bursts.txt');


pdd_startphase_07 = phase(pdd_start_07, pdd_start_07);
pdd_stopphase_07 = phase(pdd_stop_07, pdd_start_07);
lpd_startphase_07= phase (lpd_start_07, pdd_start_07);
lpd_stopphase_07= phase(lpd_stop_07, pdd_start_07);
pyd_startphase_07= phase(pyd_start_07, pdd_start_07);
pyd_stopphase_07= phase(pyd_stop_07, pdd_start_07);


for n = 1:length(pyd_stopphase_07)
    if pyd_stopphase_07(n) < 0.3
        pyd_stopphase_07(n) = pyd_stopphase_07(n) + 1;
    end
end
    

mean_pddstartphase_07= nanmean(pdd_startphase_07);
mean_pddstopphase_07= nanmean(pdd_stopphase_07);
mean_lpdstartphase_07= nanmean(lpd_startphase_07);
mean_lpdstopphase_07= nanmean(lpd_stopphase_07);
mean_pydstartphase_07= nanmean(pyd_startphase_07);
mean_pydstopphase_07= nanmean(pyd_stopphase_07);

meanDec_startstops_07=[];
meanDec_startstops_07(1)= mean_pddstartphase_07;
meanDec_startstops_07(2)= mean_pddstopphase_07;
meanDec_startstops_07(3)= mean_lpdstartphase_07;
meanDec_startstops_07(4)= mean_lpdstopphase_07;
meanDec_startstops_07(5)= mean_pydstartphase_07;
meanDec_startstops_07(6)= mean_pydstopphase_07;

std_pddstartphase_07= nanstd(pdd_startphase_07);
std_pddstopphase_07= nanstd(pdd_stopphase_07);
std_lpdstartphase_07= nanstd(lpd_startphase_07);
std_lpdstopphase_07= nanstd(lpd_stopphase_07);
std_pydstartphase_07= nanstd(pyd_startphase_07);
std_pydstopphase_07= nanstd(pyd_stopphase_07);

stdDec_startstops_07=[];
stdDec_startstops_07(1)= std_pddstartphase_07;
stdDec_startstops_07(2)= std_pddstopphase_07;
stdDec_startstops_07(3)= std_lpdstartphase_07;
stdDec_startstops_07(4)= std_lpdstopphase_07;
stdDec_startstops_07(5)= std_pydstartphase_07;
stdDec_startstops_07(6)= std_pydstopphase_07;


%10^-06
pdd_start_06 = startphase('Dec_06_PD_bursts.txt');
pdd_stop_06= stopphase('Dec_06_PD_bursts.txt');

lpd_start_06= startphase('Dec_06_LP_bursts.txt');
lpd_stop_06= stopphase('Dec_06_LP_bursts.txt');

pyd_start_06= startphase('Dec_06_PY_bursts.txt');
pyd_stop_06= stopphase('Dec_06_PY_bursts.txt');


pdd_startphase_06 = phase(pdd_start_06, pdd_start_06);
pdd_stopphase_06 = phase(pdd_stop_06, pdd_start_06);
lpd_startphase_06= phase (lpd_start_06, pdd_start_06);
lpd_stopphase_06= phase(lpd_stop_06, pdd_start_06);
pyd_startphase_06= phase(pyd_start_06, pdd_start_06);
pyd_stopphase_06= phase(pyd_stop_06, pdd_start_06);


for n = 1:length(pyd_stopphase_06)
    if pyd_stopphase_06(n) < 0.3
        pyd_stopphase_06(n) = pyd_stopphase_06(n) + 1;
    end
end
    

mean_pddstartphase_06= nanmean(pdd_startphase_06);
mean_pddstopphase_06= nanmean(pdd_stopphase_06);
mean_lpdstartphase_06= nanmean(lpd_startphase_06);
mean_lpdstopphase_06= nanmean(lpd_stopphase_06);
mean_pydstartphase_06= nanmean(pyd_startphase_06);
mean_pydstopphase_06= nanmean(pyd_stopphase_06);

meanDec_startstops_06=[];
meanDec_startstops_06(1)= mean_pddstartphase_06;
meanDec_startstops_06(2)= mean_pddstopphase_06;
meanDec_startstops_06(3)= mean_lpdstartphase_06;
meanDec_startstops_06(4)= mean_lpdstopphase_06;
meanDec_startstops_06(5)= mean_pydstartphase_06;
meanDec_startstops_06(6)= mean_pydstopphase_06;

std_pddstartphase_06= nanstd(pdd_startphase_06);
std_pddstopphase_06= nanstd(pdd_stopphase_06);
std_lpdstartphase_06= nanstd(lpd_startphase_06);
std_lpdstopphase_06= nanstd(lpd_stopphase_06);
std_pydstartphase_06= nanstd(pyd_startphase_06);
std_pydstopphase_06= nanstd(pyd_stopphase_06);

stdDec_startstops_06=[];
stdDec_startstops_06(1)= std_pddstartphase_06;
stdDec_startstops_06(2)= std_pddstopphase_06;
stdDec_startstops_06(3)= std_lpdstartphase_06;
stdDec_startstops_06(4)= std_lpdstopphase_06;
stdDec_startstops_06(5)= std_pydstartphase_06;
stdDec_startstops_06(6)= std_pydstopphase_06;


%10^-05
pdd_start_05 = startphase('Dec_05_PD_bursts.txt');
pdd_stop_05= stopphase('Dec_05_PD_bursts.txt');

lpd_start_05= startphase('Dec_05_LP_bursts.txt');
lpd_stop_05= stopphase('Dec_05_LP_bursts.txt');

pyd_start_05= startphase('Dec_05_PY_bursts.txt');
pyd_stop_05= stopphase('Dec_05_PY_bursts.txt');


pdd_startphase_05 = phase(pdd_start_05, pdd_start_05);
pdd_stopphase_05 = phase(pdd_stop_05, pdd_start_05);
lpd_startphase_05= phase (lpd_start_05, pdd_start_05);
lpd_stopphase_05= phase(lpd_stop_05, pdd_start_05);
pyd_startphase_05= phase(pyd_start_05, pdd_start_05);
pyd_stopphase_05= phase(pyd_stop_05, pdd_start_05);


for n = 1:length(pyd_stopphase_05)
    if pyd_stopphase_05(n) < 0.3
        pyd_stopphase_05(n) = pyd_stopphase_05(n) + 1;
    end
end
    

mean_pddstartphase_05= nanmean(pdd_startphase_05);
mean_pddstopphase_05= nanmean(pdd_stopphase_05);
mean_lpdstartphase_05= nanmean(lpd_startphase_05);
mean_lpdstopphase_05= nanmean(lpd_stopphase_05);
mean_pydstartphase_05= nanmean(pyd_startphase_05);
mean_pydstopphase_05= nanmean(pyd_stopphase_05);

meanDec_startstops_05=[];
meanDec_startstops_05(1)= mean_pddstartphase_05;
meanDec_startstops_05(2)= mean_pddstopphase_05;
meanDec_startstops_05(3)= mean_lpdstartphase_05;
meanDec_startstops_05(4)= mean_lpdstopphase_05;
meanDec_startstops_05(5)= mean_pydstartphase_05;
meanDec_startstops_05(6)= mean_pydstopphase_05;

std_pddstartphase_05= nanstd(pdd_startphase_05);
std_pddstopphase_05= nanstd(pdd_stopphase_05);
std_lpdstartphase_05= nanstd(lpd_startphase_05);
std_lpdstopphase_05= nanstd(lpd_stopphase_05);
std_pydstartphase_05= nanstd(pyd_startphase_05);
std_pydstopphase_05= nanstd(pyd_stopphase_05);

stdDec_05_startstops=[];
stdDec_05_startstops(1)= std_pddstartphase_05;
stdDec_05_startstops(2)= std_pddstopphase_05;
stdDec_05_startstops(3)= std_lpdstartphase_05;
stdDec_05_startstops(4)= std_lpdstopphase_05;
stdDec_05_startstops(5)= std_pydstartphase_05;
stdDec_05_startstops(6)= std_pydstopphase_05;


%Wash
pdd_start_Wash = startphase('Dec_Wash_PD_bursts.txt');
pdd_stop_Wash= stopphase('Dec_Wash_PD_bursts.txt');

lpd_start_Wash= startphase('Dec_Wash_LP_bursts.txt');
lpd_stop_Wash= stopphase('Dec_Wash_LP_bursts.txt');

pyd_start_Wash= startphase('Dec_Wash_PY_bursts.txt');
pyd_stop_Wash= stopphase('Dec_Wash_PY_bursts.txt');


pdd_startphase_Wash = phase(pdd_start_Wash, pdd_start_Wash);
pdd_stopphase_Wash = phase(pdd_stop_Wash, pdd_start_Wash);
lpd_startphase_Wash= phase (lpd_start_Wash, pdd_start_Wash);
lpd_stopphase_Wash= phase(lpd_stop_Wash, pdd_start_Wash);
pyd_startphase_Wash= phase(pyd_start_Wash, pdd_start_Wash);
pyd_stopphase_Wash= phase(pyd_stop_Wash, pdd_start_Wash);


for n = 1:length(pyd_stopphase_Wash)
    if pyd_stopphase_Wash(n) < 0.3
        pyd_stopphase_Wash(n) = pyd_stopphase_Wash(n) + 1;
    end
end
    

mean_pddstartphase_Wash= nanmean(pdd_startphase_Wash);
mean_pddstopphase_Wash= nanmean(pdd_stopphase_Wash);
mean_lpdstartphase_Wash= nanmean(lpd_startphase_Wash);
mean_lpdstopphase_Wash= nanmean(lpd_stopphase_Wash);
mean_pydstartphase_Wash= nanmean(pyd_startphase_Wash);
mean_pydstopphase_Wash= nanmean(pyd_stopphase_Wash);

meanDec_startstops_Wash=[];
meanDec_startstops_Wash(1)= mean_pddstartphase_Wash;
meanDec_startstops_Wash(2)= mean_pddstopphase_Wash;
meanDec_startstops_Wash(3)= mean_lpdstartphase_Wash;
meanDec_startstops_Wash(4)= mean_lpdstopphase_Wash;
meanDec_startstops_Wash(5)= mean_pydstartphase_Wash;
meanDec_startstops_Wash(6)= mean_pydstopphase_Wash;

std_pddstartphase_Wash= nanstd(pdd_startphase_Wash);
std_pddstopphase_Wash= nanstd(pdd_stopphase_Wash);
std_lpdstartphase_Wash= nanstd(lpd_startphase_Wash);
std_lpdstopphase_Wash= nanstd(lpd_stopphase_Wash);
std_pydstartphase_Wash= nanstd(pyd_startphase_Wash);
std_pydstopphase_Wash= nanstd(pyd_stopphase_Wash);

stdDec_Wash_startstops=[];
stdDec_Wash_startstops(1)= std_pddstartphase_Wash;
stdDec_Wash_startstops(2)= std_pddstopphase_Wash;
stdDec_Wash_startstops(3)= std_lpdstartphase_Wash;
stdDec_Wash_startstops(4)= std_lpdstopphase_Wash;
stdDec_Wash_startstops(5)= std_pydstartphase_Wash;
stdDec_Wash_startstops(6)= std_pydstopphase_Wash;

meanDec_startstops_Saline= meanDec_startstops_Saline';
meanDec_startstops_10= meanDec_startstops_10';
meanDec_startstops_09= meanDec_startstops_09';
meanDec_startstops_08= meanDec_startstops_08';
meanDec_startstops_07= meanDec_startstops_07';
meanDec_startstops_06= meanDec_startstops_06';
meanDec_startstops_05= meanDec_startstops_05';
meanDec_startstops_Wash= meanDec_startstops_Wash';


figure
hold on

herrorbar( meanDec_startstops_Saline,[6.1;6.1;4.1;4.1;2.1;2.1],stdDec_startstops_Saline, 'ok');

herrorbar( meanDec_startstops_10,[5.9;5.9;3.9;3.9;1.9;1.9],stdDec_startstops_10, 'ok');

herrorbar( meanDec_startstops_09,[5.7;5.7;3.7;3.7;1.7;1.7],stdDec_startstops_09, 'ok');

herrorbar( meanDec_startstops_08,[5.5;5.5;3.5;3.5;1.5;1.5],stdDec_startstops_08, 'ok');

herrorbar( meanDec_startstops_07,[5.3;5.3;3.3;3.3;1.3;1.3],stdDec_startstops_07, 'ok');

herrorbar( meanDec_startstops_06,[5.1;5.1;3.1;3.1;1.1;1.1], stdDec_startstops_06, 'ok');

herrorbar( meanDec_startstops_05,[4.9;4.9;2.9;2.9;0.9;0.9], stdDec_05_startstops, 'ok');

herrorbar( meanDec_startstops_Wash,[4.7;4.7;2.7;2.7;0.7;0.7], stdDec_Wash_startstops, 'ok');

legend('','Saline','', '10^-10', '','10^-9','', '10^-8', '','10^-7', '','10^-6', '','10^-5', '','Wash');

title('Phase relationships of Pyloric neurons in a Decentralized prep in saline with varying [Oxotremorine]');

Dec_Salinepdwidth= mean_pddstopphase_Saline - mean_pddstartphase_Saline;
Dec_10pdwidth= mean_pddstopphase_10 - mean_pddstartphase_10;
Dec_09pdwidth= mean_pddstopphase_09 - mean_pddstartphase_09;
Dec_08pdwidth= mean_pddstopphase_08 - mean_pddstartphase_08;
Dec_07pdwidth= mean_pddstopphase_07 - mean_pddstartphase_07;
Dec_06pdwidth= mean_pddstopphase_06 - mean_pddstartphase_06;
Dec_05pdwidth= mean_pddstopphase_05 - mean_pddstartphase_05;
Dec_Washpdwidth= mean_pddstopphase_Wash - mean_pddstartphase_Wash;

Dec_Salinelpwidth=mean_lpdstopphase_Saline - mean_lpdstartphase_Saline;
Dec_10lpwidth=mean_lpdstopphase_10 - mean_lpdstartphase_10;
Dec_09lpwidth=mean_lpdstopphase_09 - mean_lpdstartphase_09;
Dec_08lpwidth=mean_lpdstopphase_08 - mean_lpdstartphase_08;
Dec_07lpwidth=mean_lpdstopphase_07 - mean_lpdstartphase_07;
Dec_06lpwidth=mean_lpdstopphase_06 - mean_lpdstartphase_06;
Dec_05lpwidth=mean_lpdstopphase_05 - mean_lpdstartphase_05;
Dec_Washlpwidth=mean_lpdstopphase_Wash - mean_lpdstartphase_Wash;

Dec_Salinepywidth= mean_pydstopphase_Saline - mean_pydstartphase_Saline;
Dec_10pywidth= mean_pydstopphase_10 - mean_pydstartphase_10;
Dec_09pywidth= mean_pydstopphase_09 - mean_pydstartphase_09;
Dec_08pywidth= mean_pydstopphase_08 - mean_pydstartphase_08;
Dec_07pywidth= mean_pydstopphase_07 - mean_pydstartphase_07;
Dec_06pywidth= mean_pydstopphase_06 - mean_pydstartphase_06;
Dec_05pywidth= mean_pydstopphase_05 - mean_pydstartphase_05;
Dec_Washpywidth= mean_pydstopphase_Wash - mean_pydstartphase_Wash;

rectangle('Position', [mean_pddstartphase_Saline, 6, Dec_Salinepdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','r'); 
rectangle('Position', [mean_pddstartphase_10, 5.8, Dec_10pdwidth, 0.2],'EdgeColor','k', 'FaceColor', 'g');
rectangle('Position', [mean_pddstartphase_09, 5.6, Dec_09pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','b');
rectangle('Position', [mean_pddstartphase_08, 5.4, Dec_08pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'y');
rectangle('Position', [mean_pddstartphase_07, 5.2, Dec_07pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'm');
rectangle('Position', [mean_pddstartphase_06, 5.0, Dec_06pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'c');
rectangle('Position', [mean_pddstartphase_05, 4.8, Dec_05pdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'r');
rectangle('Position', [mean_pddstartphase_Wash, 4.6, Dec_Washpdwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'g');

rectangle('Position', [mean_lpdstartphase_Saline, 4.0, Dec_Salinelpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','r'); 
rectangle('Position', [mean_lpdstartphase_10, 3.8, Dec_10lpwidth, 0.2],'EdgeColor','k', 'FaceColor', 'g');
rectangle('Position', [mean_lpdstartphase_09, 3.6, Dec_09lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor','b');
rectangle('Position', [mean_lpdstartphase_08, 3.4, Dec_08lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'y');
rectangle('Position', [mean_lpdstartphase_07, 3.2, Dec_07lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'm');
rectangle('Position', [mean_lpdstartphase_06, 3.0, Dec_06lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'c');
rectangle('Position', [mean_lpdstartphase_05, 2.8, Dec_05lpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'r');
rectangle('Position', [mean_lpdstartphase_Wash, 2.6, Dec_Washlpwidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'g');

rectangle('Position', [mean_pydstartphase_Saline, 2.0, Dec_Salinepywidth, 0.2], 'EdgeColor', 'k', 'FaceColor','r'); 
rectangle('Position', [mean_pydstartphase_10, 1.8, Dec_10pywidth, 0.2],'EdgeColor','k', 'FaceColor', 'g');
rectangle('Position', [mean_pydstartphase_09, 1.6, Dec_09pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor','b');
rectangle('Position', [mean_pydstartphase_08, 1.4, Dec_08pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'y');
rectangle('Position', [mean_pydstartphase_07, 1.2, Dec_07pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'm');
rectangle('Position', [mean_pydstartphase_06, 1.0, Dec_06pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'c');
rectangle('Position', [mean_pydstartphase_05, 0.8, Dec_05pywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'r');
rectangle('Position', [mean_pydstartphase_Wash, 0.6, Dec_Washpywidth, 0.2], 'EdgeColor', 'k', 'FaceColor', 'g');

allmeansdec= [meanDec_startstops_Saline; meanDec_startstops_10; meanDec_startstops_09; meanDec_startstops_08; meanDec_startstops_07; meanDec_startstops_06; meanDec_startstops_05; meanDec_startstops_Wash];

allmeansdec=allmeansdec';

save('allmeansdec', 'allmeansdec');

allstddec= [stdDec_startstops_Saline; stdDec_startstops_10; stdDec_startstops_09; stdDec_startstops_08; stdDec_startstops_07; stdDec_startstops_06; stdDec_05_startstops; stdDec_Wash_startstops];

allstddec=allstddec';

save('allstddec','allstddec');


