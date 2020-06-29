function [intcounts] = integercounts(LGon_times,PDon_times)
%This script will evalutate a series of LG start times and track the number
%of PD cycles between a given gastric mill period, as well as the pyloric
%and gastric periods for a given gastric mill cycle period.

%test values
%LGon_times = [10.0 19.6 30 37.1 49.8 60.2 74.1 84.2]; 
%PDon_times = [0 3 5 7 9 12 15 18 21 24 27 30 32 34 36 39 42 44 46 48 51 54 57 60 63 66 69 72 74 76 78 81 84 87 90];

i = 1;
j = 1;
intcounts = zeros(length(PDon_times),3);
while j <= length(LGon_times)
    if i <= length(PDon_times) && j~=length(LGon_times) 
                                                        
        if PDon_times(i) >= LGon_times(j) && PDon_times(i) <= LGon_times(j+1)
           pyloricperiod = PDon_times(i+1) - PDon_times(i);
           gastricperiod = LGon_times(j+1) - LGon_times(j);
           intcounts(i,:,:) = [j,pyloricperiod,gastricperiod];
           i = i + 1;
        else
           i = i + 1;
        end       
    else
        j=j+1;
        i=1;
    end
end