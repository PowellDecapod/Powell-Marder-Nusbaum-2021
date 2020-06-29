my_filesproc=dir('proc*_PD_bursts.txt');
meanfreq=[];
stdfreq=[]; 
for v = 1:length(my_filesproc);
    filex= my_filesproc(v).name;
   
    
    [meanfreq(v) stdfreq(v)]= meanstdfreq(filex);
end

meanfreqproc=meanfreq';
stdfreqproc=stdfreq'; 


my_filesdec=dir('dec*_PD_bursts.txt');
meanfreq=[];
stdfreq=[]; 
for v = 1:length(my_filesdec);
    filex= my_filesdec(v).name;
   
    
    [meanfreq(v) stdfreq(v)]= meanstdfreq(filex);
end

meanfreqdec=meanfreq';
stdfreqdec=stdfreq';

my_filesstart=dir('start*_PD_bursts.txt');
meanfreq=[];
stdfreq=[]; 
for v = 1:length(my_filesstart);
    filex= my_filesstart(v).name;
   
    
    [meanfreq(v) stdfreq(v)]= meanstdfreq(filex);
end

meanfreqstart=meanfreq';
stdfreqstart=stdfreq';


figure;

hold on
plot(meanfreqstart, 'o-g', 'LineWidth', 3)

plot(meanfreqdec, 'o-r', 'LineWidth', 3)

plot(meanfreqproc, 'o-b', 'LineWidth', 3)
legend('Front End On', 'Decentralized', 'Proctolin');

set(gca, 'XLim', [0 7]);
set(gca, 'XTick', [1:1:6]);
temps= ['11'; '15'; '19'; '23'; '27'; '31'];
set(gca, 'XTickLabel', temps); 
errorbar(meanfreqdec, stdfreqdec, 'r');
errorbar(meanfreqstart, stdfreqstart, 'g');
xlabel(['Temperature ' char(176) 'C']);
ylabel('Frequency Hz');
title(['Pyloric Rhythm Frequency vs. Temperature ' char(176) 'C']);
plot(meanfreqproc, 'o-b', 'LineWidth', 3)
errorbar(meanfreqproc, stdfreqproc);