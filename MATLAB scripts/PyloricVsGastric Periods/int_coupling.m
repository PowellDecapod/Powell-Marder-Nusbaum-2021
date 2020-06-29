function [intcouple] = int_coupling(LGon_times,PDon_times,PDoff_times)
%This script will evalutate a series of LG start times to see if they fall
%within a PD burst.  A return vector of all 0's means that the gastic and
%pyloric rhythms are integer coupled.

%test values
%LGon_times = [1.1 6.0 12.6 20.4 27.1 35.5 43.8 51.2 57.5 63.8 75.1 81.2]; 
%PDon_times = [1 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85];
%PDoff_times =[2 6 11 16 21 26 31 36 41 46 51 56 61 66 71 76 81 86];
i = 1;
j = 1;
intcouple = zeros(length(LGon_times),2);
while j <= length(LGon_times)
    if LGon_times(j) <= PDoff_times(i)
        iscoupled = (PDon_times(i) <= LGon_times(j) & PDoff_times(i) >= LGon_times(j));
        intcouple(j,:) = [j,iscoupled(:)];
        i = i + 1;
        j = j + 1;
    else
        i = i + 1;
    end
end
end
