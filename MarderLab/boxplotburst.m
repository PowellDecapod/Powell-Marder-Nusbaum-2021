my_file = dir('PDfreq_*.mat');
freq=[];
for f = 1:length(my_file);
    filex = my_file(f).name;
    
    freq(f) = freqdist(filex);
end

freqdist = freq(f);


figure;

boxplot(PDfreq_OxoM,'label',{'Saline';'Decentralized';'10^-7';'Wash';'10^-5';'Wash'},'colors','b','symbol','*')
title ('Average Frequency of PD burst');
xlabel ('[Oxotremorine M]');
ylim([0,2.0]);
ylabel ('Frequency (Hz)');

figure;

boxplot(PDfreq_OxoSus,'labels',{'Saline';'Decentralized';'10^-7';'Wash';'10^-5';'Wash'},'colors','b','symbol','*')
title ('Average Frequency of PD burst');
xlabel ('[Oxotremorine Susquefumarate]');
ylim([0,2.0])
ylabel ('Frequency (Hz)');