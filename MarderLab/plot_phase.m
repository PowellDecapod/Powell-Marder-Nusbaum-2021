%Front End On
figure
hold on

herrorbar( meanstart_startstops_Saline,[6;6;4.2;4.2;2.4;2.4],stdstart_startstops_Saline, 'or');

herrorbar( meanstart_startstops_10,[5.8;5.8;4;4;2.2;2.2],stdstart_startstops_10, 'og');

herrorbar( meanstart_startstops_09,[5.6;5.6;3.8;3.8;2;2],stdstart_startstops_09, 'ob');

herrorbar( meanstart_startstops_08,[5.4;5.4;3.6;3.6;1.8;1.8],stdstart_startstops_08, 'oy');

herrorbar( meanstart_startstops_07,[5.2;5.2;3.4;3.4;1.6;1.6],stdstart_startstops_07, 'om');

herrorbar( meanstart_startstops_06,[5;5;3.2;3.2;1.4;1.4], stdstart_startstops_06, 'oc');

herrorbar( meanstart_startstops_05,[4.8;4.8;3;3;1.2;1.2], stdstart_startstops_05, 'or');

herrorbar( meanstart_startstops_Wash,[4.6;4.6;2.8;2.8;1;1], stdstart_startstops_Wash, 'og');

legend('',['Saline'],'', ['10^-10'], '',['10^-9'],'', ['10^-8'], '',['10^-7'], '',['10^-6'], '',['10^-5'], '',['Wash']);

title('Phase relationships of Pyloric neurons, Front end on in saline with varying [Oxotremorine]');

StartSalinepdwidth= mean_pdstopphase_start_Saline - mean_pdstartphase_start_Saline;
Start10pdwidth= mean_pdstopphase_start_10 - mean_pdstartphase_start_10;
Start09pdwidth= mean_pdstopphase_start_09 - mean_pdstartphase_start_09;
Start08pdwidth= mean_pdstopphase_start_08 - mean_pdstartphase_start_08;
Start07pdwidth= mean_pdstopphase_start_07 - mean_pdstartphase_start_07;
Start06pdwidth= mean_pdstopphase_start_06 - mean_pdstartphase_start_06;
Start05pdwidth= mean_pdstopphase_start_05 - mean_pdstartphase_start_05;
StartWashpdwidth= mean_pdstopphase_start_Wash - mean_pdstartphase_start_Wash;

StartSalinelpwidth= mean_lpstopphase_start_Saline - mean_lpstartphase_start_Saline;
Start10lpwidth= mean_lpstopphase_start_10 - mean_lpstartphase_start_10;
Start09lpwidth= mean_lpstopphase_start_09 - mean_lpstartphase_start_09;
Start08lpwidth= mean_lpstopphase_start_08 - mean_lpstartphase_start_08;
Start07lpwidth= mean_lpstopphase_start_07 - mean_lpstartphase_start_07;
Start06lpwidth= mean_lpstopphase_start_06 - mean_lpstartphase_start_06;
Start05lpwidth= mean_lpstopphase_start_05 - mean_lpstartphase_start_05;
StartWashlpwidth= mean_lpstopphase_start_Wash - mean_lpstartphase_start_Wash;

StartSalinepywidth= mean_pystopphase_start_Saline - mean_pystartphase_start_Saline;
Start10pywidth= mean_pystopphase_start_10 - mean_pystartphase_start_10;
Start09pywidth= mean_pystopphase_start_09 - mean_pystartphase_start_09;
Start08pywidth= mean_pystopphase_start_08 - mean_pystartphase_start_08;
Start07pywidth= mean_pystopphase_start_07 - mean_pystartphase_start_07;
Start06pywidth= mean_pystopphase_start_06 - mean_pystartphase_start_06;
Start05pywidth= mean_pystopphase_start_05 - mean_pystartphase_start_05;
StartWashpywidth= mean_pystopphase_start_Wash - mean_pystartphase_start_Wash;

rectangle('Position', [mean_pdstartphase_start_Saline, 5.9, StartSalinepdwidth, 0.2], 'EdgeColor', 'r', 'FaceColor','r'); 
rectangle('Position', [mean_pdstartphase_start_10, 5.7, Start10pdwidth ,0.2],'EdgeColor','g', 'FaceColor', 'g');
rectangle('Position', [mean_pdstartphase_start_09, 5.5, Start09pdwidth, 0.2], 'EdgeColor', 'b', 'FaceColor','b');
rectangle('Position', [mean_pdstartphase_start_08, 5.3, Start08pdwidth, 0.2], 'EdgeColor', 'y', 'FaceColor', 'y');
rectangle('Position', [mean_pdstartphase_start_07, 5.1, Start07pdwidth, 0.2], 'EdgeColor', 'm', 'FaceColor', 'm');
rectangle('Position', [mean_pdstartphase_start_06, 4.9, Start06pdwidth, 0.2], 'EdgeColor', 'c', 'FaceColor', 'c');
rectangle('Position', [mean_pdstartphase_start_05, 4.7, Start05pdwidth, 0.2], 'EdgeColor', 'r', 'FaceColor', 'r');
rectangle('Position', [mean_pdstartphase_start_Wash, 4.5, StartWashpdwidth, 0.2], 'EdgeColor', 'g', 'FaceColor', 'g');

rectangle('Position', [mean_lpstartphase_start_Saline, 4.1, Start_Salinelpwidth, 0.2], 'EdgeColor', 'r', 'FaceColor','r'); 
rectangle('Position', [mean_lpstartphase_start_10, 3.9, Start10lpwidth ,0.2],'EdgeColor','g', 'FaceColor', 'g');
rectangle('Position', [mean_lpstartphase_start_09, 3.7, Start09lpwidth, 0.2], 'EdgeColor', 'b', 'FaceColor','b');
rectangle('Position', [mean_lpstartphase_start_08, 3.5, Start08lpwidth, 0.2], 'EdgeColor', 'y', 'FaceColor', 'y');
rectangle('Position', [mean_lpstartphase_start_07, 3.3, Start07lpwidth, 0.2], 'EdgeColor', 'm', 'FaceColor', 'm');
rectangle('Position', [mean_lpstartphase_start_06, 3.1, Start06lpwidth, 0.2], 'EdgeColor', 'c', 'FaceColor', 'c');
rectangle('Position', [mean_lpstartphase_start_05, 2.9, Start05lpwidth, 0.2], 'EdgeColor', 'r', 'FaceColor', 'r');
rectangle('Position', [mean_lpstartphase_start_Wash, 2.7, StartWashlpwidth, 0.2], 'EdgeColor', 'g', 'FaceColor', 'g');

rectangle('Position', [mean_pystartphase_start_Saline, 2.3, Start_Salinepywidth, 0.2], 'EdgeColor', 'r', 'FaceColor','r'); 
rectangle('Position', [mean_pystartphase_start_10, 2.1, Start10pywidth ,0.2],'EdgeColor','g', 'FaceColor', 'g');
rectangle('Position', [mean_pystartphase_start_09, 1.9, Start09pywidth, 0.2], 'EdgeColor', 'b', 'FaceColor','b');
rectangle('Position', [mean_pystartphase_start_08, 1.7, Start08pywidth, 0.2], 'EdgeColor', 'y', 'FaceColor', 'y');
rectangle('Position', [mean_pystartphase_start_07, 1.5, Start07pywidth, 0.2], 'EdgeColor', 'm', 'FaceColor', 'm');
rectangle('Position', [mean_pystartphase_start_06, 1.3, Start06pywidth, 0.2], 'EdgeColor', 'c', 'FaceColor', 'c');
rectangle('Position', [mean_pystartphase_start_05, 1.1, Start05pywidth, 0.2], 'EdgeColor', 'r', 'FaceColor', 'r');
rectangle('Position', [mean_pystartphase_start_Wash, 0.9, StartWashpywidth, 0.2], 'EdgeColor', 'g', 'FaceColor', 'g');


%decentralized 
figure
hold on

herrorbar( meanDecSaline_startstops,[6;6;4.2;4.2;2.4;2.4],stdDec_Saline_startstops, 'or');

herrorbar( meanDec10_startstops,[5.8;5.8;4;4;2.2;2.2],stdDec_10_startstops, 'og');

herrorbar( meanDec09_startstops,[5.6;5.6;3.8;3.8;2;2],stdDec_09_startstops, 'ob');

herrorbar( meanDec08_startstops,[5.4;5.4;3.6;3.6;1.8;1.8],stdDec_08_startstops, 'oy');

herrorbar( meanDec07_startstops,[5.2;5.2;3.4;3.4;1.6;1.6],stdDec_07_startstops, 'om');

herrorbar( meanDec06_startstops,[5;5;3.2;3.2;1.4;1.4], stdDec_06_startstops, 'oc');

herrorbar( meanDec05_startstops,[4.8;4.8;3;3;1.2;1.2], stdDec_05_startstops, 'or');

herrorbar( meanDecWash_startstops,[4.6;4.6;2.8;2.8;1;1], stdDec_Wash_startstops, 'og');

legend('',['Saline'],'', ['10^-10'], '',['10^-9'],'', ['10^-8'], '',['10^-7'], '',['10^-6'], '',['10^-5'], '',['Wash']);

title('Phase relationships of Pyloric neurons in a Decentralized prep in saline with varying [Oxotremorine]');

DecSalinepdwidth= mean_pddstopphase_Saline - mean_pddstartphase_Saline;
Dec10pdwidth= mean_pddstopphase_10 - mean_pddstartphase_10;
Dec09pdwidth= mean_pddstopphase_09 - mean_pddstartphase_09;
Dec08pdwidth= mean_pddstopphase_08 - mean_pddstartphase_08;
Dec07pdwidth= mean_pddstopphase_07 - mean_pddstartphase_07;
Dec06pdwidth= mean_pddstopphase_06 - mean_pddstartphase_06;
Dec05pdwidth= mean_pddstopphase_05 - mean_pddstartphase_05;
DecWashpdwidth= mean_pddstopphase_Wash - mean_pddstartphase_Wash;

DecSalinelpwidth=mean_lpdstopphase_Saline - mean_lpdstartphase_Saline;
Dec10lpwidth=mean_lpdstopphase_10 - mean_lpdstartphase_10;
Dec09lpwidth=mean_lpdstopphase_09 - mean_lpdstartphase_09;
Dec08lpwidth=mean_lpdstopphase_08 - mean_lpdstartphase_08;
Dec07lpwidth=mean_lpdstopphase_07 - mean_lpdstartphase_07;
Dec06lpwidth=mean_lpdstopphase_06 - mean_lpdstartphase_06;
Dec05lpwidth=mean_lpdstopphase_05 - mean_lpdstartphase_05;
DecWashlpwidth=mean_lpdstopphase_Wash - mean_lpdstartphase_Wash;

DecSalinepywidth= mean_pydstopphase_Saline - mean_pydstartphase_Saline;
Dec10pywidth= mean_pydstopphase_10 - mean_pydstartphase_10;
Dec09pywidth= mean_pydstopphase_09 - mean_pydstartphase_09;
Dec08pywidth= mean_pydstopphase_08 - mean_pydstartphase_08;
Dec07pywidth= mean_pydstopphase_07 - mean_pydstartphase_07;
Dec06pywidth= mean_pydstopphase_06 - mean_pydstartphase_06;
Dec05pywidth= mean_pydstopphase_05 - mean_pydstartphase_05;
DecWashpywidth= mean_pydstopphase_Wash - mean_pydstartphase_Wash;

rectangle('Position', [mean_pddstartphase_Saline, 5.9, DecSalinepdwidth, 0.2], 'EdgeColor', 'r', 'FaceColor','r'); 
rectangle('Position', [mean_pddstartphase_10, 5.7, Dec10pdwidth ,0.2],'EdgeColor','g', 'FaceColor', 'g');
rectangle('Position', [mean_pddstartphase_09, 5.5, Dec09pdwidth, 0.2], 'EdgeColor', 'b', 'FaceColor','b');
rectangle('Position', [mean_pddstartphase_08, 5.3, Dec08pdwidth, 0.2], 'EdgeColor', 'y', 'FaceColor', 'y');
rectangle('Position', [mean_pddstartphase_07, 5.1, Dec07pdwidth, 0.2], 'EdgeColor', 'm', 'FaceColor', 'm');
rectangle('Position', [mean_pddstartphase_06, 4.9, Dec06pdwidth, 0.2], 'EdgeColor', 'c', 'FaceColor', 'c');
rectangle('Position', [mean_pddstartphase_05, 4.7, Dec05pdwidth, 0.2], 'EdgeColor', 'r', 'FaceColor', 'r');
rectangle('Position', [mean_pddstartphase_Wash, 4.5, DecWashpdwidth, 0.2], 'EdgeColor', 'g', 'FaceColor', 'g');

rectangle('Position', [mean_lpdstartphase_Saline, 4.1, DecSalinelpwidth, 0.2], 'EdgeColor', 'r', 'FaceColor','r'); 
rectangle('Position', [mean_lpdstartphase_10, 3.9, Dec10lpwidth ,0.2],'EdgeColor','g', 'FaceColor', 'g');
rectangle('Position', [mean_lpdstartphase_09, 3.7, Dec09lpwidth, 0.2], 'EdgeColor', 'b', 'FaceColor','b');
rectangle('Position', [mean_lpdstartphase_08, 3.5, Dec08lpwidth, 0.2], 'EdgeColor', 'y', 'FaceColor', 'y');
rectangle('Position', [mean_lpdstartphase_07, 3.3, Dec07lpwidth, 0.2], 'EdgeColor', 'm', 'FaceColor', 'm');
rectangle('Position', [mean_lpdstartphase_06, 3.1, Dec06lpwidth, 0.2], 'EdgeColor', 'c', 'FaceColor', 'c');
rectangle('Position', [mean_lpdstartphase_05, 2.9, Dec05lpwidth, 0.2], 'EdgeColor', 'r', 'FaceColor', 'r');
rectangle('Position', [mean_lpdstartphase_Wash, 2.7, DecWashlpwidth, 0.2], 'EdgeColor', 'g', 'FaceColor', 'g');

rectangle('Position', [mean_pydstartphase_Saline, 2.3, DecSalinepywidth, 0.2], 'EdgeColor', 'r', 'FaceColor','r'); 
rectangle('Position', [mean_pydstartphase_10, 2.1, Dec10pywidth ,0.2],'EdgeColor','g', 'FaceColor', 'g');
rectangle('Position', [mean_pydstartphase_09, 1.9, Dec09pywidth, 0.2], 'EdgeColor', 'b', 'FaceColor','b');
rectangle('Position', [mean_pydstartphase_08, 1.7, Dec08pywidth, 0.2], 'EdgeColor', 'y', 'FaceColor', 'y');
rectangle('Position', [mean_pydstartphase_07, 1.5, Dec07pywidth, 0.2], 'EdgeColor', 'm', 'FaceColor', 'm');
rectangle('Position', [mean_pydstartphase_06, 1.3, Dec06pywidth, 0.2], 'EdgeColor', 'c', 'FaceColor', 'c');
rectangle('Position', [mean_pydstartphase_05, 1.1, Dec05pywidth, 0.2], 'EdgeColor', 'r', 'FaceColor', 'r');
rectangle('Position', [mean_pydstartphase_Wash, 0.9, DecWashpywidth, 0.2], 'EdgeColor', 'g', 'FaceColor', 'g');
