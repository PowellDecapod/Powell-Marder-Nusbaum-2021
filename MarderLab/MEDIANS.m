function [ AVES ] = MEDIANS( data, times, binsize )
%averages Average burst-detected data
%   Takes the following:
%   data - vector of whatever you want to average, such as instantaneous
%       frequency
%   times - vector of times matched to data
%   binsize - size of bin overwhich to average

% disregarding data when it is 0 
% disregarding bins with less than 10 events

if times(length(times)< times(1))
    times=flipud(times);
end

length(times)
test=times(1);
test=times(length(times));
binnum = round(times(length(times)) / binsize)
AVES = zeros(binnum,3);
starttime = 0;
eventcount = 1;
skippedbins=0;

while times(1) > (starttime + binsize)
    starttime = starttime + binsize;
end

for i = 1:binnum
    binendtime = i * (binsize) + starttime;
    bineventcount = 0;
    bintotal = 0;
    clear bindata;
    bindata(1)=0;
    
    while (eventcount <= length(times)) && (times(eventcount) < binendtime)
        if (data(eventcount) ~= 0) % && (data(eventcount) < 10) 
            
            bineventcount = bineventcount + 1;
            bindata(bineventcount)=data(eventcount);
            bintotal = bintotal + data(eventcount);
        end
        %bintotal = bintotal + data (eventcount);
        % AVES(i , 1) = (binendtime - (binsize / 2));
        eventcount = eventcount + 1;
    end
    
    AVES(i, 1) = binendtime - (binsize / 2);
     
    if eventcount > 1
        %std(bindata);
        %mean(bindata);
        CVbin = std(bindata) / mean(bindata);
        %CVbin=0;
        if CVbin < 2.5
        
            AVES(i, 2) = median(bindata);
            AVES(i, 3) = std(bindata);
         
        else
            skippedbins=skippedbins+1;
            
        end
        
        
    end
    
    
    
end

skippedbins

