function [intcounts_LGon] = integercounts_LGon(LGon_times,PDon_times)
%This script will evalutate a series of LG start times and PD start times
%and return vector (:,2) of latencies between the start of a PD burst and the 
%following LG burst. Also returns a vector of LG burst count (:,1) and PD period (:,3).


%test values
%LGon_times = [0.1 6.0 12.6 21.4 27.1 43.8 51.2 57.5 63.8 74.1 81.2]; 
%PDon_times = [0.5 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85];
%PDoff_times =[1 6 11 16 21 26 31 36 41 46 51 56 61 66 71 76 81 86];
i = 1;
j = 1;
intcounts_LGon = zeros(length(LGon_times),3);
while j <= length(LGon_times)
    if i <= length(PDon_times) % if i hits the limit, go to my else statement 
        if LGon_times(j) >= PDon_times(i) && LGon_times(j) <= PDon_times(i+1)
            PDdelay = LGon_times(j) - PDon_times(i);
            pyloricperiod = PDon_times(i+1) - PDon_times(i);
            intcounts_LGon(j,:) = [j,PDdelay(:),pyloricperiod];
            i = i + 1;
            j = j + 1;
        else
            i = i + 1;
        end
    else % give up on this j, go to next. Reset i
        i=1;
        j= j+1;
    end
end
