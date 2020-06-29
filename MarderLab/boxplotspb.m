
my_file = dir('PDspb_*.mat');
freq=[];
for f = 1:length(my_file);
    filex = my_file(f).name;
    
    freq(f) = freqdist(filex);
end

freqdist = freq(f);


figure;
boxplot(PDspb_Oxo,'label',{'Saline';'';'Decentralized';'';'10^-7';'';'Wash';'';'10^-5';'';'Wash';''},'colors','br','symbol','*')
title ('Average Frequency of Spikes/Burst');
xlabel ('[Oxotremorine]');
ylim([0,10.0]);
ylabel ('Frequency (Hz)');

