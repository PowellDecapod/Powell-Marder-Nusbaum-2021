%puts all start/stop phases into a matrix to graph
%addpath([pwd '\matlab scripts']);

%start
pd_start_Start_Saline = startphase('Start_Saline_PD_bursts.txt');
pd_stop_Start_Saline= stopphase('Start_Saline_PD_bursts.txt');

lp_start_Start_Saline= startphase('start_Saline_LP_bursts.txt');
lp_stop_Start_Saline= stopphase('start_Saline_LP_bursts.txt');

py_start_Start_Saline= startphase('start_Saline_PY_bursts.txt');
py_stop_Start_Saline= stopphase('start_Saline_PY_bursts.txt');



pd_startphase_Start_Saline = phase(pd_start_Start_Saline, pd_start_Start_Saline);
pd_stopphase_Start_Saline = phase(pd_stop_Start_Saline, pd_start_Start_Saline);
lp_startphase_Start_Saline= phase (lp_start_Start_Saline, pd_start_Start_Saline);
lp_stopphase_Start_Saline= phase(lp_stop_Start_Saline, pd_start_Start_Saline);
py_startphase_Start_Saline= phase(py_start_Start_Saline, pd_start_Start_Saline);
py_stopphase_Start_Saline= phase(py_stop_Start_Saline, pd_start_Start_Saline);
 
 

for n = 1:length(py_stopphase_Start_Saline)
    if py_stopphase_Start_Saline(n) < 0.3
        py_stopphase_Start_Saline(n) = py_stopphase_Start_Saline(n) + 1;
    end
end
    


mean_pdstartphase_Start_Saline= nanmean(pd_startphase_Start_Saline);
mean_pdstopphase_Start_Saline= nanmean(pd_stopphase_Start_Saline);
mean_lpstartphase_Start_Saline= nanmean(lp_startphase_Start_Saline);
mean_lpstopphase_Start_Saline= nanmean(lp_stopphase_Start_Saline);
mean_pystartphase_Start_Saline= nanmean(py_startphase_Start_Saline);
mean_pystopphase_Start_Saline= nanmean(py_stopphase_Start_Saline);

meanstart_startstops_Saline=[];
meanstart_startstops_Saline(1)= mean_pdstartphase_Start_Saline;
meanstart_startstops_Saline(2)= mean_pdstopphase_Start_Saline;
meanstart_startstops_Saline(3)= mean_lpstartphase_Start_Saline;
meanstart_startstops_Saline(4)= mean_lpstopphase_Start_Saline;
meanstart_startstops_Saline(5)= mean_pystartphase_Start_Saline;
meanstart_startstops_Saline(6)= mean_pystopphase_Start_Saline;

std_pdstartphase_Start_Saline= nanstd(pd_startphase_Start_Saline);
std_pdstopphase_Start_Saline= nanstd(pd_stopphase_Start_Saline);
std_lpstartphase_Start_Saline= nanstd(lp_startphase_Start_Saline);
std_lpstopphase_Start_Saline= nanstd(lp_stopphase_Start_Saline);
std_pystartphase_Start_Saline= nanstd(py_startphase_Start_Saline);
std_pystopphase_Start_Saline= nanstd(py_stopphase_Start_Saline);

stdstart_startstops_Saline=[];
stdstart_startstops_Saline(1)= std_pdstartphase_Start_Saline;
stdstart_startstops_Saline(2)= std_pdstopphase_Start_Saline;
stdstart_startstops_Saline(3)= std_lpstartphase_Start_Saline;
stdstart_startstops_Saline(4)= std_lpstopphase_Start_Saline;
stdstart_startstops_Saline(5)= std_pystartphase_Start_Saline;
stdstart_startstops_Saline(6)= std_pystopphase_Start_Saline;

%[10^-10]
pd_start_Start_10 = startphase('Start_10_PD_bursts.txt');
pd_stop_Start_10= stopphase('Start_10_PD_bursts.txt');

lp_start_Start_10= startphase('Start_10_LP_bursts.txt');
lp_stop_Start_10= stopphase('Start_10_LP_bursts.txt');

py_start_Start_10= startphase('Start_10_PY_bursts.txt');
py_stop_Start_10= stopphase('Start_10_PY_bursts.txt');



pd_startphase_Start_10 = phase(pd_start_Start_10, pd_start_Start_10);
pd_stopphase_Start_10 = phase(pd_stop_Start_10, pd_start_Start_10);
lp_startphase_Start_10= phase (lp_start_Start_10, pd_start_Start_10);
lp_stopphase_Start_10= phase(lp_stop_Start_10, pd_start_Start_10);
py_startphase_Start_10= phase(py_start_Start_10, pd_start_Start_10);
py_stopphase_Start_10= phase(py_stop_Start_10, pd_start_Start_10);
 
 

for n = 1:length(py_stopphase_Start_10)
    if py_stopphase_Start_10(n) < 0.3
        py_stopphase_Start_10(n) = py_stopphase_Start_10(n) + 1;
    end
end
    


mean_pdstartphase_Start_10= nanmean(pd_startphase_Start_10);
mean_pdstopphase_Start_10= nanmean(pd_stopphase_Start_10);
mean_lpstartphase_Start_10= nanmean(lp_startphase_Start_10);
mean_lpstopphase_Start_10= nanmean(lp_stopphase_Start_10);
mean_pystartphase_Start_10= nanmean(py_startphase_Start_10);
mean_pystopphase_Start_10= nanmean(py_stopphase_Start_10);

meanstart_startstops_10=[];
meanstart_startstops_10(1)= mean_pdstartphase_Start_10;
meanstart_startstops_10(2)= mean_pdstopphase_Start_10;
meanstart_startstops_10(3)= mean_lpstartphase_Start_10;
meanstart_startstops_10(4)= mean_lpstopphase_Start_10;
meanstart_startstops_10(5)= mean_pystartphase_Start_10;
meanstart_startstops_10(6)= mean_pystopphase_Start_10;

std_pdstartphase_Start_10= nanstd(pd_startphase_Start_10);
std_pdstopphase_Start_10= nanstd(pd_stopphase_Start_10);
std_lpstartphase_Start_10= nanstd(lp_startphase_Start_10);
std_lpstopphase_Start_10= nanstd(lp_stopphase_Start_10);
std_pystartphase_Start_10= nanstd(py_startphase_Start_10);
std_pystopphase_Start_10= nanstd(py_stopphase_Start_10);

stdstart_startstops_10=[];
stdstart_startstops_10(1)= std_pdstartphase_Start_10;
stdstart_startstops_10(2)= std_pdstopphase_Start_10;
stdstart_startstops_10(3)= std_lpstartphase_Start_10;
stdstart_startstops_10(4)= std_lpstopphase_Start_10;
stdstart_startstops_10(5)= std_pystartphase_Start_10;
stdstart_startstops_10(6)= std_pystopphase_Start_10;


%[10^-9]
pd_start_Start_09 = startphase('Start_09_PD_bursts.txt');
pd_stop_Start_09= stopphase('Start_09_PD_bursts.txt');

lp_start_Start_09= startphase('Start_09_LP_bursts.txt');
lp_stop_Start_09= stopphase('Start_09_LP_bursts.txt');

py_start_Start_09= startphase('Start_09_PY_bursts.txt');
py_stop_Start_09= stopphase('Start_09_PY_bursts.txt');



pd_startphase_Start_09 = phase(pd_start_Start_09, pd_start_Start_09);
pd_stopphase_Start_09 = phase(pd_stop_Start_09, pd_start_Start_09);
lp_startphase_Start_09= phase (lp_start_Start_09, pd_start_Start_09);
lp_stopphase_Start_09= phase(lp_stop_Start_09, pd_start_Start_09);
py_startphase_Start_09= phase(py_start_Start_09, pd_start_Start_09);
py_stopphase_Start_09= phase(py_stop_Start_09, pd_start_Start_09);
 
 

for n = 1:length(py_stopphase_Start_09)
    if py_stopphase_Start_09(n) < 0.3
        py_stopphase_Start_09(n) = py_stopphase_Start_09(n) + 1;
    end
end
    


mean_pdstartphase_Start_09= nanmean(pd_startphase_Start_09);
mean_pdstopphase_Start_09= nanmean(pd_stopphase_Start_09);
mean_lpstartphase_Start_09= nanmean(lp_startphase_Start_09);
mean_lpstopphase_Start_09= nanmean(lp_stopphase_Start_09);
mean_pystartphase_Start_09= nanmean(py_startphase_Start_09);
mean_pystopphase_Start_09= nanmean(py_stopphase_Start_09);

meanstart_startstops_09=[];
meanstart_startstops_09(1)= mean_pdstartphase_Start_09;
meanstart_startstops_09(2)= mean_pdstopphase_Start_09;
meanstart_startstops_09(3)= mean_lpstartphase_Start_09;
meanstart_startstops_09(4)= mean_lpstopphase_Start_09;
meanstart_startstops_09(5)= mean_pystartphase_Start_09;
meanstart_startstops_09(6)= mean_pystopphase_Start_09;

std_pdstartphase_Start_09= nanstd(pd_startphase_Start_09);
std_pdstopphase_Start_09= nanstd(pd_stopphase_Start_09);
std_lpstartphase_Start_09= nanstd(lp_startphase_Start_09);
std_lpstopphase_Start_09= nanstd(lp_stopphase_Start_09);
std_pystartphase_Start_09= nanstd(py_startphase_Start_09);
std_pystopphase_Start_09= nanstd(py_stopphase_Start_09);

stdstart_startstops_09=[];
stdstart_startstops_09(1)= std_pdstartphase_Start_09;
stdstart_startstops_09(2)= std_pdstopphase_Start_09;
stdstart_startstops_09(3)= std_lpstartphase_Start_09;
stdstart_startstops_09(4)= std_lpstopphase_Start_09;
stdstart_startstops_09(5)= std_pystartphase_Start_09;
stdstart_startstops_09(6)= std_pystopphase_Start_09;



%[10^-8]
pd_start_Start_08 = startphase('Start_08_PD_bursts.txt');
pd_stop_Start_08= stopphase('Start_08_PD_bursts.txt');

lp_start_Start_08= startphase('Start_08_LP_bursts.txt');
lp_stop_Start_08= stopphase('Start_08_LP_bursts.txt');

py_start_Start_08= startphase('Start_08_PY_bursts.txt');
py_stop_Start_08= stopphase('Start_08_PY_bursts.txt');



pd_startphase_Start_08 = phase(pd_start_Start_08, pd_start_Start_08);
pd_stopphase_Start_08 = phase(pd_stop_Start_08, pd_start_Start_08);
lp_startphase_Start_08= phase (lp_start_Start_08, pd_start_Start_08);
lp_stopphase_Start_08= phase(lp_stop_Start_08, pd_start_Start_08);
py_startphase_Start_08= phase(py_start_Start_08, pd_start_Start_08);
py_stopphase_Start_08= phase(py_stop_Start_08, pd_start_Start_08);
 
 

for n = 1:length(py_stopphase_Start_08)
    if py_stopphase_Start_08(n) < 0.3
        py_stopphase_Start_08(n) = py_stopphase_Start_08(n) + 1;
    end
end
    


mean_pdstartphase_Start_08= nanmean(pd_startphase_Start_08);
mean_pdstopphase_Start_08= nanmean(pd_stopphase_Start_08);
mean_lpstartphase_Start_08= nanmean(lp_startphase_Start_08);
mean_lpstopphase_Start_08= nanmean(lp_stopphase_Start_08);
mean_pystartphase_Start_08= nanmean(py_startphase_Start_08);
mean_pystopphase_Start_08= nanmean(py_stopphase_Start_08);

meanstart_startstops_08=[];
meanstart_startstops_08(1)= mean_pdstartphase_Start_08;
meanstart_startstops_08(2)= mean_pdstopphase_Start_08;
meanstart_startstops_08(3)= mean_lpstartphase_Start_08;
meanstart_startstops_08(4)= mean_lpstopphase_Start_08;
meanstart_startstops_08(5)= mean_pystartphase_Start_08;
meanstart_startstops_08(6)= mean_pystopphase_Start_08;

std_pdstartphase_Start_08= nanstd(pd_startphase_Start_08);
std_pdstopphase_Start_08= nanstd(pd_stopphase_Start_08);
std_lpstartphase_Start_08= nanstd(lp_startphase_Start_08);
std_lpstopphase_Start_08= nanstd(lp_stopphase_Start_08);
std_pystartphase_Start_08= nanstd(py_startphase_Start_08);
std_pystopphase_Start_08= nanstd(py_stopphase_Start_08);

stdstart_startstops_08=[];
stdstart_startstops_08(1)= std_pdstartphase_Start_08;
stdstart_startstops_08(2)= std_pdstopphase_Start_08;
stdstart_startstops_08(3)= std_lpstartphase_Start_08;
stdstart_startstops_08(4)= std_lpstopphase_Start_08;
stdstart_startstops_08(5)= std_pystartphase_Start_08;
stdstart_startstops_08(6)= std_pystopphase_Start_08;


%[10^-7]

pd_start_Start_07 = startphase('Start_07_PD_bursts.txt');
pd_stop_Start_07= stopphase('Start_07_PD_bursts.txt');

lp_start_Start_07= startphase('Start_07_LP_bursts.txt');
lp_stop_Start_07= stopphase('Start_07_LP_bursts.txt');

py_start_Start_07= startphase('Start_07_PY_bursts.txt');
py_stop_Start_07= stopphase('Start_07_PY_bursts.txt');



pd_startphase_Start_07 = phase(pd_start_Start_07, pd_start_Start_07);
pd_stopphase_Start_07 = phase(pd_stop_Start_07, pd_start_Start_07);
lp_startphase_Start_07= phase (lp_start_Start_07, pd_start_Start_07);
lp_stopphase_Start_07= phase(lp_stop_Start_07, pd_start_Start_07);
py_startphase_Start_07= phase(py_start_Start_07, pd_start_Start_07);
py_stopphase_Start_07= phase(py_stop_Start_07, pd_start_Start_07);
 
 

for n = 1:length(py_stopphase_Start_07)
    if py_stopphase_Start_07(n) < 0.3
        py_stopphase_Start_07(n) = py_stopphase_Start_07(n) + 1;
    end
end
    


mean_pdstartphase_Start_07= nanmean(pd_startphase_Start_07);
mean_pdstopphase_Start_07= nanmean(pd_stopphase_Start_07);
mean_lpstartphase_Start_07= nanmean(lp_startphase_Start_07);
mean_lpstopphase_Start_07= nanmean(lp_stopphase_Start_07);
mean_pystartphase_Start_07= nanmean(py_startphase_Start_07);
mean_pystopphase_Start_07= nanmean(py_stopphase_Start_07);

meanstart_startstops_07=[];
meanstart_startstops_07(1)= mean_pdstartphase_Start_07;
meanstart_startstops_07(2)= mean_pdstopphase_Start_07;
meanstart_startstops_07(3)= mean_lpstartphase_Start_07;
meanstart_startstops_07(4)= mean_lpstopphase_Start_07;
meanstart_startstops_07(5)= mean_pystartphase_Start_07;
meanstart_startstops_07(6)= mean_pystopphase_Start_07;

std_pdstartphase_Start_07= nanstd(pd_startphase_Start_07);
std_pdstopphase_Start_07= nanstd(pd_stopphase_Start_07);
std_lpstartphase_Start_07= nanstd(lp_startphase_Start_07);
std_lpstopphase_Start_07= nanstd(lp_stopphase_Start_07);
std_pystartphase_Start_07= nanstd(py_startphase_Start_07);
std_pystopphase_Start_07= nanstd(py_stopphase_Start_07);

stdstart_startstops_07=[];
stdstart_startstops_07(1)= std_pdstartphase_Start_07;
stdstart_startstops_07(2)= std_pdstopphase_Start_07;
stdstart_startstops_07(3)= std_lpstartphase_Start_07;
stdstart_startstops_07(4)= std_lpstopphase_Start_07;
stdstart_startstops_07(5)= std_pystartphase_Start_07;
stdstart_startstops_07(6)= std_pystopphase_Start_07;


%[10^-6]
pd_start_Start_06 = startphase('Start_06_PD_bursts.txt');
pd_stop_Start_06= stopphase('Start_06_PD_bursts.txt');

lp_start_Start_06= startphase('Start_06_LP_bursts.txt');
lp_stop_Start_06= stopphase('Start_06_LP_bursts.txt');

py_start_Start_06= startphase('Start_06_PY_bursts.txt');
py_stop_Start_06= stopphase('Start_06_PY_bursts.txt');



pd_startphase_Start_06 = phase(pd_start_Start_06, pd_start_Start_06);
pd_stopphase_Start_06 = phase(pd_stop_Start_06, pd_start_Start_06);
lp_startphase_Start_06= phase (lp_start_Start_06, pd_start_Start_06);
lp_stopphase_Start_06= phase(lp_stop_Start_06, pd_start_Start_06);
py_startphase_Start_06= phase(py_start_Start_06, pd_start_Start_06);
py_stopphase_Start_06= phase(py_stop_Start_06, pd_start_Start_06);
 
 

for n = 1:length(py_stopphase_Start_06)
    if py_stopphase_Start_06(n) < 0.3
        py_stopphase_Start_06(n) = py_stopphase_Start_06(n) + 1;
    end
end
    


mean_pdstartphase_Start_06= nanmean(pd_startphase_Start_06);
mean_pdstopphase_Start_06= nanmean(pd_stopphase_Start_06);
mean_lpstartphase_Start_06= nanmean(lp_startphase_Start_06);
mean_lpstopphase_Start_06= nanmean(lp_stopphase_Start_06);
mean_pystartphase_Start_06= nanmean(py_startphase_Start_06);
mean_pystopphase_Start_06= nanmean(py_stopphase_Start_06);

meanstart_startstops_06=[];
meanstart_startstops_06(1)= mean_pdstartphase_Start_06;
meanstart_startstops_06(2)= mean_pdstopphase_Start_06;
meanstart_startstops_06(3)= mean_lpstartphase_Start_06;
meanstart_startstops_06(4)= mean_lpstopphase_Start_06;
meanstart_startstops_06(5)= mean_pystartphase_Start_06;
meanstart_startstops_06(6)= mean_pystopphase_Start_06;

std_pdstartphase_Start_06= nanstd(pd_startphase_Start_06);
std_pdstopphase_Start_06= nanstd(pd_stopphase_Start_06);
std_lpstartphase_Start_06= nanstd(lp_startphase_Start_06);
std_lpstopphase_Start_06= nanstd(lp_stopphase_Start_06);
std_pystartphase_Start_06= nanstd(py_startphase_Start_06);
std_pystopphase_Start_06= nanstd(py_stopphase_Start_06);

stdstart_startstops_06=[];
stdstart_startstops_06(1)= std_pdstartphase_Start_06;
stdstart_startstops_06(2)= std_pdstopphase_Start_06;
stdstart_startstops_06(3)= std_lpstartphase_Start_06;
stdstart_startstops_06(4)= std_lpstopphase_Start_06;
stdstart_startstops_06(5)= std_pystartphase_Start_06;
stdstart_startstops_06(6)= std_pystopphase_Start_06;


%[10^-5]
pd_start_Start_05 = startphase('Start_05_PD_bursts.txt');
pd_stop_Start_05= stopphase('Start_05_PD_bursts.txt');

lp_start_Start_05= startphase('Start_05_LP_bursts.txt');
lp_stop_Start_05= stopphase('Start_05_LP_bursts.txt');

py_start_Start_05= startphase('Start_05_PY_bursts.txt');
py_stop_Start_05= stopphase('Start_05_PY_bursts.txt');



pd_startphase_Start_05 = phase(pd_start_Start_05, pd_start_Start_05);
pd_stopphase_Start_05 = phase(pd_stop_Start_05, pd_start_Start_05);
lp_startphase_Start_05= phase (lp_start_Start_05, pd_start_Start_05);
lp_stopphase_Start_05= phase(lp_stop_Start_05, pd_start_Start_05);
py_startphase_Start_05= phase(py_start_Start_05, pd_start_Start_05);
py_stopphase_Start_05= phase(py_stop_Start_05, pd_start_Start_05);
 
 

for n = 1:length(py_stopphase_Start_05)
    if py_stopphase_Start_05(n) < 0.3
        py_stopphase_Start_05(n) = py_stopphase_Start_05(n) + 1;
    end
end
    


mean_pdstartphase_Start_05= nanmean(pd_startphase_Start_05);
mean_pdstopphase_Start_05= nanmean(pd_stopphase_Start_05);
mean_lpstartphase_Start_05= nanmean(lp_startphase_Start_05);
mean_lpstopphase_Start_05= nanmean(lp_stopphase_Start_05);
mean_pystartphase_Start_05= nanmean(py_startphase_Start_05);
mean_pystopphase_Start_05= nanmean(py_stopphase_Start_05);

meanstart_startstops_05=[];
meanstart_startstops_05(1)= mean_pdstartphase_Start_05;
meanstart_startstops_05(2)= mean_pdstopphase_Start_05;
meanstart_startstops_05(3)= mean_lpstartphase_Start_05;
meanstart_startstops_05(4)= mean_lpstopphase_Start_05;
meanstart_startstops_05(5)= mean_pystartphase_Start_05;
meanstart_startstops_05(6)= mean_pystopphase_Start_05;

std_pdstartphase_Start_05= nanstd(pd_startphase_Start_05);
std_pdstopphase_Start_05= nanstd(pd_stopphase_Start_05);
std_lpstartphase_Start_05= nanstd(lp_startphase_Start_05);
std_lpstopphase_Start_05= nanstd(lp_stopphase_Start_05);
std_pystartphase_Start_05= nanstd(py_startphase_Start_05);
std_pystopphase_Start_05= nanstd(py_stopphase_Start_05);

stdstart_startstops_05=[];
stdstart_startstops_05(1)= std_pdstartphase_Start_05;
stdstart_startstops_05(2)= std_pdstopphase_Start_05;
stdstart_startstops_05(3)= std_lpstartphase_Start_05;
stdstart_startstops_05(4)= std_lpstopphase_Start_05;
stdstart_startstops_05(5)= std_pystartphase_Start_05;
stdstart_startstops_05(6)= std_pystopphase_Start_05;


%Wash
pd_start_Start_Wash = startphase('Start_Wash_PD_bursts.txt');
pd_stop_Start_Wash= stopphase('Start_Wash_PD_bursts.txt');

lp_start_Start_Wash= startphase('Start_Wash_LP_bursts.txt');
lp_stop_Start_Wash= stopphase('Start_Wash_LP_bursts.txt');

py_start_Start_Wash= startphase('Start_Wash_PY_bursts.txt');
py_stop_Start_Wash= stopphase('Start_Wash_PY_bursts.txt');



pd_startphase_Start_Wash = phase(pd_start_Start_Wash, pd_start_Start_Wash);
pd_stopphase_Start_Wash = phase(pd_stop_Start_Wash, pd_start_Start_Wash);
lp_startphase_Start_Wash= phase (lp_start_Start_Wash, pd_start_Start_Wash);
lp_stopphase_Start_Wash= phase(lp_stop_Start_Wash, pd_start_Start_Wash);
py_startphase_Start_Wash= phase(py_start_Start_Wash, pd_start_Start_Wash);
py_stopphase_Start_Wash= phase(py_stop_Start_Wash, pd_start_Start_Wash);
 
 

for n = 1:length(py_stopphase_Start_Wash)
    if py_stopphase_Start_Wash(n) < 0.3
        py_stopphase_Start_Wash(n) = py_stopphase_Start_Wash(n) + 1;
    end
end
    


mean_pdstartphase_Start_Wash= nanmean(pd_startphase_Start_Wash);
mean_pdstopphase_Start_Wash= nanmean(pd_stopphase_Start_Wash);
mean_lpstartphase_Start_Wash= nanmean(lp_startphase_Start_Wash);
mean_lpstopphase_Start_Wash= nanmean(lp_stopphase_Start_Wash);
mean_pystartphase_Start_Wash= nanmean(py_startphase_Start_Wash);
mean_pystopphase_Start_Wash= nanmean(py_stopphase_Start_Wash);

meanstart_startstops_Wash=[];
meanstart_startstops_Wash(1)= mean_pdstartphase_Start_Wash;
meanstart_startstops_Wash(2)= mean_pdstopphase_Start_Wash;
meanstart_startstops_Wash(3)= mean_lpstartphase_Start_Wash;
meanstart_startstops_Wash(4)= mean_lpstopphase_Start_Wash;
meanstart_startstops_Wash(5)= mean_pystartphase_Start_Wash;
meanstart_startstops_Wash(6)= mean_pystopphase_Start_Wash;

std_pdstartphase_Start_Wash= nanstd(pd_startphase_Start_Wash);
std_pdstopphase_Start_Wash= nanstd(pd_stopphase_Start_Wash);
std_lpstartphase_Start_Wash= nanstd(lp_startphase_Start_Wash);
std_lpstopphase_Start_Wash= nanstd(lp_stopphase_Start_Wash);
std_pystartphase_Start_Wash= nanstd(py_startphase_Start_Wash);
std_pystopphase_Start_Wash= nanstd(py_stopphase_Start_Wash);

stdstart_startstops_Wash=[];
stdstart_startstops_Wash(1)= std_pdstartphase_Start_Wash;
stdstart_startstops_Wash(2)= std_pdstopphase_Start_Wash;
stdstart_startstops_Wash(3)= std_lpstartphase_Start_Wash;
stdstart_startstops_Wash(4)= std_lpstopphase_Start_Wash;
stdstart_startstops_Wash(5)= std_pystartphase_Start_Wash;
stdstart_startstops_Wash(6)= std_pystopphase_Start_Wash;
