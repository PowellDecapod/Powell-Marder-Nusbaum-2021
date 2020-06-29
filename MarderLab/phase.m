function [ phaserela ] = phase( events, pdstart, keepnans)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if nargin < 3
    keepnans = 0;
end
% j iterates through "events", i iterates through "pdstart"
j = 1;
phaserela = nan(length(pdstart)-1,2);
for i=1:length(pdstart)-1
    
    while j<length(events) && events(j) < pdstart(i)
        j = j+1;
    end
    
    if events(j)>pdstart(i+1) 
        phaserela(i,:) = nan;
    else
        phaserela(i,1)=((events(j)-pdstart(i))./(pdstart(i+1)-pdstart(i)));
        phaserela(i,2)=pdstart(i);
        if phaserela(i,1)<0
            phaserela(i,:)=nan;
        end
    end

end

if ~(keepnans)
    phaserela = phaserela(~isnan(phaserela(:,1)),:);
end