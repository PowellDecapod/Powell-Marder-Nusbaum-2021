function [intcounts_LGoff] = integercounts_LGoff(LGoff_times,PDon_times)
%This script will evalutate a series of LG end times and PD start times
%and return vector of latencies between the end of an LG burst and the 
%previous PD burst start

%test values
%LGoff_times = [0.1 6.0 12.6 21.4 27.1 43.8 51.2 57.5 63.8 74.1 81.2]; 
%PDon_times = [0.5 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85];
%PDoff_times =[1 6 11 16 21 26 31 36 41 46 51 56 61 66 71 76 81 86];
intcounts_LGoff = zeros(length(LGoff_times),3);
for j=1:size(LGoff_times,1)
    for i=1:size(PDon_times,1)-1
        if LGoff_times(j) >= PDon_times(i) && LGoff_times(j) <= PDon_times(i+1) 
        PDdelay = LGoff_times(j) - PDon_times(i);
        pyloricperiod = PDon_times(i+1) - PDon_times(i);
        intcounts_LGoff(j,:) = [j,PDdelay(:),pyloricperiod];
        end
    end
end