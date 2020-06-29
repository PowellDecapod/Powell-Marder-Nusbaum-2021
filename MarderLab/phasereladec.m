%%decentralized
%11 line 9
%15 line 66
%19 line 123
%23 line 180
%27 line 237
%31 line 294

%11

pd_decstart_11 = startphase('dec11_PD_bursts.txt');
pd_decstop_11= stopphase('dec11_PD_bursts.txt');

lp_decstart_11= startphase('dec11_LP_bursts.txt');
lp_decstop_11= stopphase('dec11_LP_bursts.txt');

py_decstart_11= startphase('dec11_PY_bursts.txt');
py_decstop_11= stopphase('dec11_PY_bursts.txt');


pdd_startphase_11 = phase(pd_decstart_11, pd_decstart_11);
pdd_stopphase_11 = phase(pd_decstop_11, pd_decstart_11);
lpd_startphase_11= phase (lp_decstart_11, pd_decstart_11);
lpd_stopphase_11= phase(lp_decstop_11, pd_decstart_11);
pyd_startphase_11= phase(py_decstart_11, pd_decstart_11);
pyd_stopphase_11= phase(py_decstop_11, pd_decstart_11);


for n = 1:length(pyd_stopphase_11)
    if pyd_stopphase_11(n) < 0.3
        pyd_stopphase_11(n) = pyd_stopphase_11(n) + 1;
    end
end
    

mean_pddstartphase_11= nanmean(pdd_startphase_11);
mean_pddstopphase_11= nanmean(pdd_stopphase_11);
mean_lpdstartphase_11= nanmean(lpd_startphase_11);
mean_lpdstopphase_11= nanmean(lpd_stopphase_11);
mean_pydstartphase_11= nanmean(pyd_startphase_11);
mean_pydstopphase_11= nanmean(pyd_stopphase_11);

meandec11_startstops=[];
meandec11_startstops(1)= mean_pddstartphase_11;
meandec11_startstops(2)= mean_pddstopphase_11;
meandec11_startstops(3)= mean_lpdstartphase_11;
meandec11_startstops(4)= mean_lpdstopphase_11;
meandec11_startstops(5)= mean_pydstartphase_11;
meandec11_startstops(6)= mean_pydstopphase_11;

std_pddstartphase_11= nanstd(pdd_startphase_11);
std_pddstopphase_11= nanstd(pdd_stopphase_11);
std_lpdstartphase_11= nanstd(lpd_startphase_11);
std_lpdstopphase_11= nanstd(lpd_stopphase_11);
std_pydstartphase_11= nanstd(pyd_startphase_11);
std_pydstopphase_11= nanstd(pyd_stopphase_11);

stddec11_startstops=[];
stddec11_startstops(1)= std_pddstartphase_11;
stddec11_startstops(2)= std_pddstopphase_11;
stddec11_startstops(3)= std_lpdstartphase_11;
stddec11_startstops(4)= std_lpdstopphase_11;
stddec11_startstops(5)= std_pydstartphase_11;
stddec11_startstops(6)= std_pydstopphase_11;

%15

pdd_start_15 = startphase('dec15_PD_bursts.txt');
pdd_stop_15= stopphase('dec15_PD_bursts.txt');

lpd_start_15= startphase('dec15_LP_bursts.txt');
lpd_stop_15= stopphase('dec15_LP_bursts.txt');

pyd_start_15= startphase('dec15_PY_bursts.txt');
pyd_stop_15= stopphase('dec15_PY_bursts.txt');


pdd_startphase_15 = phase(pdd_start_15, pdd_start_15);
pdd_stopphase_15 = phase(pdd_stop_15, pdd_start_15);
lpd_startphase_15= phase (lpd_start_15, pdd_start_15);
lpd_stopphase_15= phase(lpd_stop_15, pdd_start_15);
pyd_startphase_15= phase(pyd_start_15, pdd_start_15);
pyd_stopphase_15= phase(pyd_stop_15, pdd_start_15);


for n = 1:length(pyd_stopphase_15)
    if pyd_stopphase_15(n) < 0.3
        pyd_stopphase_15(n) = pyd_stopphase_15(n) + 1;
    end
end
    

mean_pddstartphase_15= nanmean(pdd_startphase_15);
mean_pddstopphase_15= nanmean(pdd_stopphase_15);
mean_lpdstartphase_15= nanmean(lpd_startphase_15);
mean_lpdstopphase_15= nanmean(lpd_stopphase_15);
mean_pydstartphase_15= nanmean(pyd_startphase_15);
mean_pydstopphase_15= nanmean(pyd_stopphase_15);

meandec15_startstops=[];
meandec15_startstops(1)= mean_pddstartphase_15;
meandec15_startstops(2)= mean_pddstopphase_15;
meandec15_startstops(3)= mean_lpdstartphase_15;
meandec15_startstops(4)= mean_lpdstopphase_15;
meandec15_startstops(5)= mean_pydstartphase_15;
meandec15_startstops(6)= mean_pydstopphase_15;

std_pddstartphase_15= nanstd(pdd_startphase_15);
std_pddstopphase_15= nanstd(pdd_stopphase_15);
std_lpdstartphase_15= nanstd(lpd_startphase_15);
std_lpdstopphase_15= nanstd(lpd_stopphase_15);
std_pydstartphase_15= nanstd(pyd_startphase_15);
std_pydstopphase_15= nanstd(pyd_stopphase_15);

stddec15_startstops=[];
stddec15_startstops(1)= std_pddstartphase_15;
stddec15_startstops(2)= std_pddstopphase_15;
stddec15_startstops(3)= std_lpdstartphase_15;
stddec15_startstops(4)= std_lpdstopphase_15;
stddec15_startstops(5)= std_pydstartphase_15;
stddec15_startstops(6)= std_pydstopphase_15;

%19

pdd_start_19 = startphase('dec19_PD_bursts.txt');
pdd_stop_19= stopphase('dec19_PD_bursts.txt');

lpd_start_19= startphase('dec19_LP_bursts.txt');
lpd_stop_19= stopphase('dec19_LP_bursts.txt');

pyd_start_19= startphase('dec19_PY_bursts.txt');
pyd_stop_19= stopphase('dec19_PY_bursts.txt');


pdd_startphase_19 = phase(pdd_start_19, pdd_start_19);
pdd_stopphase_19 = phase(pdd_stop_19, pdd_start_19);
lpd_startphase_19= phase (lpd_start_19, pdd_start_19);
lpd_stopphase_19= phase(lpd_stop_19, pdd_start_19);
pyd_startphase_19= phase(pyd_start_19, pdd_start_19);
pyd_stopphase_19= phase(pyd_stop_19, pdd_start_19);


for n = 1:length(pyd_stopphase_19)
    if pyd_stopphase_19(n) < 0.3
        pyd_stopphase_19(n) = pyd_stopphase_19(n) + 1;
    end
end
    

mean_pddstartphase_19= nanmean(pdd_startphase_19);
mean_pddstopphase_19= nanmean(pdd_stopphase_19);
mean_lpdstartphase_19= nanmean(lpd_startphase_19);
mean_lpdstopphase_19= nanmean(lpd_stopphase_19);
mean_pydstartphase_19= nanmean(pyd_startphase_19);
mean_pydstopphase_19= nanmean(pyd_stopphase_19);

meandec19_startstops=[];
meandec19_startstops(1)= mean_pddstartphase_19;
meandec19_startstops(2)= mean_pddstopphase_19;
meandec19_startstops(3)= mean_lpdstartphase_19;
meandec19_startstops(4)= mean_lpdstopphase_19;
meandec19_startstops(5)= mean_pydstartphase_19;
meandec19_startstops(6)= mean_pydstopphase_19;

std_pddstartphase_19= nanstd(pdd_startphase_19);
std_pddstopphase_19= nanstd(pdd_stopphase_19);
std_lpdstartphase_19= nanstd(lpd_startphase_19);
std_lpdstopphase_19= nanstd(lpd_stopphase_19);
std_pydstartphase_19= nanstd(pyd_startphase_19);
std_pydstopphase_19= nanstd(pyd_stopphase_19);

stddec19startstops=[];
stddec19_startstops(1)= std_pddstartphase_19;
stddec19_startstops(2)= std_pddstopphase_19;
stddec19_startstops(3)= std_lpdstartphase_19;
stddec19_startstops(4)= std_lpdstopphase_19;
stddec19_startstops(5)= std_pydstartphase_19;
stddec19_startstops(6)= std_pydstopphase_19;

%23

pdd_start_23 = startphase('dec23_PD_bursts.txt');
pdd_stop_23= stopphase('dec23_PD_bursts.txt');

lpd_start_23= startphase('dec23_LP_bursts.txt');
lpd_stop_23= stopphase('dec23_LP_bursts.txt');

pyd_start_23= startphase('dec23_PY_bursts.txt');
pyd_stop_23= stopphase('dec23_PY_bursts.txt');


pdd_startphase_23 = phase(pdd_start_23, pdd_start_23);
pdd_stopphase_23 = phase(pdd_stop_23, pdd_start_23);
lpd_startphase_23= phase (lpd_start_23, pdd_start_23);
lpd_stopphase_23= phase(lpd_stop_23, pdd_start_23);
pyd_startphase_23= phase(pyd_start_23, pdd_start_23);
pyd_stopphase_23= phase(pyd_stop_23, pdd_start_23);


for n = 1:length(pyd_stopphase_23)
    if pyd_stopphase_23(n) < 0.3
        pyd_stopphase_23(n) = pyd_stopphase_23(n) + 1;
    end
end
    

mean_pddstartphase_23= nanmean(pdd_startphase_23);
mean_pddstopphase_23= nanmean(pdd_stopphase_23);
mean_lpdstartphase_23= nanmean(lpd_startphase_23);
mean_lpdstopphase_23= nanmean(lpd_stopphase_23);
mean_pydstartphase_23= nanmean(pyd_startphase_23);
mean_pydstopphase_23= nanmean(pyd_stopphase_23);

meandec23_startstops=[];
meandec23_startstops(1)= mean_pddstartphase_23;
meandec23_startstops(2)= mean_pddstopphase_23;
meandec23_startstops(3)= mean_lpdstartphase_23;
meandec23_startstops(4)= mean_lpdstopphase_23;
meandec23_startstops(5)= mean_pydstartphase_23;
meandec23_startstops(6)= mean_pydstopphase_23;

std_pddstartphase_23= nanstd(pdd_startphase_23);
std_pddstopphase_23= nanstd(pdd_stopphase_23);
std_lpdstartphase_23= nanstd(lpd_startphase_23);
std_lpdstopphase_23= nanstd(lpd_stopphase_23);
std_pydstartphase_23= nanstd(pyd_startphase_23);
std_pydstopphase_23= nanstd(pyd_stopphase_23);

stddec23_startstops=[];
stddec23_startstops(1)= std_pddstartphase_23;
stddec23_startstops(2)= std_pddstopphase_23;
stddec23_startstops(3)= std_lpdstartphase_23;
stddec23_startstops(4)= std_lpdstopphase_23;
stddec23_startstops(5)= std_pydstartphase_23;
stddec23_startstops(6)= std_pydstopphase_23;

%27

pdd_start_27 = startphase('dec27_PD_bursts.txt');
pdd_stop_27= stopphase('dec27_PD_bursts.txt');

lpd_start_27= startphase('dec27_LP_bursts.txt');
lpd_stop_27= stopphase('dec27_LP_bursts.txt');

pyd_start_27= startphase('dec27_PY_bursts.txt');
pyd_stop_27= stopphase('dec27_PY_bursts.txt');


pdd_startphase_27 = phase(pdd_start_27, pdd_start_27);
pdd_stopphase_27 = phase(pdd_stop_27, pdd_start_27);
lpd_startphase_27= phase (lpd_start_27, pdd_start_27);
lpd_stopphase_27= phase(lpd_stop_27, pdd_start_27);
pyd_startphase_27= phase(pyd_start_27, pdd_start_27);
pyd_stopphase_27= phase(pyd_stop_27, pdd_start_27);


for n = 1:length(pyd_stopphase_27)
    if pyd_stopphase_27(n) < 0.3
        pyd_stopphase_27(n) = pyd_stopphase_27(n) + 1;
    end
end
    

mean_pddstartphase_27= nanmean(pdd_startphase_27);
mean_pddstopphase_27= nanmean(pdd_stopphase_27);
mean_lpdstartphase_27= nanmean(lpd_startphase_27);
mean_lpdstopphase_27= nanmean(lpd_stopphase_27);
mean_pydstartphase_27= nanmean(pyd_startphase_27);
mean_pydstopphase_27= nanmean(pyd_stopphase_27);

meandec27_startstops=[];
meandecc27_startstops(1)= mean_pddstartphase_27;
meandec27_startstops(2)= mean_pddstopphase_27;
meandec27_startstops(3)= mean_lpdstartphase_27;
meandec27_startstops(4)= mean_lpdstopphase_27;
meandec27_startstops(5)= mean_pydstartphase_27;
meandec27_startstops(6)= mean_pydstopphase_27;

std_pddstartphase_27= nanstd(pdd_startphase_27);
std_pddstopphase_27= nanstd(pdd_stopphase_27);
std_lpdstartphase_27= nanstd(lpd_startphase_27);
std_lpdstopphase_27= nanstd(lpd_stopphase_27);
std_pydstartphase_27= nanstd(pyd_startphase_27);
std_pydstopphase_27= nanstd(pyd_stopphase_27);

stddec27_startstops=[];
stddec27_startstops(1)= std_pddstartphase_27;
stddec27_startstops(2)= std_pddstopphase_27;
stddec27_startstops(3)= std_lpdstartphase_27;
stddec27_startstops(4)= std_lpdstopphase_27;
stddec27_startstops(5)= std_pydstartphase_27;
stddec27_startstops(6)= std_pydstopphase_27;

%31
%{
pdd_start_31 = startphase('dec31_PD_bursts.txt');
pdd_stop_31= stopphase('dec31_PD_bursts.txt');

lpd_start_31= startphase('dec31_LP_bursts.txt');
lpd_stop_31= stopphase('dec31_LP_bursts.txt');

pyd_start_31= startphase('dec31_PY_bursts.txt');
pyd_stop_31= stopphase('dec31_PY_bursts.txt');


pdd_startphase_31 = phase(pdd_start_31, pdd_start_31);
pdd_stopphase_31 = phase(pdd_stop_31, pdd_start_31);
lpd_startphase_31= phase (lpd_start_31, pdd_start_31);
lpd_stopphase_31= phase(lpd_stop_31, pdd_start_31);
pyd_startphase_31= phase(pyd_start_31, pdd_start_31);
pyd_stopphase_31= phase(pyd_stop_31, pdd_start_31);


for n = 1:length(pyd_stopphase_31)
    if pyd_stopphase_31(n) < 0.3
        pyd_stopphase_31(n) = pyd_stopphase_31(n) + 1;
    end
end
    

mean_pddstartphase_31= nanmean(pdd_startphase_31);
mean_pddstopphase_31= nanmean(pdd_stopphase_31);
mean_lpdstartphase_31= nanmean(lpd_startphase_31);
mean_lpdstopphase_31= nanmean(lpd_stopphase_31);
mean_pydstartphase_31= nanmean(pyd_startphase_31);
mean_pydstopphase_31= nanmean(pyd_stopphase_31);

meandec31_startstops=[];
meandec31_startstops(1)= mean_pddstartphase_31;
meandec31_startstops(2)= mean_pddstopphase_31;
meandec31_startstops(3)= mean_lpdstartphase_31;
meandec31_startstops(4)= mean_lpdstopphase_31;
meandec31_startstops(5)= mean_pydstartphase_31;
meandec31_startstops(6)= mean_pydstopphase_31;

std_pddstartphase_31= nanstd(pdd_startphase_31);
std_pddstopphase_31= nanstd(pdd_stopphase_31);
std_lpdstartphase_31= nanstd(lpd_startphase_31);
std_lpdstopphase_31= nanstd(lpd_stopphase_31);
std_pydstartphase_31= nanstd(pyd_startphase_31);
std_pydstopphase_31= nanstd(pyd_stopphase_31);

stddec31_startstops=[];
stddec31_startstops(1)= std_pddstartphase_31;
stddec31_startstops(2)= std_pddstopphase_31;
stddec31_startstops(3)= std_lpdstartphase_31;
stddec31_startstops(4)= std_lpdstopphase_31;
stddec31_startstops(5)= std_pydstartphase_31;
stddec31_startstops(6)= std_pydstopphase_31;
%}
meandec11_startstops= meandec11_startstops';
meandec15_startstops= meandec15_startstops';
meandec19_startstops= meandec19_startstops';
meandec23_startstops= meandec23_startstops';
meandec27_startstops= meandec27_startstops';
%meandec31_startstops= meandec31_startstops';
